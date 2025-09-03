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
	<h1>요청 정보</h1>
	<p>요청 URI: 			<%= request.getRequestURI() %></p>
	<p>요청 URL: 			<%= request.getRequestURL() %></p>
	<p>요청 서버 도메인: 	<%= request.getServerName() %></p>
	<p>요청 서버 포트: 		<%= request.getServerPort() %></p>
	<p>쿼리 문자열: 		<%= request.getQueryString() %></p>
	<p>요청 방식: 			<%= request.getMethod() %></p>
	<p>컨텍스트 경로: 		<%= request.getContextPath() %></p>
	<p>클라이언트 주소: 	<%= request.getRemoteAddr() %></p>	
	<hr />
	
	<a href="<%= request.getContextPath() %>/ex09_request.jsp">request 예제</a>

	
	<%@ include file="inc/url.jsp" %>
	<!-- 조각 페이지의 경로를 찍어도 현재 실행한 페이지의 주소가 출력된다 -->
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>