package com.example.demo.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.Entitty.Field1;
import com.example.demo.Service.Field1Service;

@Controller
@Configuration
public class Field1Controller {

	@Autowired
	Field1Service service;
	@RequestMapping(value = "/reportCreation", method = RequestMethod.POST)
	public String fieldSave(@ModelAttribute("Field1") Field1 field)
	{
		
		try {
			service.fieldSave(field);
		} catch (Exception e) {
			System.out.println(e);
			// TODO: handle exception
		}
		
		return "field2";
	}
	
@GetMapping("/fieldReport")
public @ResponseBody List<Field1> fieldRepot()
{
	try {
		
		
		return service.filedReport();
		
		
	} catch (Exception e) {
		System.out.println(e);
		// TODO: handle exception
	}
	return null;
	
}

}
