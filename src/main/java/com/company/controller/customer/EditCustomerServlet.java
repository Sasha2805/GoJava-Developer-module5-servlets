package com.company.controller.customer;

import com.company.model.entities.Customer;
import com.company.model.service.CustomerService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EditCustomerServlet extends HttpServlet {
    private CustomerService customerService = new CustomerService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long customerId = Long.parseLong(req.getParameter("customerId"));
        Customer customer = customerService.getCustomerById(customerId);
        req.setAttribute("customer", customer);
        req.getRequestDispatcher("/view/customer/edit-customer.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Customer customer = new Customer();
        customer.setId(Long.parseLong(req.getParameter("customerId")));
        customer.setFirstName(req.getParameter("customerFirstName"));
        customer.setLastName(req.getParameter("customerLastName"));
        customer.setInfo(req.getParameter("customerInfo"));
        customerService.updateCustomer(customer);
        resp.sendRedirect("/MyWebApp/list-customers");
    }
}
