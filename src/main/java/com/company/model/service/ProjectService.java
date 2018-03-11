package com.company.model.service;

import com.company.model.dao.jpaImpl.ProjectDaoImpl;
import com.company.model.entities.Company;
import com.company.model.entities.Customer;
import com.company.model.entities.Developer;
import com.company.model.entities.Project;
import java.util.List;

public class ProjectService {
    private ProjectDaoImpl projectDao = new ProjectDaoImpl();

    public void addProject(Project project){
        projectDao.save(project);
    }

    public Project getProjectById(Long id){
        return projectDao.getById(id);
    }

    public void removeProject(Long id){
        projectDao.remove(id);
    }

    public List<Project> getAllProjects() {
        return projectDao.getAll();
    }

    public void updateProject(Project project) {
        projectDao.update(project);
    }

    public void addDeveloperToProject(Long projectId, Developer developer){
        Project project = getProjectById(projectId);
        project.getDevelopers().add(developer);
        updateProject(project);
    }

    public void addCompanyToProject(Long projectId, Company company){
        Project project = getProjectById(projectId);
        project.getCompanies().add(company);
        updateProject(project);
    }

    public void addCustomerToProject(Long projectId, Customer customer){
        Project project = getProjectById(projectId);
        project.getCustomers().add(customer);
        updateProject(project);
    }
}
