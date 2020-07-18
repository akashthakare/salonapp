package com.springpackage.app.Model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="shops")
public class Shop {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="shop_id")
	private Integer shopId;
	
	
	@Column(name="shop_name")
	private String shopName;
	
	@OneToMany(mappedBy = "shop", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private Set<ServiceModel> service;

	
	@Column(name="password")
	private String password;
	
	@Column(name="address")
	private String address;
	
	@Column(name="username")
	private String username;
	
	@Column(name="opening_time")
	private String openTime;
	
	@Column(name="closing_time")
	private String closeTime;
	
	@Column(name="city")
	private String city;
	
    
	@Column(name="mobile_no")
	private String mobNo;

	
	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public Set<ServiceModel> getService() {
		return service;
	}

	public void setService(Set<ServiceModel> service) {
		this.service = service;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getOpenTime() {
		return openTime;
	}

	public void setOpenTime(String openTime) {
		this.openTime = openTime;
	}

	public String getCloseTime() {
		return closeTime;
	}

	public void setCloseTime(String closeTime) {
		this.closeTime = closeTime;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	

	public String getMobNo() {
		return mobNo;
	}

	public void setMobNo(String mobNo) {
		this.mobNo = mobNo;
	}

	public Integer getShopId() {
		return shopId;
	}

	public void setShopId(Integer shopId) {
		this.shopId = shopId;
	}

	
	
	
	
}
