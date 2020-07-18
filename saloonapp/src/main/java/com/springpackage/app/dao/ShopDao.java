package com.springpackage.app.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.springpackage.app.Model.Shop;

public interface ShopDao extends CrudRepository<Shop,Integer>{

	Object findByUsername(String username); 

	
}
