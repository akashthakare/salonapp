package com.springpackage.app.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springpackage.app.Model.Shop;
import com.springpackage.app.dao.ShopDao;

@Service
public class ShopService {
	
	@Autowired
	ShopDao shopDao;

	public void createShop(Shop shop) {
		shopDao.save(shop);
		
	}

/*--------------Shop Login-------------*/
	public Shop shopLogin(Shop shop) {
		Shop sh=(Shop) shopDao.findByUsername(shop.getUsername());
		return sh;
	}
	/*--------------Find All Shop -------------*/
	public Iterable<Shop>  findShop() {
		return shopDao.findAll();
		
	}
	/*--------------About Shop-------------*/
	public Shop aboutShop(Integer shopId) {
		return shopDao.findById(shopId).get();
		
	}



}
