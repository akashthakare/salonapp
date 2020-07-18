package com.springpackage.app.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.springpackage.app.Model.ServiceModel;

@Repository
public interface ServiceDao extends CrudRepository<ServiceModel,Integer>{

	
	@Query(value="SELECT * FROM services s WHERE s.shop_id=?1", nativeQuery = true)
	List<ServiceModel> findAllByShopId(Integer shop_id);

	
	
	

}
