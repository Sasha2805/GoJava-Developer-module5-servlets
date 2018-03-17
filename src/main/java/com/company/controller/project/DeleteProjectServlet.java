package com.company.controller.project;

import com.company.model.service.ProjectService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete-project")
public class DeleteProjectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/view/project/delete-project.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProjectService projectService = new ProjectService();
        Long projectId = Long.parseLong(req.getParameter("projectId"));
        projectService.removeProject(projectId);
        resp.sendRedirect("/MyWebApp/list-projects");
    }
}
