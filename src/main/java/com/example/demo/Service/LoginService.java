package com.example.demo.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.Entitty.Login;
import com.example.demo.Repo.LoginRepo;

@Service
@Transactional
public class LoginService {
	
	@Autowired
	LoginRepo repo;
	public String logCheck(Login log)
	{
		try {
			System.out.println("hi");
			if(log.getUsername().equals("admin") && log.getPassword().equals("admin"))
			{
				return "dashboard";
			}
			
			if(repo.findByUsernameAndPassword(log.getUsername(),log.getPassword())!=null)
			{
				List<Login> loglist=new ArrayList<Login>();
			
					loglist=repo.findByUsernameAndPassword(log.getUsername(),log.getPassword());
					
					if(loglist.isEmpty())
					{
						return "error";
					}
					for(int i=0;i<loglist.size();i++)
					{
						Login logn=new Login();
						logn.setEmp_id(loglist.get(i).getEmp_id());
						logn.setUsername(loglist.get(i).getUsername());
						logn.setPassword(loglist.get(i).getRole());
						logn.setRole(loglist.get(i).getRole());
						if(logn.getRole().equals("technician"))
						{
						
							return "field1";
						}
						else if(logn.getRole().equals("admin"))
						{
							return "dashboard";
						}
						else if(logn.getRole().equals("storekeeper"))
						{
							return "dashStore";
						}
						else 
						{
							
							return "error";
						}
					}
				
				}
					
			
			else
			{
				return "error";
			}
			
		} catch (Exception e) {
			System.out.println(e);
			// TODO: handle exception
		}
		return null;
	}

	
	
	
	
}
