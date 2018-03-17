package com.company.controller.skill;

import com.company.model.entities.Skill;
import com.company.model.entities.enums.SkillLevel;
import com.company.model.service.SkillService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/add-skill")
public class AddSkillServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/view/skill/add-skill.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SkillService skillService = new SkillService();
        Skill skill = new Skill();
        skill.setSkill(req.getParameter("skillName"));
        skill.setSkillLevel(SkillLevel.valueOf(req.getParameter("skillLevel")));
        skillService.addSkill(skill);
        resp.sendRedirect("/MyWebApp/list-skills");
    }
}
