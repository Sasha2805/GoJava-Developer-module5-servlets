package com.company.model.service;

import com.company.model.dao.jpaImpl.DeveloperDaoImpl;
import com.company.model.entities.Developer;
import com.company.model.entities.Project;
import com.company.model.entities.Skill;
import java.util.List;

public class DeveloperService {
    private DeveloperDaoImpl developerDao = new DeveloperDaoImpl();

    public void addDeveloper(Developer developer){
        developerDao.save(developer);
    }

    public Developer getDeveloperById(Long id){
        return developerDao.getById(id);
    }

    public void removeDeveloper(Long id){
        developerDao.remove(id);
    }

    public List<Developer> getAllDevelopers() {
        return developerDao.getAll();
    }

    public void updateDeveloper(Developer developer) {
        developerDao.update(developer);
    }

    public void addSkillToDeveloper(Long developerId, Skill skill){
        Developer developer = getDeveloperById(developerId);
        developer.getSkills().add(skill);
        updateDeveloper(developer);
    }

    public void addProjectToDeveloper(Long developerId, Project project){
        Developer developer = getDeveloperById(developerId);
        developer.getProjects().add(project);
        updateDeveloper(developer);
    }
}
