package com.springpackage.app.Model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Service;

@Service
@Entity
@Table(name="services")
public class ServiceModel {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="service_id")
	private Integer serviceId;
		
	
	@Column(name="name")
	private String name;
	
	@Column(name="price")
	private int price;
	
	@ManyToOne
	@JoinColumn(name="shop_id",nullable = false)
	private Shop shop;

	public Integer getServiceId() {
		return serviceId;
	}

	public void setServiceId(Integer serviceId) {
		this.serviceId = serviceId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Shop getShop() {
		return shop;
	}

	public void setShop(Shop shop) {
		this.shop = shop;
	}

	@Override
	public String toString() {
		return "ServiceModel [serviceId=" + serviceId + ", name=" + name + ", price=" + price + ", shop=" + shop + "]";
	}

	

}
