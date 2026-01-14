<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee-Login</title>
<style>

body{
background-color:#A7C7E7;
color:black;
display:flex;
justify-content: center; 
align-items: center; 
flex-direction:column;
height: 100vh;  
}
.content{
padding:8px;
height:250px;
width:350px;
box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
border-radius:50px;
box-shadow:;
}

form{
padding:20px;
}
form label{
margin-left:5px;
}
input{
border:2px solid #ffffff;
border-radius:50px;
margin-top: 10px;
width:95%;
font-size:15px;
padding:10px;
box-sizing: border-box; 

}
input[type="submit"]{
margin-top:20px;
border:2px solid white;
width:95%;
cursor:pointer;
background-color: #5D3FD3;
font-weight: bold;
color: white;
}
</style>
</head>
<body>
   <%
     Object object= request.getAttribute("msg");
  
   %>
	<h1>Employee-Login-Page</h1>
	<%if(object!=null){ %>
    <p><%=object%></p>
    <% } %>


	<div class="content">
		<form action="empLogin" method="post">
			<label>USER-EMAIL:</label><br> <input type="email"
				placeholder="enter your email" name="empEmail"> <br>
			<br> <label>USER-PASSWORD:</label><br> <input
				type="password" placeholder="enter your password" name="empPassword">
			
			<br> <input type="submit" value="LOGIN">
		</form>
	</div>

</body>
</html>