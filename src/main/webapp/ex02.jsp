<%@ page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Random rnd = new Random();
		int dan = rnd.nextInt(8) + 2; //2~9단
	%>
	
	<h1>구구단 <small><%= dan %>단</small></h1>
	<%
		for (int i=1; i<=9; i++){
	%>
		<div><%=dan%> X <%=i%> = <%=dan*i%></div>
	<%		
		}
	%>
	
	<div id="num1" class="nums"></div>
</body>
</html>