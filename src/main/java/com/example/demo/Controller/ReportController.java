package com.example.demo.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.Entitty.Field1;
import com.example.demo.Entitty.Report;
import com.example.demo.Service.ReportSer;

@Controller
public class ReportController {

	@Autowired
	ReportSer service;
	@RequestMapping(value = "/test", method = RequestMethod.GET, params = {"uname"})
	public String view(@RequestParam(value="uname", required = true) String uname,Model model)
	{
		
		try {
			System.out.println(uname);
			String[] arr=uname.split(",");
		   String username=arr[0];
		   String date=arr[1];
		   model.addAttribute("user",username);
		   model.addAttribute("date",date);
	//List<Report> list=service.report(username, date);

    //model.put("list", list);
			
		   
    return "reportpage";
		} catch (Exception e) {
			System.out.println(e);
			// TODO: handle exception
		}
		  return "reportpage";
		
	}
	
	
	
	@RequestMapping(value = "/report/{username}/{date_site}", method = RequestMethod.GET)
	
	public @ResponseBody List<Report> fieldRepot(@PathVariable("username") String username,@PathVariable("date_site") String date_site)
	{
		try {
			
			
			
			return service.report(username, date_site);

			
		} catch (Exception e) {
			System.out.println(e);
			// TODO: handle exception
		}
		return null;
		
	}
}
