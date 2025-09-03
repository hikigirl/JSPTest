<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
/* 
	페이지 간 이동
	1. HTML
		- <a href="URL">태그
		- 사용자가 클릭해야 이동
	2. JavaScript
		- location.href = 'url'
		- 이동 조건을 자유롭게... -> 제어 가능
		- 클라이언트측 구현
	3. Servlet/JSP
		- response.sendRedirect("URL")
		- 자바스크립트랑 동일
		- 이동 조건을 자유롭게... -> 제어 가능
		- 서버측 구현
*/
	response.sendRedirect("ex10_response_two.jsp");

%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK" />
	<style>
		
	</style>
</head>
<body>
	<h1>첫번째 페이지</h1>
	<div><a href="ex10_response_two.jsp">두번째페이지로 이동</a></div>
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		// location.href = 'ex10_response_two.jsp';
	</script>
</body>
</html>