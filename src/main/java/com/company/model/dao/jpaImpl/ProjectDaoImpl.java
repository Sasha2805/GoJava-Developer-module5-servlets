package com.company.model.dao.jpaImpl;

import com.company.model.dao.AbstractJpaDao;
import com.company.model.entities.Project;
import java.util.List;

public class ProjectDaoImpl extends AbstractJpaDao<Project> {

    public ProjectDaoImpl() {
        super.setClass(Project.class);
    }

    @Override
    public void save(Project project) {
        super.save(project);
    }

    @Override
    public Project getById(Long id) {
        return super.getById(id);
    }

    @Override
    public void remove(Long id) {
        super.remove(id);
    }

    @Override
    public List<Project> getAll() {
        return super.getAll();
    }

    @Override
    public void update(Project project) {
        super.update(project);
    }
}
