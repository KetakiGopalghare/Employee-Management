package com.spring.controller;

import org.springframework.web.bind.annotation.GetMapping; 
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class login {

	@GetMapping(value="/")		//default controller
	public ModelAndView welcome()
	{
		return new ModelAndView("login");
	}
	
	@GetMapping(value="/home")
	public ModelAndView home()
	{
		System.out.println("in login/home");
		return new ModelAndView("home");
	}
	
//	@GetMapping(value="/home")
//	public String home(HttpServletRequest request)
//	{
//		Map<String, ?> inputFlashMap = RequestContextUtils.getInputFlashMap(request);
//		if (inputFlashMap != null) {
//	        employee employee = (employee) inputFlashMap.get("employee");
//	        return "Logged In successfully";
//	    } else {
//	        return "redirect:/";
//	    }
//	}
	
	
	@GetMapping(value="/addEmployee")
	public ModelAndView addEmployee()
	{
		System.out.println("in login/addEmployee");
		return new ModelAndView("addEmployee");
	}
	
	@GetMapping(value="/updateemployeee")
	public ModelAndView updateemployee()
	{
		System.out.println("in login/profile");
		return new ModelAndView("profile");
	}
	
	@GetMapping(value="/logout")
	public ModelAndView logout()
	{
		System.out.println("logout");
		return new ModelAndView("login");
	}
}
