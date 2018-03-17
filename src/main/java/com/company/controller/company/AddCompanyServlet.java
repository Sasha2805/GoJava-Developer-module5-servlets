package com.company.controller.company;

import com.company.model.entities.Company;
import com.company.model.service.CompanyService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/add-company")
public class AddCompanyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/view/company/add-company.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CompanyService companyService = new CompanyService();
        Company company = new Company();
        company.setName(req.getParameter("companyName"));
        company.setInfo(req.getParameter("companyInfo"));
        companyService.addCompany(company);
        resp.sendRedirect("/MyWebApp/list-companies");
    }
}
