package com.company.controller.skill;

import com.company.model.entities.Developer;
import com.company.model.entities.Skill;
import com.company.model.entities.enums.Gender;
import com.company.model.service.SkillService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Set;

@WebServlet("/skill-developers")
public class SkillDevelopersServlet extends HttpServlet {
    private SkillService skillService = new SkillService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long skillId = Long.parseLong(req.getParameter("skillId"));
        Skill skill = skillService.getSkillById(skillId);
        Set<Developer> developers = skill.getDevelopers();
        req.setAttribute("developers", developers);
        req.getRequestDispatcher("/view/skill/skill-developers.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long skillId = Long.parseLong(req.getParameter("skillId"));
        Developer developer = new Developer();
        developer.setFirstName(req.getParameter("developerFirstName"));
        developer.setLastName(req.getParameter("developerLastName"));
        developer.setAge(Integer.valueOf(req.getParameter("developerAge")));
        developer.setGender(Gender.valueOf(req.getParameter("developerGender")));
        developer.setSalary(BigDecimal.valueOf(Double.parseDouble(req.getParameter("developerSalary"))));
        skillService.addDeveloperToSkill(skillId, developer);
        doGet(req, resp);
    }
}
