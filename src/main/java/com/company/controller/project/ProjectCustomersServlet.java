package com.company.controller.project;

import com.company.model.entities.Customer;
import com.company.model.entities.Project;
import com.company.model.service.ProjectService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Set;

@WebServlet("/project-customers")
public class ProjectCustomersServlet extends HttpServlet {
    private ProjectService projectService = new ProjectService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long projectId = Long.parseLong(req.getParameter("projectId"));
        Project project = projectService.getProjectById(projectId);
        Set<Customer> customers = project.getCustomers();
        req.setAttribute("customers", customers);
        req.getRequestDispatcher("/view/project/project-customers.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long projectId = Long.parseLong(req.getParameter("projectId"));
        Customer customer = new Customer();
        customer.setFirstName(req.getParameter("customerFirstName"));
        customer.setLastName(req.getParameter("customerLastName"));
        customer.setInfo(req.getParameter("customerInfo"));
        projectService.addCustomerToProject(projectId, customer);
        doGet(req, resp);
    }
}
