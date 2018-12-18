package com.example.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.Entitty.Field3;
import com.example.demo.Service.Field3Service;

@Controller
@Configuration
public class Field3Controller {

	@Autowired
	Field3Service service;
	
	
    @RequestMapping(value="/field3",method = RequestMethod.POST)
    public @ResponseBody String  insertData(@RequestBody Field3 field,Model model) {
         try {
        	 service.fied3Save(field);
        
        	
		} catch (Exception e) {
			// TODO: handle exception
		  System.out.println(e);
		}
         model.addAttribute("user",field.getUsername());
 		return "field1"; 
}

	
}
