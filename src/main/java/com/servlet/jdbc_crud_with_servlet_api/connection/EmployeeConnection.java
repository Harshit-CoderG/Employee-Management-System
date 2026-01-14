package com.servlet.jdbc_crud_with_servlet_api.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.cj.jdbc.Driver;

public class EmployeeConnection {
	public static Connection getEmployeeConnection() {
		try {
			Driver driver=new Driver();
			DriverManager.registerDriver(driver);
			
			String url = "jdbc:mysql://localhost:3306/jdbc-a12";
			String Username = "root";
			String password = "root";

			return DriverManager.getConnection(url, Username, password);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
	}
}
