package com.example.demo.Entitty;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name="field1")

public class Field1 {
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
    private Long id;
	

	@NotBlank
	@Column(name="date_call")
    private String date_call;

	@NotBlank
	@Column(name="time_call")
    private String time_call;
	
	
	@NotBlank
	@Column(name="mobile")
    private String mobile;
	
	@NotBlank
	@Column(name="customer_name")
    private String customer_name;
	
	@NotBlank
	@Column(name="hour_meter")
    private String hour_meter;
	
	@NotBlank
	@Column(name="down_time")
    private String down_time;
	
	@NotBlank
	@Column(name="total_time")
    private String total_time;
	
	@NotBlank
	@Column(name="model")
    private String model;
	

	@NotBlank
	@Column(name="fleet_serial")
    private String fleet_serial;
	
	
	@NotBlank
	@Column(name="date_site")
    private String date_site;
	

	@NotBlank
	@Column(name="start_time")
    private String start_time;
	
	@NotBlank
	@Column(name="end_time")
    private String end_time;
	
	@NotBlank
	@Column(name="site_address")
    private String site_address;
	

	@NotBlank
	@Column(name="job_carriout")
    private String job_carriout;
	

	@NotBlank
	@Column(name="problem")
    private String problem;
	

	@NotBlank
	@Column(name="client_inform")
    private String client_inform;
	
	@NotBlank
	@Column(name="oriant")
    private String oriant;
	
	@NotBlank
	@Column(name="customer_comment")
    private String customer_comment;
	
	@NotBlank
	@Column(name="operator")
    private String operator;
	
	@NotBlank
	@Column(name="tech")
    private String tech;
	
	@NotBlank
	@Column(name="emp_id")
    private String emp_id;

	public String getFemp_id() {
		return femp_id;
	}

	public void setFemp_id(String femp_id) {
		this.femp_id = femp_id;
	}

	
	@Column(name="femp_id")
    private String femp_id;

	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDate_call() {
		return date_call;
	}

	public void setDate_call(String date_call) {
		this.date_call = date_call;
	}

	public String getTime_call() {
		return time_call;
	}

	public void setTime_call(String time_call) {
		this.time_call = time_call;
	}


	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getCustomer_name() {
		return customer_name;
	}

	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}

	public String getHour_meter() {
		return hour_meter;
	}

	public void setHour_meter(String hour_meter) {
		this.hour_meter = hour_meter;
	}

	public String getDown_time() {
		return down_time;
	}

	public void setDown_time(String down_time) {
		this.down_time = down_time;
	}

	public String getTotal_time() {
		return total_time;
	}

	public void setTotal_time(String total_time) {
		this.total_time = total_time;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getFleet_serial() {
		return fleet_serial;
	}

	public void setFleet_serial(String fleet_serial) {
		this.fleet_serial = fleet_serial;
	}

	public String getDate_site() {
		return date_site;
	}

	public void setDate_site(String date_site) {
		this.date_site = date_site;
	}

	public String getStart_time() {
		return start_time;
	}

	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}

	public String getEnd_time() {
		return end_time;
	}

	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}

	public String getSite_address() {
		return site_address;
	}

	public void setSite_address(String site_address) {
		this.site_address = site_address;
	}

	public String getJob_carriout() {
		return job_carriout;
	}

	public void setJob_carriout(String job_carriout) {
		this.job_carriout = job_carriout;
	}

	public String getProblem() {
		return problem;
	}

	public void setProblem(String problem) {
		this.problem = problem;
	}

	public String getClient_inform() {
		return client_inform;
	}

	public void setClient_inform(String client_inform) {
		this.client_inform = client_inform;
	}


	public String getOriant() {
		return oriant;
	}

	public void setOriant(String oriant) {
		this.oriant = oriant;
	}

	public String getCustomer_comment() {
		return customer_comment;
	}

	public void setCustomer_comment(String customer_comment) {
		this.customer_comment = customer_comment;
	}

	public String getOperator() {
		return operator;
	}

	public void setOperator(String operator) {
		this.operator = operator;
	}

	public String getTech() {
		return tech;
	}

	public void setTech(String tech) {
		this.tech = tech;
	}

	public String getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}
	
		
}
