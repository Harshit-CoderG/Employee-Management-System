package com.servlet.jdbc_crud_with_servlet_api.controller;


import java.util.ArrayList;
import java.util.List;

import com.servlet.jdbc_crud_with_servlet_api.dao.EmployeeDao;

public class DeleteMultipleEmployeeController {
public static void main(String[] args) {
	
	    EmployeeDao dao = new EmployeeDao();

	    // Suppose we want to delete employees with IDs 1, 3, and 5
	    List<Integer> employeeIds = new ArrayList<>();
	    employeeIds.add(123);
	    employeeIds.add(202);
	    employeeIds.add(201);

	    boolean isDeleted = dao.deleteMultipleEmployeeDao(employeeIds);

	    if (isDeleted) {
	        System.out.println("✅ Employees deleted successfully.");
	    } else {
	        System.out.println("❌ Failed to delete employees.");
	    
	}
}
}
