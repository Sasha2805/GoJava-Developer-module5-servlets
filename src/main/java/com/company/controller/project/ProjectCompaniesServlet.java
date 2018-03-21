package com.company.controller.project;

import com.company.model.entities.Company;
import com.company.model.entities.Project;
import com.company.model.service.ProjectService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Set;

@WebServlet("/project-companies")
public class ProjectCompaniesServlet extends HttpServlet {
    private ProjectService projectService = new ProjectService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long projectId = Long.parseLong(req.getParameter("projectId"));
        Project project = projectService.getProjectById(projectId);
        Set<Company> companies = project.getCompanies();
        req.setAttribute("companies", companies);
        req.getRequestDispatcher("/view/project/project-companies.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long projectId = Long.parseLong(req.getParameter("projectId"));
        Company company = new Company();
        company.setName(req.getParameter("companyName"));
        company.setInfo(req.getParameter("companyInfo"));
        projectService.addCompanyToProject(projectId, company);
        doGet(req, resp);
    }
}
