package com.anne.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {
	
	// controller method to show the HTML initial form
	@RequestMapping("/showForm")
	public String showForm() {
		
		return "helloworld-form";
	}
	
	//controller method to process the HTML initial form
	@RequestMapping("/processForm")
	public String processForm() {
	
	return "helloworld";
}
	
	// add a new controller method to read form data and
	// add data to the model
	@RequestMapping("/processFormVersionTwo")
	public String letsShoutDude(HttpServletRequest request, Model model) {
		
		// Read the request parameter from html form
		
		//student name is on jsp page
		String theName = request.getParameter("studentName");
		// convert data to all caps
		
			theName = theName.toUpperCase();
		// create the message
			
			String result = "Yo " + theName;
			
		// add message to the model
			model.addAttribute("message", result);
			
			// use ${message} in the helloworld page to display the message
		return "helloworld";
	}
	
	@RequestMapping("/processFormVersionThree")
		//// Read the request parameter from html form
	public String processFormVersionThree(@RequestParam("studentName") String theName, Model model) {
		
		// convert data to all caps
		
			theName = theName.toUpperCase();
		// create the message
			
			String result = "Hey my brother " + theName;
			
		// add message to the model
			model.addAttribute("message", result);
			
		return "helloworld";
	}
}
