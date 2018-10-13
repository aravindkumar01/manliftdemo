package com.example.demo.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Entitty.Field2;
import com.example.demo.Repo.Field2Repo;

@Service
public class Field2Service {

	@Autowired
	Field2Repo repo;
	
	public void field2Save(Field2 field)
	{
		try {
			repo.save(field);
		} catch (Exception e) {
			System.out.println(e);
			// TODO: handle exception
		}
	}
	
	
}
