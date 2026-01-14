package com.servlet.jdbc_crud_with_servlet_api.client.controller;

import java.io.IOException;
import java.time.LocalDate;

import com.servlet.jdbc_crud_with_servlet_api.dao.EmployeeDao;
import com.servlet.jdbc_crud_with_servlet_api.dto.Employee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(value="/employeeUpdate")
public class EmployeeUpdateController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
		resp.setContentType("text/html");

		int id=Integer.parseInt(req.getParameter("empId"));
		String name=req.getParameter("empName");
		String email=req.getParameter("empEmail");
		String password=req.getParameter("empPassword");
		long phone=Long.parseLong(req.getParameter("empPhone"));
		
		LocalDate doj = LocalDate.parse(req.getParameter("empDoj"));
		
		System.out.println("DOJ param: " + req.getParameter("empDoj"));
		String designation=req.getParameter("empDesignation");
		String gender=req.getParameter("gender");
		
		Employee emp=new Employee();
		emp.setId(id);
		emp.setName(name);
		emp.setEmail(email);
		emp.setPassword(password);
		emp.setPhone(phone);
		emp.setDoj(doj);
		emp.setDesignation(designation);
		emp.setGender(gender);
		
		EmployeeDao dao=new EmployeeDao();
				dao.updateEmployeeDao(emp);
		
		resp.sendRedirect("employee-display.jsp");
	}

}
