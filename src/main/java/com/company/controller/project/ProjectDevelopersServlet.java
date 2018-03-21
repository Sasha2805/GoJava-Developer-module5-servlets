package com.company.controller.project;

import com.company.model.entities.Developer;
import com.company.model.entities.Project;
import com.company.model.entities.enums.Gender;
import com.company.model.service.ProjectService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Set;

@WebServlet("/project-developers")
public class ProjectDevelopersServlet extends HttpServlet {
    private ProjectService projectService = new ProjectService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long projectId = Long.parseLong(req.getParameter("projectId"));
        Project project = projectService.getProjectById(projectId);
        Set<Developer> developers = project.getDevelopers();
        req.setAttribute("developers", developers);
        req.getRequestDispatcher("/view/project/project-developers.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long projectId = Long.parseLong(req.getParameter("projectId"));
        Developer developer = new Developer();
        developer.setFirstName(req.getParameter("developerFirstName"));
        developer.setLastName(req.getParameter("developerLastName"));
        developer.setAge(Integer.valueOf(req.getParameter("developerAge")));
        developer.setGender(Gender.valueOf(req.getParameter("developerGender")));
        developer.setSalary(BigDecimal.valueOf(Double.parseDouble(req.getParameter("developerSalary"))));
        projectService.addDeveloperToProject(projectId, developer);
        doGet(req, resp);
    }
}
