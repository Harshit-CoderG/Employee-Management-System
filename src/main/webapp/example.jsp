<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Example</title>
</head>
<body>

<%--This is the Example of how to write Comments in JSP file--%>
	<%--<%
		int a=10;
		if(a%2==0){System.out.println("Even Number");
		out.print("Even");}
		else{System.out.println("Odd Number");
		out.print("Odd");}%>
	--%>
	
	<%--This is the Example of the Scriptlet Tag --%>
	<%
		int a=10;
		if(a%2==0){System.out.println("Even Number");
		out.print("Even");}
		else{System.out.println("Odd Number");
		out.print("Odd");}
	%>
	
	<%--This is the Example of the Expression Tag --%>
	<%for(int i=9;i<=20;i++){ 
	if(i%2==0){
	%>
	<h4 style="color:red;"><%=i %></h4>
	
	<%}else{ %>
		<h4 style="color:green;"><%=i %></h4>
	<%}}%>
	
	
	<%--This is the Example of the Declaration Tag --%>
	<%!public int addTwoNumber(int a , int b){
		return a+b;
	} %>
	
	<%int sum=addTwoNumber(5,10); %>
	<%=sum %>
	<h4>Sum of a and b = <%=addTwoNumber(23,5) %></h4>
	
	
	
</body>
</html>