package com.example.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.Entitty.Login;
import com.example.demo.Service.LoginService;

@Controller
@Configuration
public class LoginControler {
	
	@Autowired
	LoginService log;
	@RequestMapping(value = "/logCreation", method = RequestMethod.POST)
	public  String login(@ModelAttribute("Login") Login login,Model model)
	{
		String result="";
		try {
		
			 result=log.logCheck(login);
			 if(result.equals("error"))
			 {
					model.addAttribute("error",true);
					return "loginBac";
			 }
			
		} catch (Exception e) {
			System.out.println(e);
			// TODO: handle exception
		}
		
		return result;
	}

}
