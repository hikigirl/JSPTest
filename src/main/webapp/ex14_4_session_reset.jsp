<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<h1>세션 초기화</h1>
	<%
		session.invalidate();
	
	/* 
		초기화 전:
		Session ID: 9E397C6000AD805BC2E1052DA800D9D1
		Session CreationTime: 2025-09-03 14:02:20
		Session Max Inactive Interval: 1800
		Session isNew: false
		Session Data: 홍길동
		
		초기화 후:
		Session ID: CEF2D340EC35ACA02338C802BA5AF08D
		Session CreationTime: 2025-09-03 14:11:09
		Session Max Inactive Interval: 1800
		Session isNew: true
		Session Data: null
	*/
	%>
	<div><a href="ex14_1_session_main.jsp">돌아가기</a></div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>