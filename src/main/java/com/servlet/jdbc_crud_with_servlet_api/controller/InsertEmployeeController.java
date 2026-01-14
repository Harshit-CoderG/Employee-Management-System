package com.servlet.jdbc_crud_with_servlet_api.controller;

import java.time.LocalDate;

import com.servlet.jdbc_crud_with_servlet_api.dao.EmployeeDao;
import com.servlet.jdbc_crud_with_servlet_api.dto.Employee;

public class InsertEmployeeController {
	public static void main(String[] args) {
		Employee emp=new Employee();
		emp.setId(7654);
		emp.setName("Amit");
		emp.setEmail("Amitshah@gmail.com");
		emp.setPassword("Amit@123");
		emp.setPhone(925054973462l);
		emp.setDoj(LocalDate.parse("1998-02-04"));
		emp.setDesignation("Software Developer");
		emp.setGender("Male");
		
		EmployeeDao dao =new EmployeeDao();
		Employee dbEmp=dao.saveEmployeeDao(emp);
		
		String msg=dbEmp!=null?"Data Stored":"Something went wrong";
		System.out.println(msg);
	}
}
