package com.company.model.service;

import com.company.model.dao.jpaImpl.ProjectDaoImpl;
import com.company.model.entities.Project;
import java.util.List;

public class ProjectService {
    private ProjectDaoImpl projectDao = new ProjectDaoImpl();

    public void add(Project project){
        projectDao.save(project);
    }

    public Project getById(Long id){
        return projectDao.getById(id);
    }

    public void remove(Long id){
        projectDao.remove(id);
    }

    public List<Project> getAll() {
        return projectDao.getAll();
    }

    public void update(Project project) {
        projectDao.update(project);
    }
}
