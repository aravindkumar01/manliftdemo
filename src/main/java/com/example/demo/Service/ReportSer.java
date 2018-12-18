package com.example.demo.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Entitty.Field1;
import com.example.demo.Entitty.Field2;
import com.example.demo.Entitty.Field3;
import com.example.demo.Entitty.Report;
import com.example.demo.Repo.Field1Repo;
import com.example.demo.Repo.Field2Repo;
import com.example.demo.Repo.Field3Repo;

@Service
public class ReportSer {

	@Autowired
	Field1Repo field1;
	@Autowired
	Field2Repo field2;
	@Autowired
	Field3Repo field3;
	
	public List<Report> report(String username,String date_site)
	{
		List<Report> list=null;
		try {
			list=new ArrayList<Report>();
			System.out.println(username+" "+date_site);
			Report report=new Report();
			Field1 f1=field1.find(username, date_site);
			
			report.setDate_call(f1.getDate_call());
			report.setTime_call(f1.getTime_call());
			report.setMobile(f1.getMobile());
			report.setCustomer_name(f1.getCustomer_name());
			report.setHour_meter(f1.getHour_meter());
			report.setDown_time(f1.getDown_time());
			report.setTotal_time(f1.getTotal_time());
			report.setModel(f1.getModel());
			report.setFleet_serial(f1.getFleet_serial());
			report.setDate_site(f1.getDate_site());
			report.setStart_time(f1.getStart_time());
			report.setEnd_time(f1.getEnd_time());
			report.setArrived_time(f1.getArrived_time());
			report.setDeparted_time(f1.getDeparted_time());
			report.setSite_address(f1.getSite_address());
			report.setJob_carriout(f1.getJob_carriout());
			report.setProblem(f1.getProblem());
			report.setClient_inform(f1.getClient_inform());
			report.setOriant(f1.getOriant());
			report.setCustomer_comment(f1.getCustomer_comment());
			report.setOperator(f1.getOperator());
			
			report.setTech(f1.getTech());
			report.setEmp_id(f1.getEmp_id());
			
			Field2 f2=field2.find(username, date_site);
			
			report.setUsername(f2.getUsername());
			report.setFault_des(f2.getFault_des());
			report.setFault_parts(f2.getFault_parts());
	        report.setParts(f2.getParts());		
	        report.setQuantity(f2.getQuantity());
	        report.setPart_number(f2.getPart_number());
	        
	    	Field3 f3=field3.find(username, date_site);
	    	
	    	report.setComponent(f3.getComponent());
	          
	    	list.add(report);
	    	return list;
	     
	        

		} catch (Exception e) {
			System.out.println(e);
			// TODO: handle exception
		}
		return list;
		 		
	}
	
	
	
}
