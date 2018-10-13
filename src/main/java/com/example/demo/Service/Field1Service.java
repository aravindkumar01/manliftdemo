package com.example.demo.Service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Entitty.Field1;
import com.example.demo.Repo.Field1Repo;

@Service
public class Field1Service {

	@Autowired
	Field1Repo repo;
	public void fieldSave(Field1 field)
	{
         try {
			repo.save(field);
		} catch (Exception e) {
			System.out.println(e);
			// TODO: handle exception
		}		
	}
	public List<Field1> filedReport()
	{
		try {
			
			return repo.findAll();
			
			
		} catch (Exception e) {
			
			System.out.println(e);
			// TODO: handle exception
		}
		return null;
	}
	
	
}
