<%@page import="com.servlet.jdbc_crud_with_servlet_api.dao.EmployeeDao"%>
<%@page import="com.servlet.jdbc_crud_with_servlet_api.dto.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Pages</title>
</head>
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
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    padding: 20px;
}

h1 {
    color: white;
    font-size: 32px;
    margin-bottom: 30px;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
    letter-spacing: 1px;
}

.content {
    background: rgba(255, 255, 255, 0.98);
    padding: 40px;
    border-radius: 20px;
    box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
    width: 100%;
    max-width: 500px;
    animation: slideUp 0.6s ease-out;
}

@keyframes slideUp {
    from {
        opacity: 0;
        transform: translateY(30px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

form {
    padding: 0;
}

form label {
    display: block;
    color: #444;
    font-weight: 600;
    font-size: 14px;
    margin-bottom: 8px;
    margin-left: 5px;
}

input[type="text"],
input[type="email"],
input[type="password"],
input[type="tel"],
input[type="date"] {
    width: 100%;
    padding: 12px 16px;
    border: 2px solid #e0e0e0;
    border-radius: 10px;
    font-size: 15px;
    margin-bottom: 20px;
    transition: all 0.3s ease;
    background: white;
    font-family: inherit;
}

input[type="text"]:focus,
input[type="email"]:focus,
input[type="password"]:focus,
input[type="tel"]:focus,
input[type="date"]:focus {
    outline: none;
    border-color: #667eea;
    box-shadow: 0 0 0 4px rgba(102, 126, 234, 0.1);
    transform: translateY(-2px);
}

input[type="text"]:disabled {
    background-color: #f5f5f5;
    cursor: not-allowed;
    color: #666;
}

.gender-group {
    margin-bottom: 25px;
    padding: 15px;
    background: #f8f9fa;
    border-radius: 10px;
}

.gender-group label {
    margin-bottom: 12px;
}

.gender-options {
    display: flex;
    gap: 20px;
    flex-wrap: wrap;
}

.gender-option {
    display: flex;
    align-items: center;
}

input[type="radio"] {
    width: 20px;
    height: 20px;
    margin-right: 8px;
    margin-bottom: 0;
    cursor: pointer;
    accent-color: #667eea;
}

.gender-option label {
    margin: 0;
    font-weight: 500;
    cursor: pointer;
    user-select: none;
}

input[type="submit"] {
    width: 100%;
    padding: 14px;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
    border: none;
    border-radius: 10px;
    font-size: 16px;
    font-weight: 600;
    cursor: pointer;
    transition: all 0.3s ease;
    box-shadow: 0 4px 15px rgba(102, 126, 234, 0.4);
    margin-top: 10px;
}

input[type="submit"]:hover {
    transform: translateY(-2px);
    box-shadow: 0 6px 20px rgba(102, 126, 234, 0.6);
}

input[type="submit"]:active {
    transform: translateY(0);
}

@media (max-width: 600px) {
    .content {
        padding: 30px 20px;
    }

    h1 {
        font-size: 24px;
        margin-bottom: 20px;
    }

    .gender-options {
        flex-direction: column;
        gap: 12px;
    }
}
</style>
<body>

<%
 int id= Integer.parseInt(request.getParameter("id"));
  
Employee employee= new EmployeeDao().getEmployeeByIdDao(id);
%>
			<h1>EDIT-PAGE</h1>
			
		<div>
		  <form action="employeeUpdate" method="post">
		  
		  	<label>EMPID:</label><br>
		  	<input type="text"  name="empId" value="<%=employee.getId()%>"><br>
		  	
		  	<label>EMPNAME:</label><br>
		  	<input type="text"  name="empName" value="<%=employee.getName()%>"><br>
		  	
		  	<label>EMPEMAIL:</label><br>
		  	<input type="email"  name="empEmail" value="<%=employee.getEmail()%>"><br>
		  	
		  	<label>EMPPASSWORD:</label><br>
		  	<input type="password"  name="empPassword" value="<%=employee.getPassword()%>"><br>
		  	
		  	<label>EMPPhone:</label><br>
		  	<input type="tel"  name="empPhone" value="<%=employee.getPhone()%>"><br>
		  	
		  	<label>EMPDOJ:</label><br>
		  	<input type="date"  name="empDoj" value="<%=employee.getDoj()%>"><br>
		  	
		    <label>EMPDesignation:</label><br>
		  	<input type="text"  name="empDesignation" value="<%=employee.getDesignation()%>"><br>
		  
		  	<label>GENDER:</label><br>
		  	
		  	<input type="radio" value="MALE" name="gender" <%if(employee.getGender().equalsIgnoreCase("MALE")){%>checked="checked"<%}%>>MALE
		  	<input type="radio" value="FEMALE" name="gender" <%if(employee.getGender().equalsIgnoreCase("FEMALE")){%>checked="checked"<%}%>>FEMALE
		  	<input type="radio" value="OTHER" name="gender" <%if(employee.getGender().equalsIgnoreCase("OTHER")){%>checked="checked"<%}%>>OTHER<br>
		  	
		  	<input type="submit" value="update">
		  </form>
		
		</div>
</body>
</html>