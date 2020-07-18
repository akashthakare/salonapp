package com.springpackage.app.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.springpackage.app.Model.Booking;

@Repository
public interface BookingDao extends CrudRepository<Booking,Integer>{

	List<Booking> findByShopId(Integer shopId);

}
