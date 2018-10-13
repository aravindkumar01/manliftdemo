package com.example.demo.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.example.demo.Entitty.Field3;
import com.example.demo.Service.Field3Service;

@Controller
@Configuration
public class Field3Controller {

	@Autowired
	Field3Service service;
	
	
    @RequestMapping(value="/field3",method = RequestMethod.POST)
    public @ResponseBody String  insertData(@RequestBody Field3 field, HttpServletRequest request,BindingResult result) {
         try {
        	 service.fied3Save(field);
        
        	 String s="done";
        	 return s;
		} catch (Exception e) {
			// TODO: handle exception
		  System.out.println(e);
		}
        return "done";          
}

	
}
