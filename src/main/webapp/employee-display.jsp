<%@page import="com.servlet.jdbc_crud_with_servlet_api.dto.Employee"%>
<%@page import="java.util.List"%>
<%@page import="com.servlet.jdbc_crud_with_servlet_api.dao.EmployeeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Home</title>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    min-height: 100vh;
    padding: 40px 20px;
}

.container {
    max-width: 1400px;
    margin: 0 auto;
}

.header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 30px;
    background: rgba(255, 255, 255, 0.95);
    padding: 25px 35px;
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    animation: slideDown 0.6s ease-out;
}

@keyframes slideDown {
    from {
        opacity: 0;
        transform: translateY(-20px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

h1 {
    color: #333;
    font-size: 28px;
    font-weight: 600;
}

.logout-btn {
    background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
    color: white;
    padding: 12px 30px;
    text-decoration: none;
    border-radius: 25px;
    font-weight: 600;
    transition: all 0.3s ease;
    box-shadow: 0 4px 15px rgba(245, 87, 108, 0.3);
}

.logout-btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 6px 20px rgba(245, 87, 108, 0.5);
}

.table-container {
    background: rgba(255, 255, 255, 0.98);
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    overflow-x: auto;
    animation: fadeIn 0.8s ease-out;
}

@keyframes fadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}

table {
    width: 100%;
    border-collapse: separate;
    border-spacing: 0;
    text-align: center;
}

table thead {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
}

table thead tr th {
    color: white;
    padding: 18px 15px;
    font-weight: 600;
    font-size: 14px;
    text-transform: uppercase;
    letter-spacing: 0.5px;
    border: none;
}

table thead tr th:first-child {
    border-top-left-radius: 10px;
}

table thead tr th:last-child {
    border-top-right-radius: 10px;
}

table tbody tr {
    transition: all 0.3s ease;
    background: white;
}

table tbody tr:nth-child(even) {
    background: #f8f9fa;
}

table tbody tr:hover {
    background: #e3f2fd;
    transform: scale(1.01);
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

table tbody tr td {
    padding: 15px;
    border-bottom: 1px solid #e0e0e0;
    color: #333;
    font-size: 14px;
}

table tbody tr:last-child td:first-child {
    border-bottom-left-radius: 10px;
}

table tbody tr:last-child td:last-child {
    border-bottom-right-radius: 10px;
}

.action-btn {
    display: inline-block;
    padding: 8px 20px;
    text-decoration: none;
    border-radius: 20px;
    font-weight: 600;
    font-size: 13px;
    transition: all 0.3s ease;
    margin: 0 5px;
}

.edit-btn {
    background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);
    color: white;
    box-shadow: 0 3px 10px rgba(79, 172, 254, 0.3);
}

.edit-btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 5px 15px rgba(79, 172, 254, 0.5);
}

.delete-btn {
    background: linear-gradient(135deg, #fa709a 0%, #fee140 100%);
    color: white;
    box-shadow: 0 3px 10px rgba(250, 112, 154, 0.3);
}

.delete-btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 5px 15px rgba(250, 112, 154, 0.5);
}

.no-data {
    text-align: center;
    padding: 40px;
    color: #666;
    font-size: 16px;
}

@media (max-width: 768px) {
    .header {
        flex-direction: column;
        gap: 15px;
        text-align: center;
    }

    h1 {
        font-size: 22px;
    }

    .table-container {
        padding: 15px;
    }

    table {
        font-size: 12px;
    }

    table thead tr th,
    table tbody tr td {
        padding: 10px 8px;
    }

    .action-btn {
        padding: 6px 12px;
        font-size: 11px;
        margin: 2px;
    }
}

@media (max-width: 480px) {
    body {
        padding: 20px 10px;
    }

    .action-btn {
        display: block;
        margin: 5px auto;
    }
}
</style>
</head>
<body>
	<h1>Welcome to Employee Display Page</h1>
	<% List<Employee> empList=new EmployeeDao().fetchEmployeeDataDao();
	
	HttpSession httpSession = request.getSession();
	
	Object object = httpSession.getAttribute("userSession");
	
	if(object!=null){
	%>


	<div>
		<table border="1">
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>EMAIL</th>
				<th>PHONE</th>
				<th>DOJ</th>
				<th>DESIGNATION</th>
				<th>GENDER</th>
				<th colspan="2">ACTION</th>
			</tr>
			<%for(Employee emp:empList) {%>
				<tr>
				<td><%=emp.getId() %></td>
				<td><%=emp.getName() %></td>
				<td><%=emp.getEmail() %></td>
				<td><%=emp.getPhone() %></td>
				<td><%=emp.getDoj() %></td>
				<td><%=emp.getDesignation() %></td>
				<td><%=emp.getGender() %></td>
				<td><a href="delete?id=<%= emp.getId() %>">Delete</a></td>
				<td><a href="edit.jsp?id=<%=emp.getId()%>">EDIT</a></td>
				
			</tr>
			<%}%>
			
		</table>
	</div>
	<a href="logout">Logout</a>
	
<%}else{ %>
<%response.sendRedirect("employee-login.jsp");}%>
</body>
</html>