package com.spring.dao;

import java.util.List;

import com.spring.entity.employee;

public interface daoInterface {

	public employee loginProcess(employee emp);
	public employee addEmployee(employee emp);
	public List<employee> listofemployees();
		public String deleteemployeebyid( int id);
		public employee editemployee(int emp);
		public employee updateemployee(employee emp);
}
