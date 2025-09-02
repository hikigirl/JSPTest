<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
/* 
	클라이언트 -> 전송(데이터) -> 서버
	1. POST
	 - 네트워크 패킷 본문에 넣어서 전송(표준)
	 - 데이터가 드러나지 않는다.
	2. GET 
	 - URL 뒤에 붙여서 전송(편법)
	 - URL 뒤에 데이터가 드러난다.		 
*/
	//데이터 수신하기
	//String getParameter(String name)
	// - name: 태그의 name값
	//네트워크를 통해 데이터를 수신받을 때에는 무조건 String으로 받게 된다.
	String txt = request.getParameter("txt");
	String txt2 = request.getParameter("txt2");
	String num = request.getParameter("num");
	//int num2 = Integer.parseInt(num);
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
	<h1>결과</h1>
	<div>txt: <%=txt %></div>
	<div>num: <%=num %></div>
	<div>txt2.length(): <%=txt2.length() %></div>
	
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>