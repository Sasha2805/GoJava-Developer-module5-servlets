package com.company.model.service;

import com.company.model.dao.jpaImpl.SkillDaoImpl;
import com.company.model.entities.Developer;
import com.company.model.entities.Skill;
import java.util.List;

public class SkillService {
    private SkillDaoImpl skillDao = new SkillDaoImpl();

    public void addSkill(Skill skill){
        skillDao.save(skill);
    }

    public Skill getSkillById(Long id){
        return skillDao.getById(id);
    }

    public void removeSkill(Long id){
        skillDao.remove(id);
    }

    public List<Skill> getAllSkills() {
        return skillDao.getAll();
    }

    public void updateSkill(Skill skill) {
        skillDao.update(skill);
    }

    public void addDeveloperToSkill(Long skillId, Developer developer){
        Skill skill = getSkillById(skillId);
        skill.getDevelopers().add(developer);
        updateSkill(skill);
    }
}
