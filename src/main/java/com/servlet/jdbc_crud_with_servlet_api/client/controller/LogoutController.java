package com.servlet.jdbc_crud_with_servlet_api.client.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogoutController extends HttpServlet{
	@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException,IOException {
	HttpSession httpSession=req.getSession();
	Object object=httpSession.getAttribute("userSession");
	if(object!=null) {
		httpSession.invalidate();
		req.setAttribute("msg", "logout success");
		req.getRequestDispatcher("employee-login.jsp").forward(req, resp);
		
//		resp.sendRedirect("employee-login.jsp");
	}
	
}
}
