package com.company.controller.company;

import com.company.model.entities.Company;
import com.company.model.entities.Project;
import com.company.model.service.CompanyService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Set;

@WebServlet("/company-projects")
public class CompanyProjectsServlet extends HttpServlet {
    private CompanyService companyService = new CompanyService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long companyId = Long.parseLong(req.getParameter("companyId"));
        Company company = companyService.getCompanyById(companyId);
        Set<Project> projects = company.getProjects();
        req.setAttribute("projects", projects);
        req.getRequestDispatcher("/view/company/company-projects.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long companyId = Long.parseLong(req.getParameter("companyId"));
        Project project = new Project();
        project.setName(req.getParameter("projectName"));
        project.setInfo(req.getParameter("projectInfo"));
        project.setCost(BigDecimal.valueOf(Double.parseDouble(req.getParameter("projectCost"))));
        companyService.addProjectToCompany(companyId, project);
        doGet(req, resp);
    }
}
