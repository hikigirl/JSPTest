<%@page import="java.util.Arrays"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//POST 방식에서 인코딩 변경하는법
	request.setCharacterEncoding("UTF-8");
	

	//request.getParameter()
	
	//텍스트박스
	String txt1 = request.getParameter("txt1");
	//System.out.println(txt1 == null);	//false
	//System.out.println(txt1 == "");		//true
	
	//암호상자
	String txt2 = request.getParameter("txt2");
	
	//다중라인 텍스트박스 textarea
	String txt3 = request.getParameter("txt3");
	txt3 = txt3.replace("\r\n", "<br>"); //개행문자처리

	//체크박스
	String cb1 = request.getParameter("cb1");
	
	//체크박스들
	String cb2 = request.getParameter("cb2");
	String cb3 = request.getParameter("cb3");
	String cb4 = request.getParameter("cb4");
	
	String temp = "";
	temp += cb2 + ", ";
	temp += cb3 + ", ";
	temp += cb4;
	
	//체크박스들2
	String[] cb5 = request.getParameterValues("cb5");
	
	//라디오버튼
	String rb = request.getParameter("rb");
	
	//콤보박스
	String sel1 = request.getParameter("sel1");
	String[] sel2 = request.getParameterValues("sel2");
	
	//hidden
	String id = request.getParameter("id");
	
	String regdate = request.getParameter("regdate");
	String color = request.getParameter("color");
	
	
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
	<h2>텍스트 박스</h2>
	<div><%= txt1 %></div>
	
	<h2>암호 박스</h2>
	<div><%= txt2 %></div>
	
	<h2>다중라인 텍스트박스</h2>
	<div><%= txt3 %></div>
	
	<h2>체크박스</h2>
	<div><%= cb1 %></div>
	
	<h2>체크박스들</h2>
	<div><%= temp %></div>
	
	<h2>체크박스들2</h2>
	<div><%= Arrays.toString(cb5)%></div>
	
	<h2>라디오버튼</h2>
	<div><%= rb %></div>
	
	<h2>콤보박스</h2>
	<div><%= sel1 %></div>
	
	<h2>콤보박스 다중</h2>
	<div><%= Arrays.toString(sel2)%></div>
	
	<h2>hidden</h2>
	<div><%= id %></div>
	
	<h2>날짜</h2>
	<div><%= regdate %></div>
	
	<h2>색상</h2>
	<div><%= color %></div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>