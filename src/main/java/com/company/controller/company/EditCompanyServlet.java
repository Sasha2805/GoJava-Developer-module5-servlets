package com.company.controller.company;

import com.company.model.entities.Company;
import com.company.model.service.CompanyService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EditCompanyServlet extends HttpServlet {
    private CompanyService companyService = new CompanyService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long companyId = Long.parseLong(req.getParameter("companyId"));
        Company company = companyService.getCompanyById(companyId);
        req.setAttribute("company", company);
        req.getRequestDispatcher("/view/company/edit-company.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Company company = new Company();
        company.setId(Long.parseLong(req.getParameter("companyId")));
        company.setName(req.getParameter("companyName"));
        company.setInfo(req.getParameter("companyInfo"));
        companyService.updateCompany(company);
        resp.sendRedirect("/MyWebApp/list-companies");
    }


}
