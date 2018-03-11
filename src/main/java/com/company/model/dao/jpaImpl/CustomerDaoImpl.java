package com.company.model.dao.jpaImpl;

import com.company.model.dao.AbstractJpaDao;
import com.company.model.entities.Customer;
import java.util.List;

public class CustomerDaoImpl extends AbstractJpaDao<Customer> {

    public CustomerDaoImpl() {
        super.setClass(Customer.class);
    }

    @Override
    public void save(Customer customer) {
        super.save(customer);
    }

    @Override
    public Customer getById(Long id) {
        return super.getById(id);
    }

    @Override
    public void remove(Long id) {
        super.remove(id);
    }

    @Override
    public List<Customer> getAll() {
        return super.getAll();
    }

    @Override
    public void update(Customer customer) {
        super.update(customer);
    }
}
