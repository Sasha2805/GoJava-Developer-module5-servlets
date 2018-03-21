package com.company.controller.developer;

import com.company.model.entities.Developer;
import com.company.model.entities.Skill;
import com.company.model.entities.enums.SkillLevel;
import com.company.model.service.DeveloperService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Set;

@WebServlet("/developer-skills")
public class DeveloperSkillsServlet extends HttpServlet {
    private DeveloperService developerService = new DeveloperService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long developerId = Long.parseLong(req.getParameter("developerId"));
        Developer developer = developerService.getDeveloperById(developerId);
        Set<Skill> skills =  developer.getSkills();
        req.setAttribute("skills", skills);
        req.getRequestDispatcher("/view/developer/developer-skills.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long developerId = Long.parseLong(req.getParameter("developerId"));
        Skill skill = new Skill();
        skill.setSkill(req.getParameter("skillName"));
        skill.setSkillLevel(SkillLevel.valueOf(req.getParameter("skillLevel")));
        developerService.addSkillToDeveloper(developerId, skill);
        doGet(req, resp);
    }
}
