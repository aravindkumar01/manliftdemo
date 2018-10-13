package com.example.demo.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Entitty.Field3;
import com.example.demo.Repo.Field3Repo;

@Service
public class Field3Service {

	@Autowired
	Field3Repo repo;
	
	public void fied3Save(Field3 field)
	{
		try {
			   repo.save(field);
			 
		} catch (Exception e) {
			System.out.println(e);
			// TODO: handle exception
		}
	}
}
