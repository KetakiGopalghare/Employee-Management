package com.spring.entity;

import java.util.Date; 

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class employee {

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE)
	int employeeId;
	String firstName;
	String lastName;
	double salary;
	String emailId;
	String username;
	String password;
	String gender;
	String department;
	long mobileNumber;
	String role;
	String status="Inactive";
	String question;
	String answer;
	String birth_date;
	Date created_at;
	
	
	public employee() {
		super();
		// TODO Auto-generated constructor stub
	}


	public employee(int employeeId, String firstName, String lastName, double salary, String emailId, String username,
			String password, String gender, String department, long mobileNumber, String role, String status,
			String question, String answer, String birth_date, Date created_at) {
		super();
		this.employeeId = employeeId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.salary = salary;
		this.emailId = emailId;
		this.username = username;
		this.password = password;
		this.gender = gender;
		this.department = department;
		this.mobileNumber = mobileNumber;
		this.role = role;
		this.status = status;
		this.question = question;
		this.answer = answer;
		this.birth_date = birth_date;
		this.created_at = created_at;
	}


	public int getEmployeeId() {
		return employeeId;
	}


	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public double getSalary() {
		return salary;
	}


	public void setSalary(double salary) {
		this.salary = salary;
	}


	public String getEmailId() {
		return emailId;
	}


	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getDepartment() {
		return department;
	}


	public void setDepartment(String department) {
		this.department = department;
	}


	public long getMobileNumber() {
		return mobileNumber;
	}


	public void setMobileNumber(long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}


	public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getQuestion() {
		return question;
	}


	public void setQuestion(String question) {
		this.question = question;
	}


	public String getAnswer() {
		return answer;
	}


	public void setAnswer(String answer) {
		this.answer = answer;
	}


	public String getBirth_date() {
		return birth_date;
	}


	public void setBirth_date(String birth_date) {
		this.birth_date = birth_date;
	}


	public Date getCreated_at() {
		return created_at;
	}


	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}


	@Override
	public String toString() {
		return "employee [employeeId=" + employeeId + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", salary=" + salary + ", emailId=" + emailId + ", username=" + username + ", password=" + password
				+ ", gender=" + gender + ", department=" + department + ", mobileNumber=" + mobileNumber + ", role="
				+ role + ", status=" + status + ", question=" + question + ", answer=" + answer + ", birth_date="
				+ birth_date + ", created_at=" + created_at + "]";
	}
	
}
