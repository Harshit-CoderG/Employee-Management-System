package com.servlet.jdbc_crud_with_servlet_api.client.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.servlet.jdbc_crud_with_servlet_api.dao.EmployeeDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(value = "/delete")
public class DeleteEmployeeController extends HttpServlet{
	protected void doGet(HttpServletRequest req , HttpServletResponse resp) throws ServletException, IOException{
	
		int id= Integer.parseInt(req.getParameter("id"));
	
	List<Integer> l1=new ArrayList<Integer>();
	l1.add(id);
	boolean b= new EmployeeDao().deleteMultipleEmployeeDao(l1);
	String msg=b?"deleted":"check your id or your code";
	System.out.println(msg);
	req.getRequestDispatcher("employee-display.jsp").forward(req, resp);
	}
}
