package com.example.demo.Entitty;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name="field3")
public class Field3 {

	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
    private Long id;
	
      
	@NotBlank
	@Column(name="component")
    private String component;

	@NotBlank
	@Column(name="username")
    private String username;
	@NotBlank
	@Column(name="date_site")
    private String date_site;
	
	public String getDate_site() {
		return date_site;
	}


	public void setDate_site(String date_site) {
		this.date_site = date_site;
	}


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


	public String getComponent() {
		return component;
	}


	public void setComponent(String component) {
		this.component = component;
	}
}
