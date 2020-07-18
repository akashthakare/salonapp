package com.springpackage.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springpackage.app.Model.Customer;
import com.springpackage.app.dao.CustomerDao;

@Service
public class CustomerService {
	
	@Autowired CustomerDao customerDao;

	public void createCustomer(Customer cust) {
		customerDao.save(cust);	
		
	}
	
	
	public boolean checkUsername(String username) {
		
		return customerDao.existsByUsername(username);
	}
	
	

}
