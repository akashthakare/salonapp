package com.springpackage.app.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name="booking")
public class Booking {

	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="book_id")
	private Integer bookId;
	
	
	
	@Column(name="shop_id")
	private Integer shopId;
	
	@NotBlank
	@Column(name="customer_username")
	private String username;
	
	@Column(name="customer_name")
	@NotBlank
	private String customerName;
	
	@Column(name="gender")
	@NotBlank
	private String gender;
	    
	@Column(name="shop_name")
	@NotBlank
	private String shopName;
	
	@Column(name="service")
	@NotBlank
	private String service;
	    
	@Column(name="date")
	@NotBlank
	private String date;

	public Integer getBookId() {
		return bookId;
	}

	public void setBookId(Integer bookId) {
		this.bookId = bookId;
	}

	public Integer getShopId() {
		return shopId;
	}

	public void setShopId(Integer shopId) {
		this.shopId = shopId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getService() {
		return service;
	}

	public void setService(String service) {
		this.service = service;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Booking [bookId=" + bookId + ", shopId=" + shopId + ", username=" + username + ", customerName="
				+ customerName + ", gender=" + gender + ", shopName=" + shopName + ", service=" + service + ", date="
				+ date + "]";
	}
	
	
}
