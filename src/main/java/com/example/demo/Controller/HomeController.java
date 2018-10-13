package com.example.demo.Controller;

import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Configuration
public class HomeController {

	@RequestMapping("/")
	public String home()
	{
	
		return "loginBac";
}

	@RequestMapping("/login")
	public String login()
	{
	
		return "login";
}

	@RequestMapping("/user")
	public String user()
	{
		System.out.println("wel");
		return "employee";
	}
	@RequestMapping("/store")
	public String store()
	{
		System.out.println("wel");
		return "store";
	}

	@RequestMapping("/field")
	public String hoe()
	{
		System.out.println("wel");
		return "field";
	}

	@RequestMapping("/field1")
	public String field1()
	{
	
		return "field1";
}
	
	@RequestMapping("/field2")
	public String field2()
	{
	
		return "field2";
}	
	@RequestMapping("/field3")
	public String field3()
	{
	
		return "field3";
}	

	@RequestMapping("/storeDash")
	public String storeDash()
	{
	
		return "storeDash";
}	
	
	@RequestMapping("/productRequest")
	public String productRequest()
	{
	
		return "productRequest";
}	
	@RequestMapping("/storeRequest")
	public String storeRequest()
	{
	
		return "storeRequest";
}	
	@RequestMapping("/storeReturn")
	public String storeReturn()
	{
	
		return "storeReturn";
}	
	@RequestMapping("/techProductReq")
	public String techProductReq()
	{
	
		return "techProductReq";
}	
	
	@RequestMapping("/reportpage")
	public String reportpage()
	{
	
		return "field1";
}	
	
	@RequestMapping("/storepagel")
	public String storepagel()
	{
	
		return "storeRequest";
}	

	
	@RequestMapping("/productpage")
	public String productpage()
	{
	
		return "productPage";
}
	@RequestMapping("/logout")
	public String logout()
	{
	
		return "logout";
}	
	
	@RequestMapping("/dashboard")
	public String dashboard()
	{
	
		return "dashboard";
}	
	
	
}
