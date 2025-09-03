<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
/* 
	페이지 이동
	pageContext.forward("URL")
	pageContext.include("URL")
*/
	//자바스크립트 생성 -> location.href
	//response.sendRedirect("ex11_pagecontext_two.jsp");
	//pageContext.forward("ex11_pagecontext_two.jsp");
	//System.out.println("one");
	
	//***** 웹은 상태 유지가 되지 않는다.
	//지역 변수를 다른 페이지로 넘기고 싶을때
	int num = 100;
	int num2 = 200;
	//방법1. form type=hidden으로
	//방법2. href에 쿼리스트링으로
	// --- 1, 2 방법은 클라이언트 이용한 방법
	
	//방법3.
	request.setAttribute("num", num);
	pageContext.setAttribute("num2", num2);
	pageContext.forward("ex11_pagecontext_two.jsp");
	//response.sendRedirect("ex11_pagecontext_two.jsp");
	
	
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
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>