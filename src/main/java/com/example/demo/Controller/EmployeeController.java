package com.example.demo.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.Entitty.Employee;

import com.example.demo.Service.EmployeeServiceImplement;

@Controller
@Configuration
@Component
public class EmployeeController {
     
	@Autowired
	public EmployeeServiceImplement service;
	
	
	@RequestMapping(value = "/employeeCreation", method = RequestMethod.POST)
	public String addStudent(@ModelAttribute("Employee")Employee emp, Model model) {
		
	   try {
		   System.out.println("hi");
		  
		   
		   service.empSave(emp);
           
		   return "employee";
		   
	} catch (Exception e) {
		System.out.println(e);
		e.getStackTrace();
		// TODO: handle exception
	}
	
		return "employee";
	}
	
	
	@GetMapping("/employee/{search}/{option}")
	public @ResponseBody List<Employee> list(@PathVariable(value = "search") String search,@PathVariable(value = "option")String option) {
		
		try {
			System.out.println(option);
			System.out.println(search);
			
			
			return service.list(search,option);
			
		}  catch (Exception e) {
			System.out.println(e);
			// TODO: handle exception
		}
		
		return null;
}
	
	
	
	
}
