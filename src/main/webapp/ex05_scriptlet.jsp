<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//비즈니스 코드 -> 보통 최상단에 위치(가독성+코드관리차원)
	String name = "홍길동";
	int age = 20;
	String color = "cornflowerblue";
	String content = "<input type='text' />";
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK" />
	<style>
		h1 {
			color: <%=color%>;
		}
	</style>
</head>
<body>
	<h1>스크립틀릿+표현식</h1>
	
	<div onclick="hello();">이름: <%= name %></div>
	<div>나이: <%= age %></div>
	<div style="background-color: <%= color %>;">색상: <%= color %></div>
	<%=content %>
	<!-- 스파게티 코드 -->
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		function hello() {
			alert('안녕하세요. <%=name%>님.');
		}
	</script>
</body>
</html>