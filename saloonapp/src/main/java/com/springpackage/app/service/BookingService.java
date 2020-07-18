package com.springpackage.app.service;



import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springpackage.app.Model.Booking;
import com.springpackage.app.dao.BookingDao;

@Service
public class BookingService {

	@Autowired
	BookingDao bookingDao;

	public Booking createAppointment(@Valid Booking book) {
		return bookingDao.save(book);
		
	}

	public List<Booking> showAppointment(Integer shopId) {
		
		return bookingDao.findByShopId(shopId);
	}
}
