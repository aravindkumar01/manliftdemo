package com.example.demo.Entitty;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name="Employee")

public class Employee {
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
    private Long id;
	

	@NotBlank
	@Column(name="emp_id")
    private String emp_id;
	

	@NotBlank
	@Column(name="name")
    private String name;
	
	@NotBlank
	@Column(name="email")
    private String email;
	
	@NotBlank
	@Column(name="education")
    private String education;
	
	@NotBlank
	@Column(name="address")
    private String address;
	
	@NotBlank
	@Column(name="city")
    private String city;
	
	@NotBlank
	@Column(name="state")
    private String state;
	@NotBlank
	@Column(name="country")
    private String country;
	
	@NotBlank
	@Column(name="postcode")
    private String postcode;
   
	@NotBlank
	@Column(name="username")
    private String username;
	
	
	
	@NotBlank
	@Column(name="password")
    private String password;

	public String getRole() {
		return role;
	}



	public void setRole(String role) {
		this.role = role;
	}



	@NotBlank
	@Column(name="doj")
    private String doj;

	@NotBlank
	@Column(name="role")
    private String role;
		


	public String getDoj() {
		return doj;
	}



	public void setDoj(String doj) {
		this.doj = doj;
	}



	public Long getId() {
		return id;
	}



	public void setId(Long id) {
		this.id = id;
	}



	public String getEmp_id() {
		return emp_id;
	}



	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
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



	public String getEducation() {
		return education;
	}



	public void setEducation(String education) {
		this.education = education;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getCity() {
		return city;
	}



	public void setCity(String city) {
		this.city = city;
	}



	public String getState() {
		return state;
	}



	public void setState(String state) {
		this.state = state;
	}



	public String getCountry() {
		return country;
	}



	public void setCountry(String country) {
		this.country = country;
	}



	public String getPostcode() {
		return postcode;
	}



	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}
   

	
	}
	