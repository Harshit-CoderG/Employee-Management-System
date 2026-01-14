package com.servlet.jdbc_crud_with_servlet_api.client.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import com.servlet.jdbc_crud_with_servlet_api.dao.EmployeeDao;
import com.servlet.jdbc_crud_with_servlet_api.dto.Employee;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class InsertEmployeeController extends HttpServlet{
	
	protected void doGet(HttpServletRequest req , HttpServletResponse resp) throws ServletException, IOException{
		
		resp.setContentType("text/html");
//		String id=req.getParameter("empId");
//		int empId= Integer.parseInt(id);
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
		Employee emp2= dao.saveEmployeeDao(emp);
		PrintWriter printWriter=resp.getWriter();
		if(emp2!=null) {
			printWriter.write("<html><body><h5 style='color:green'>You are registered</h5></body></html>");
			RequestDispatcher dispatcher=req.getRequestDispatcher("employee-login.jsp");
		dispatcher.include(req, resp);
		System.out.println("data saved");	
		}
		else {
			printWriter.write("<html><body><h5 style='color:red'>Something went wrong</h5></body></html>");
			RequestDispatcher dispatcher=req.getRequestDispatcher("employee-register.jsp");
			dispatcher.include(req, resp);
			System.out.println("Something went wrong");
		}
	
	}
	
}
