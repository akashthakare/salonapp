package com.springpackage.app.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.springpackage.app.Model.Customer;

@Repository
public interface CustomerDao extends CrudRepository<Customer,Integer> {

	boolean existsByUsername(String username);

}
