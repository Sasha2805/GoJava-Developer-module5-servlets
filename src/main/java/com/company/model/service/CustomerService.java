package com.company.model.service;

import com.company.model.dao.jpaImpl.CustomerDaoImpl;
import com.company.model.entities.Customer;
import com.company.model.entities.Project;
import java.util.List;

public class CustomerService {
    private CustomerDaoImpl customerDao = new CustomerDaoImpl();

    public void addCustomer(Customer customer){
        customerDao.save(customer);
    }

    public Customer getCustomerById(Long id){
        return customerDao.getById(id);
    }

    public void removeCustomer(Long id){
        customerDao.remove(id);
    }

    public List<Customer> getAllCustomers() {
        return customerDao.getAll();
    }

    public void updateCustomer(Customer customer) {
        customerDao.update(customer);
    }

    public void addProjectToCustomer(Long customerId, Project project){
        Customer customer = getCustomerById(customerId);
        customer.getProjects().add(project);
        updateCustomer(customer);
    }
}
