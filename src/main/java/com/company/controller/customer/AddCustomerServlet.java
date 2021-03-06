package com.company.controller.customer;

import com.company.model.entities.Customer;
import com.company.model.service.CustomerService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/add-customer")
public class AddCustomerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/view/customer/add-customer.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CustomerService customerService = new CustomerService();
        Customer customer = new Customer();
        customer.setFirstName(req.getParameter("customerFirstName"));
        customer.setLastName(req.getParameter("customerLastName"));
        customer.setInfo(req.getParameter("customerInfo"));
        customerService.addCustomer(customer);
        resp.sendRedirect("/MyWebApp/list-customers");
    }
}
