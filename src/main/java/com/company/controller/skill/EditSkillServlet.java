package com.company.controller.skill;

import com.company.model.entities.Skill;
import com.company.model.entities.enums.SkillLevel;
import com.company.model.service.SkillService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EditSkillServlet extends HttpServlet {
    private SkillService skillService = new SkillService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long skillId = Long.parseLong(req.getParameter("skillId"));
        Skill skill = skillService.getSkillById(skillId);
        req.setAttribute("skill", skill);
        req.getRequestDispatcher("/view/skill/edit-skill.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Skill skill = new Skill();
        skill.setId(Long.parseLong(req.getParameter("skillId")));
        skill.setSkill(req.getParameter("skillName"));
        skill.setSkillLevel(SkillLevel.valueOf(req.getParameter("skillLevel")));
        skillService.updateSkill(skill);
        resp.sendRedirect("/MyWebApp/list-skills");
    }
}
