package com.company.controller.customer;

import com.company.model.entities.Customer;
import com.company.model.entities.Project;
import com.company.model.service.CustomerService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Set;

@WebServlet("/customer-projects")
public class CustomerProjectsServlet extends HttpServlet {
    private CustomerService customerService = new CustomerService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long customerId = Long.parseLong(req.getParameter("customerId"));
        Customer customer = customerService.getCustomerById(customerId);
        Set<Project> projects = customer.getProjects();
        req.setAttribute("projects", projects);
        req.getRequestDispatcher("/view/customer/customer-projects.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long customerId = Long.parseLong(req.getParameter("customerId"));
        Project project = new Project();
        project.setName(req.getParameter("projectName"));
        project.setInfo(req.getParameter("projectInfo"));
        project.setCost(BigDecimal.valueOf(Double.parseDouble(req.getParameter("projectCost"))));
        customerService.addProjectToCustomer(customerId, project);
        doGet(req, resp);
    }
}
