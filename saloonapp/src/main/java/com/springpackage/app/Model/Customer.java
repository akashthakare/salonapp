package com.springpackage.app.Model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;


@Entity
@Table(name="Customer")
public class Customer {
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		@Column(name="cust_id")
		Integer custId;
		
		@Column(name="name")
		@Size(min = 3, max = 50)
		 private String name;
		
		@Column(name="email")
		@NotBlank
	    @Email(message = "Please enter a valid e-mail address")
		private String email;
		
		@Column(name="username")
		@NotBlank
		private String username;
		
		@Column(name="gender")
		@NotBlank
		private String gender;
		    
		@Column(name="password")
		@NotBlank
		@Size(min = 8, max = 15)
		private String password;
		    
		@Column(name="city")
		@NotBlank
		private String city;
		
		
		@Column(name="address")
		@NotBlank
		private String address;
		
		@Column(name="mobile_no")
		@NotBlank
		@Size(min=10,max = 12)
		private String mobileNo;

		public Integer getCustId() {
			return custId;
		}

		public void setCustId(Integer custId) {
			this.custId = custId;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getGender() {
			return gender;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getCity() {
			return city;
		}

		public void setCity(String city) {
			this.city = city;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public String getMobileNo() {
			return mobileNo;
		}

		public void setMobileNo(String mobileNo) {
			this.mobileNo = mobileNo;
		}

		@Override
		public String toString() {
			return "Customer [custId=" + custId + ", name=" + name + ", email=" + email + ", username=" + username
					+ ", gender=" + gender + ", password=" + password + ", city=" + city + ", address=" + address
					+ ", mobileNo=" + mobileNo + "]";
		}

		
}
