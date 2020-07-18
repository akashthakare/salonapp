package com.springpackage.app.service;

import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springpackage.app.Model.ServiceModel;
import com.springpackage.app.Model.Shop;
import com.springpackage.app.dao.ServiceDao;
import com.springpackage.app.dao.ShopDao;

@Service
public class ServiceModelService {

	@Autowired 
	ServiceDao serviceDao;
	
	@Autowired
	ShopDao shopDao;
	
/*------------Create Service for Shop------------------------*/
	
	public String createService(Integer id, ServiceModel ser) {
		Shop shop=shopDao.findById(id).get();
		
		//tie Shop to Service
		ser.setShop(shop);
		serviceDao.save(ser);
		
        //tie ServiceModel to Shop
		Set<ServiceModel> servs=new HashSet<>();
		servs.add(ser);
		shop.setService(servs);
		
		return "Service addedd sucess";
		
	}

/*------------show All Services for Shop------------------------*/

	public List<ServiceModel> showService(Integer shopId) {
		
	
		return serviceDao.findAllByShopId(shopId);		
	}


/*------------find Service for customer------------------------*/

	
	public List<ServiceModel> aboutService(Integer shopId) {
		return serviceDao.findAllByShopId(shopId);
		
	}


	

	
}
