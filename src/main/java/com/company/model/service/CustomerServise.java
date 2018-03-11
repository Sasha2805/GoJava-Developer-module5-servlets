package com.company.model.service;

import com.company.model.dao.jpaImpl.CustomerDaoImpl;
import com.company.model.entities.Customer;
import java.util.List;

public class CustomerServise {
    private CustomerDaoImpl customerDao = new CustomerDaoImpl();

    public void add(Customer customer){
        customerDao.save(customer);
    }

    public Customer getById(Long id){
        return customerDao.getById(id);
    }

    public void remove(Long id){
        customerDao.remove(id);
    }

    public List<Customer> getAll() {
        return customerDao.getAll();
    }

    public void update(Customer customer) {
        customerDao.update(customer);
    }
}
