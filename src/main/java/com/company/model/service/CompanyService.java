package com.company.model.service;

import com.company.model.dao.jpaImpl.CompanyDaoImpl;
import com.company.model.entities.Company;
import java.util.List;

public class CompanyService {
    private CompanyDaoImpl companyDao = new CompanyDaoImpl();

    public void add(Company company){
        companyDao.save(company);
    }

    public Company getById(Long id){
        return companyDao.getById(id);
    }

    public void remove(Long id){
        companyDao.remove(id);
    }

    public List<Company> getAll() {
        return companyDao.getAll();
    }

    public void update(Company company) {
        companyDao.update(company);
    }
}
