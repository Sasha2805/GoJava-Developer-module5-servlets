package com.company.controller.project;

import com.company.model.entities.Project;
import com.company.model.service.ProjectService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;

public class EditProjectServlet extends HttpServlet {
    private ProjectService projectService = new ProjectService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long projectId = Long.parseLong(req.getParameter("projectId"));
        Project project = projectService.getProjectById(projectId);
        req.setAttribute("project", project);
        req.getRequestDispatcher("/view/project/edit-project.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Project project = new Project();
        project.setId(Long.parseLong(req.getParameter("projectId")));
        project.setName(req.getParameter("projectName"));
        project.setInfo(req.getParameter("projectInfo"));
        project.setCost(BigDecimal.valueOf(Double.parseDouble(req.getParameter("projectCost"))));
        projectService.updateProject(project);
        resp.sendRedirect("/MyWebApp/list-projects");
    }
}
