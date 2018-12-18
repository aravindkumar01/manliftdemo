package com.example.demo.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.Entitty.Field2;
import com.example.demo.Service.Field2Service;

@Controller
@Configuration
public class Field2Controller {
       
	@Autowired
	Field2Service service;
	@RequestMapping(value="/field2",method=RequestMethod.POST)

	   public   String  getSearchUserProfiles(@RequestBody Field2 field, Model model) {
	    
       
		try {
			
 			service.field2Save(field);
 		} catch (Exception e) {
			System.out.println(e);
			// TODO: handle exception
		}
	
			return "field3";
}
	
}
