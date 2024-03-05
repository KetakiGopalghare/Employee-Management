package com.spring.service;

import java.text.ParseException; 
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.daoInterface;
import com.spring.entity.employee;

@Service
public class employeeService implements serviceInterface {

	@Autowired
	daoInterface di;
	
	@Override
	public employee loginProcess(employee emp) {
		employee em=di.loginProcess(emp);
		return em;
	}

	@Override
	public employee addEmployee(employee emp) {
		System.out.println("in service"+emp);
		String dt=new SimpleDateFormat("yyyy-MM-dd HH-mm-ss").format(new Date());
		System.out.println("Date : "+dt);
		Date created_at;
		try 
		{
			created_at = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss").parse(dt);
			emp.setCreated_at(created_at);
		}
		catch (ParseException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		employee employee=di.addEmployee(emp);
		System.out.println("Return : " +employee);
		
		return employee;
	}

	@Override
	public List<employee> listofemployees() {
		List<employee> ls= di.listofemployees();
		for(employee emp : ls)
		{
			System.out.println(emp);
		}
		return ls;
	}

	@Override
	public String deleteemployeebyid(int id) {
		String em=di.deleteemployeebyid(id);
		return em;
	}

	@Override
	public employee editemployee(int emp) {
		employee eml=di.editemployee(emp);
		return eml;
	}

	@Override
	public employee updateemployee(employee emp) {
		employee empl=di.updateemployee(emp);
		return empl;
	}

	
}
