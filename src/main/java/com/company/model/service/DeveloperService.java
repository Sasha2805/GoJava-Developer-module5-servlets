package com.company.model.service;

import com.company.model.dao.jpaImpl.DeveloperDaoImpl;
import com.company.model.entities.Developer;
import java.util.List;

public class DeveloperService {
    private DeveloperDaoImpl developerDao = new DeveloperDaoImpl();

    public void add(Developer developer){
        developerDao.save(developer);
    }

    public Developer getById(Long id){
        return developerDao.getById(id);
    }

    public void remove(Long id){
        developerDao.remove(id);
    }

    public List<Developer> getAll() {
        return developerDao.getAll();
    }

    public void update(Developer developer) {
        developerDao.update(developer);
    }
}
