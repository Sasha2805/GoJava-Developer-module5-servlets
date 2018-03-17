package com.company.controller.project;

import com.company.model.entities.Project;
import com.company.model.service.ProjectService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;

@WebServlet("/add-project")
public class AddProjectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/view/project/add-project.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProjectService projectService = new ProjectService();
        Project project = new Project();
        project.setName(req.getParameter("projectName"));
        project.setInfo(req.getParameter("projectInfo"));
        project.setCost(BigDecimal.valueOf(Double.parseDouble(req.getParameter("projectCost"))));
        projectService.addProject(project);
        resp.sendRedirect("/MyWebApp/list-projects");
    }
}
