package com.company.controller.developer;

import com.company.model.entities.Developer;
import com.company.model.entities.enums.Gender;
import com.company.model.service.DeveloperService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;

public class EditDeveloperServlet extends HttpServlet {
    private DeveloperService developerService = new DeveloperService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long developerId = Long.parseLong(req.getParameter("developerId"));
        Developer developer = developerService.getDeveloperById(developerId);
        req.setAttribute("developer", developer);
        req.getRequestDispatcher("/view/developer/edit-developer.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Developer developer = new Developer();
        developer.setId(Long.parseLong(req.getParameter("developerId")));
        developer.setFirstName(req.getParameter("developerFirstName"));
        developer.setLastName(req.getParameter("developerLastName"));
        developer.setAge(Integer.parseInt(req.getParameter("developerAge")));
        developer.setGender(Gender.valueOf(req.getParameter("developerGender")));
        developer.setSalary(BigDecimal.valueOf(Double.parseDouble(req.getParameter("developerSalary"))));
        developerService.updateDeveloper(developer);
        resp.sendRedirect("/MyWebApp/list-developers");
    }
}
