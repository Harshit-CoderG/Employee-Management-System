package com.servlet.jdbc_crud_with_servlet_api.controller;

import java.time.LocalDate;
import java.util.Arrays;
import java.util.List;

import com.servlet.jdbc_crud_with_servlet_api.dao.EmployeeDao;
import com.servlet.jdbc_crud_with_servlet_api.dto.Employee;

public class InsertMultipleEmployees {
public static void main(String[] args) {
	Employee emp=new Employee();
	emp.setId(101);
	emp.setName("majnu");
	emp.setEmail("majnu23@gmail.com");
	emp.setPassword("majnu32@123");
	emp.setPhone(88077673462l);
	emp.setDoj(LocalDate.parse("1999-06-04"));
	emp.setDesignation("Software Developer");
	emp.setGender("Male");
	
	Employee emp1=new Employee();
	emp1.setId(102);
	emp1.setName("heer");
	emp1.setEmail("heer@gmail.com");
	emp1.setPassword("heer@123");
	emp1.setPhone(775064956362l);
	emp1.setDoj(LocalDate.parse("1999-05-08"));
	emp1.setDesignation("Software Developer");
	emp1.setGender("Male");
	
	List<Employee> emps= Arrays.asList(emp,emp1);
	List<Employee> l1=new EmployeeDao().saveMultipleEmployeeDao(emps);
}
	
}
