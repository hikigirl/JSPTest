<%@page import="com.test.jsp.MyUtil"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//이 영역은 어떤 메서드의 구현부
	
	int a = 10;
	//public int a = 10; //a는 지역변수 Illegal modifier for the variable a; only final is permitted

	// 메서드 안에 메서드를 만들 수 없다.
	/* public void test (){
		
	} */
%>
<%! 
	//선언부에서 만든 기능 -> 현재 jsp 파일 내에서만 사용 가능
	//						  다른 파일에서는 사용 불가능.
	
	//이 영역은 어떤 클래스의 구현부
	public int b = 20;
	public void test() {
		System.out.println("test");
	}
	public int sum(int a, int b) {
		return a+b;
	}
%>
<%-- <% test(); %> --%>
<%
	MyUtil util = new MyUtil();
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
	<div>10 + 20 = <%= sum(10, 20) %></div>
	<div>50 + 60 = <%= util.sum(50, 60) %></div>
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>