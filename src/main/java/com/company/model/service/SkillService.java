package com.company.model.service;

import com.company.model.dao.jpaImpl.SkillDaoImpl;
import com.company.model.entities.Skill;
import java.util.List;

public class SkillService {
    private SkillDaoImpl skillDao = new SkillDaoImpl();

    public void add(Skill skill){
        skillDao.save(skill);
    }

    public Skill getById(Long id){
        return skillDao.getById(id);
    }

    public void remove(Long id){
        skillDao.remove(id);
    }

    public List<Skill> getAll() {
        return skillDao.getAll();
    }

    public void update(Skill skill) {
        skillDao.update(skill);
    }
}
