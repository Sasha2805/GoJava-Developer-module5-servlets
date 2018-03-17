package com.company.controller.skill;

import com.company.model.service.SkillService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete-skill")
public class DeleteSkillServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/view/skill/delete-skill.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SkillService skillService = new SkillService();
        Long skillId = Long.parseLong(req.getParameter("skillId"));
        skillService.removeSkill(skillId);
        resp.sendRedirect("/MyWebApp/list-skills");
    }
}
