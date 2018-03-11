package com.company.model.service;

import com.company.model.dao.jpaImpl.CompanyDaoImpl;
import com.company.model.entities.Company;
import com.company.model.entities.Project;
import java.util.List;

public class CompanyService {
    private CompanyDaoImpl companyDao = new CompanyDaoImpl();

    public void addCompany(Company company){
        companyDao.save(company);
    }

    public Company getCompanyById(Long id){
        return companyDao.getById(id);
    }

    public void removeCompany(Long id){
        companyDao.remove(id);
    }

    public List<Company> getAllCompanies() {
        return companyDao.getAll();
    }

    public void updateCompany(Company company) {
        companyDao.update(company);
    }

    public void addProjectToCompany(Long companyId, Project project){
        Company company = getCompanyById(companyId);
        company.getProjects().add(project);
        updateCompany(company);
    }
}
