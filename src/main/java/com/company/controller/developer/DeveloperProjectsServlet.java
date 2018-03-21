package com.company.controller.developer;

import com.company.model.entities.Developer;
import com.company.model.entities.Project;
import com.company.model.service.DeveloperService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Set;

@WebServlet("/developer-projects")
public class DeveloperProjectsServlet extends HttpServlet {
    private DeveloperService developerService = new DeveloperService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long developerId = Long.parseLong(req.getParameter("developerId"));
        Developer developer = developerService.getDeveloperById(developerId);
        Set<Project> projects =  developer.getProjects();
        req.setAttribute("projects", projects);
        req.getRequestDispatcher("/view/developer/developer-projects.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long developerId = Long.parseLong(req.getParameter("developerId"));
        Project project = new Project();
        project.setName(req.getParameter("projectName"));
        project.setInfo(req.getParameter("projectInfo"));
        project.setCost(BigDecimal.valueOf(Double.parseDouble(req.getParameter("projectCost"))));
        developerService.addProjectToDeveloper(developerId, project);
        doGet(req, resp);
    }
}
