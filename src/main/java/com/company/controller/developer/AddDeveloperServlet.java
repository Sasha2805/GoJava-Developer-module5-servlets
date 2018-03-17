package com.company.controller.developer;

import com.company.model.entities.Developer;
import com.company.model.entities.enums.Gender;
import com.company.model.service.DeveloperService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;

@WebServlet("/add-developer")
public class AddDeveloperServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/view/developer/add-developer.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DeveloperService developerService = new DeveloperService();
        Developer developer = new Developer();
        developer.setFirstName(req.getParameter("developerFirstName"));
        developer.setLastName(req.getParameter("developerLastName"));
        developer.setAge(Integer.valueOf(req.getParameter("developerAge")));
        developer.setGender(Gender.valueOf(req.getParameter("developerGender")));
        developer.setSalary(BigDecimal.valueOf(Double.parseDouble(req.getParameter("developerSalary"))));
        developerService.addDeveloper(developer);
        resp.sendRedirect("/MyWebApp/list-developers");
    }
}
