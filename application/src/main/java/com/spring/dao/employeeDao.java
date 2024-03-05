package com.spring.dao;

import java.util.List; 

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.entity.employee;

@Repository
public class employeeDao implements daoInterface {

	@Autowired
	SessionFactory sf;
	
	@Override
	public employee loginProcess(employee emp) {
		Session session=sf.openSession();
		employee employee = null;
		Query<employee> q=session.createQuery("from employee where username=:username AND password=:password");
		q.setParameter("username", emp.getUsername());
		q.setParameter("password", emp.getPassword());
		List<employee> list=q.list();
		if(!list.isEmpty())
		{
			employee=list.get(0);
		}
		session.close();
		return employee;
		
	}

	@Override
	public employee addEmployee(employee emp) {
		employee eml=null;
		System.out.println("in dao"+emp);
		
		Session ses=sf.openSession();
		Transaction tx=ses.beginTransaction();
		ses.save(emp);
		tx.commit();
		eml=emp;
		ses.close();
		return eml;
	}

	@Override
	public List<employee> listofemployees() {
		List<employee> list=null;
		Session ses=sf.openSession();
		try {
			Query<employee> q=ses.createQuery("from employee");
			list=q.list();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
			ses.close();
		}
		return list;
	}

	@Override
	public String deleteemployeebyid(int id) {
		Session ses=sf.openSession();
		Transaction tx=ses.beginTransaction();
		employee emp=ses.get(employee.class, id);
		ses.delete(emp);
		tx.commit();
		ses.close();
		return "Record deleted";
	}

	@Override
	public employee editemployee(int emp) {
		employee employee=null;
		Session ses=sf.openSession();
		Transaction tx=ses.beginTransaction();
//		Query<employee> q=ses.createQuery("from employee where employeeId="+id);
		//List<employee> list=q.list();
		employee eid=ses.get(employee.class, emp);
//		
//		for(employee emp:list)
//		{
//			if(eid.getEmployeeId()==id)
//			{
//				ses.delete(eid);
//				ses.update(id);			
//			}
		//}
		
		tx.commit();
		employee=eid;
		ses.close();
		return employee;
	}

	@Override
	public employee updateemployee(employee emp) {
		employee el=null;
		Session session=sf.openSession();
		Transaction tx=session.beginTransaction();
		session.update(emp);
		tx.commit();
		el=emp;
		return el;
	}

	

}
