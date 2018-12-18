package com.example.demo.Entitty;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name="field2")
public class Field2 {

	public String getDate_site() {
		return date_site;
	}


	public void setDate_site(String date_site) {
		this.date_site = date_site;
	}


	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
    private Long id;
	
	@NotBlank
	@Column(name="date_site")
    private String date_site;
	
	@NotBlank
	@Column(name="fault_des")
    private String fault_des;


	@NotBlank
	@Column(name="fault_parts")
    private String fault_parts;
	

	@NotBlank
	@Column(name="parts")
    private String parts;
	

	@NotBlank
	@Column(name="quantity")
    private String quantity;
	

	@NotBlank
	@Column(name="part_number")
    private String part_number;

	@NotBlank
	@Column(name="username")
    private String username;

	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getFault_des() {
		return fault_des;
	}


	public void setFault_des(String fault_des) {
		this.fault_des = fault_des;
	}


	public String getFault_parts() {
		return fault_parts;
	}


	public void setFault_parts(String fault_parts) {
		this.fault_parts = fault_parts;
	}


	public String getParts() {
		return parts;
	}


	public void setParts(String parts) {
		this.parts = parts;
	}


	public String getQuantity() {
		return quantity;
	}


	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}


	public String getPart_number() {
		return part_number;
	}


	public void setPart_number(String part_number) {
		this.part_number = part_number;
	}
	
	
	
	
}
