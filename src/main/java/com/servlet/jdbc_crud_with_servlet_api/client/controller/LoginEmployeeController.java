package com.servlet.jdbc_crud_with_servlet_api.client.controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.servlet.jdbc_crud_with_servlet_api.dao.EmployeeDao;
import com.servlet.jdbc_crud_with_servlet_api.dto.Employee;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginEmployeeController extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession=req.getSession();
		
		
		String email = req.getParameter("empEmail");
		String password = req.getParameter("empPassword");

//		EmployeeDao dao=
		Employee emp1 = new EmployeeDao().getEmployeeByEmailDao(email);
//		PrintWriter printWriter = resp.getWriter();
		if (emp1 != null) {
			if (emp1.getPassword().equals(password)) {
				httpSession.setAttribute("userSession", email);
				httpSession.setMaxInactiveInterval(20);
				RequestDispatcher dispatcher = req.getRequestDispatcher("employee-display.jsp");
				dispatcher.forward(req, resp);
			} else {
			
//				printWriter.write("<html><body><h5 style='color:red'>Password is incorrect</h5></body></html>");
				req.setAttribute("msg", "password is incorrect");
				RequestDispatcher dispatcher = req.getRequestDispatcher("employee-login.jsp");
				dispatcher.include(req, resp);
				System.out.println("Password  is incorrect");
			}
		} else {
//			printWriter.write("<html><body><h5 style='color:red'>Email is incorrect</h5></body></html>");
			req.setAttribute("msg", "email is incorrect");
			RequestDispatcher dispatcher = req.getRequestDispatcher("employee-login.jsp");
			dispatcher.include(req, resp);
			System.out.println("email is incorrect");
		}

	}

}
