package com.spring.controller;

import java.util.List;    

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.spring.entity.employee;
import com.spring.service.serviceInterface;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class employeeController {

	@Autowired
	serviceInterface si;
	
	@PostMapping(value="/loginProcess")
	public ModelAndView loginProcess(@ModelAttribute employee emp,HttpSession session)
	{
		System.out.println("hi"+emp);
		employee em=si.loginProcess(emp);
		
		if(em!=null)
		{
			//session.setAttribute("username", em.getUsername());
			session.setAttribute("username", em.getUsername());
			session.setAttribute("emp", em.getEmployeeId());
			session.setAttribute("role", em.getRole());
			return new ModelAndView("home");
		}
		else
		{
			return new ModelAndView("login");
		}
	}
	
	@PostMapping(value="addEmployee")
	public ModelAndView addEmployee(@ModelAttribute employee emp)
	{
		System.out.println(emp);
		employee empl=si.addEmployee(emp);
		if(empl!=null)
		{
			return new ModelAndView("redirect:/listofemployees","msg","record inserted");
		}
		else
		{
			return new ModelAndView("addEmployee","msg","record not inserted");
		}
	}
	
	@GetMapping(value="/listofemployees")
	public ModelAndView listofemployees()
	{
		List<employee> list = si.listofemployees();
		if(list!=null)
		{
			return new ModelAndView("listofemployees","employees",list);
		}
		else
		{
			return new ModelAndView("listofemployees");
		}
	}
	
	@GetMapping(value="/deleteemployeebyid")
	public ModelAndView deleteemployeebyid(@RequestParam int id)
	{
		String str=si.deleteemployeebyid(id);
		if(str!=null)
		{
			System.out.println("Record deleted");
			return new ModelAndView("redirect:/listofemployees","message",str);
		}
		else
		{
			return new ModelAndView("listofemployees","message","Record not deleted");
		}
	}
	
	@GetMapping(value="/editemployee")
	public ModelAndView editemployee(@RequestParam int emp)
	{
		employee employee=si.editemployee(emp);
		if(employee!=null)
		{
			return new ModelAndView("profile","message",employee);
		}
		else
		{
			return new ModelAndView("listofemployees");
		}
	}
	
	@PostMapping(value="/updateemployee")
	public ModelAndView updateemployee(@ModelAttribute employee emp)
	{
		employee em=si.updateemployee(emp);
		if(em!=null)
		{
			return new ModelAndView("redirect:/listofemployees?emp="+emp.getEmployeeId()+"&msg=UPDATED");
		}
		else
		{
			return new ModelAndView("redirect:/editemployee?id="+emp.getEmployeeId()+"&msg=NOT UPDATED");
		}
		
	}
	
	@PostMapping(value="/logout")
	public ModelAndView logout()
	{
		System.out.println("logout");
		return new ModelAndView("login");
	}
	
	
}
