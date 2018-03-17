package com.company.controller.servlets.company;

import com.company.model.entities.Company;
import com.company.model.service.CompanyService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/list-companies")
public class ListCompaniesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CompanyService companyService = new CompanyService();
        List<Company> companies = companyService.getAllCompanies();
        req.setAttribute("companies", companies);
        req.getRequestDispatcher("/view/company/list-companies.jsp").forward(req, resp);
    }
}
