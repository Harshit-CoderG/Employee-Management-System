package com.servlet.jdbc_crud_with_servlet_api.controller;

import java.util.List;

import com.servlet.jdbc_crud_with_servlet_api.dao.EmployeeDao;
import com.servlet.jdbc_crud_with_servlet_api.dto.Employee;

public class FetchAllEmployeeController {
	public static void main(String[] args) {
		EmployeeDao dao=new EmployeeDao();
		List<Employee> empList=dao.fetchEmployeeDataDao();
		if(empList!=null) {
			for(Employee e:empList) {
				System.out.println(e);
			}
		}
		else {
			System.out.println("No Data Found");
		}	
	}
}
