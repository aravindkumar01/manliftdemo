package com.example.demo.Entitty;

import javax.persistence.Column;
import javax.validation.constraints.NotBlank;

public class Report {
    private String date_call;

    private String time_call;
	
	
    private String mobile;
	
    private String customer_name;
	
    private String hour_meter;
	
    private String down_time;
	
    private String total_time;
	
    private String model;
	
    private String fleet_serial;
	
	
    private String date_site;
	

    private String start_time;
	
    private String end_time;
	
    private String arrived_time;
	
    private String departed_time;
    
    

    private String site_address;
	

    private String job_carriout;
	

    private String problem;
	

    private String client_inform;
	
    private String oriant;
	
	
    private String customer_comment;
	
	
    private String operator;
	
	
    private String tech;
	

    private String emp_id;
	
    private String username;
		
	
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


	public String getArrived_time() {
		return arrived_time;
	}


	public void setArrived_time(String arrived_time) {
		this.arrived_time = arrived_time;
	}


	public String getDeparted_time() {
		return departed_time;
	}


	public void setDeparted_time(String departed_time) {
		this.departed_time = departed_time;
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


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
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


	public String getComponent() {
		return component;
	}


	public void setComponent(String component) {
		this.component = component;
	}


	private String fault_des;


    private String fault_parts;
	

    private String parts;
	

    private String quantity;
	
    private String part_number;
    
    
    private String component;


}
