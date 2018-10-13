package com.example.demo.Service;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;

import com.example.demo.Entitty.Employee;
import com.example.demo.Entitty.Login;
import com.example.demo.Repo.EmployeeRepo;
import com.example.demo.Repo.LoginRepo;

@Service
@Transactional
public class EmployeeServiceImplement {
   @Autowired
   EmployeeRepo repo;
   
   @Autowired
   
   LoginRepo login;
	public void empSave(@Valid @RequestBody Employee emp) {
	
		
		
		try {
			
			
			repo.save(emp);
			Login log=new Login();
			log.setUsername(emp.getUsername());
			log.setEmp_id(emp.getEmp_id());
			log.setPassword(emp.getPassword());
			log.setRole(emp.getRole());
			login.save(log);
			
			
	   } catch (Exception e) {
			System.out.println(e);
			// TODO: handle exception
		}
		
	}

	public List<Employee> list(String search,String option)
	{
		try {
			
			if(option.equals("date"))
			{
				return repo.findByDoj(search);
			}
			else if(option.equals("emp_name"))
			{
				return repo.findByName(search);
			}
			else if(option.equals("emp_id"))
			{
				
			}
			
			
			
			
			
		} catch (Exception e) {
			System.out.println(e);
			// TODO: handle exception
		}

	 return null;
	}
	
}
