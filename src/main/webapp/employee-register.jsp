<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee-Register</title>
<style>

body{
background-color:#A7C7E7;
color:white;
display:flex;
align-items: center; 
flex-direction:column;
height: 100vh;  
background-image: linear-gradient(115deg, rgba(58, 58, 158, 0.8), rgba(136, 136, 206, 0.7)), url(https://cdn.freecodecamp.org/testable-projects-fcc/images/survey-form-background.jpeg);
}
h1{
color:white;
}
.content{
padding:10px;
height:100%;
width:550px;
}

form{
padding:20px;
}
form label{
margin-left:5px;
}
input{ 
background:#0a0a23;
border:2px solid #ffffff;
color:white;
border-radius:50px;
margin-top: 10px;
width:95%;
font-size:15px;
padding:10px;
box-sizing: border-box; 

}
input[type="radio"] {
  display: inline-block;   
  width: auto;             
  margin-right: 10px;     
}
* {
    box-sizing: border-box;
}

button[type="submit"] {
    width: 100%;
    padding: 10px;
    border: 2px solid white;
    border-radius: 50px;
    box-sizing: border-box; 
    cursor: pointer;
    background-color: #5D3FD3;
    color: white;
    font-weight: bold;
}

</style>
</head>
<body>
<h1>Register the Employee</h1>
	<div class="content">
		<form action="employeeRegister" method="get">

			<label>EmpID:</label>
			<input type="text" placeholder="enter emp id" name="empId">
			<br/><br/>  
			
			<label>EmpName:</label>
			<input type="text" placeholder="enter emp name" name="empName">
			<br><br/> 
			
			<label>EmpEmail:</label>
			<input type="email" placeholder="enter emp email" name="empEmail">
			<br><br/>
			
			<label>EmpPassword:</label>
			<input type="password" placeholder="enter emp password" name="empPassword">
			<br><br/> 
			
			<label>EmpPhone:</label>
			<input type="tel" placeholder="enter emp phone" name="empPhone">
			<br><br/>
			
			<label>EmpDoj:</label>
			<input type="date" placeholder="enter emp doj" name="empDoj">
			<br><br/> 
			
			<label>EmpDesignation:</label>
			<input type="text" placeholder="enter emp designation" name="empDesignation">
			<br><br/> 
			
			<label>Gender:</label>
			<input type="radio" value="MALE" name="gender">MALE 
			<input type="radio" value="FEMALE" name="gender">FEMALE 
			<input type="radio" value="OTHER" name="gender">OTHERS<br> <br />


			<button type="submit">Register</button>
		</form>

	</div>

</body>
</html>