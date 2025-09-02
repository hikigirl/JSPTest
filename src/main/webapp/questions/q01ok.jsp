<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//POST 방식으므로 인코딩 변경 필요
	request.setCharacterEncoding("UTF-8");
	int width 		= Integer.parseInt(request.getParameter("width"));
	int height 		= Integer.parseInt(request.getParameter("height"));
	String bgcolor 	= request.getParameter("bgcolor");
	String txt 		= request.getParameter("txt");
	int count 		= Integer.parseInt(request.getParameter("count"));
	
	System.out.printf("%s, %s, %s, %s, %s\n",width, height, bgcolor, txt, count);
	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK" />
	<style>
		.box {
			width: <%=width%>px;
			height: <%=height%>px;
			background-color: <%=bgcolor%>;
			border: 1px solid black;
			margin: 15px;
		}
	</style>
</head>
<body class="narrow">
	<h1>결과</h1>
	<% for (int i=0; i<count; i++) {%>
		<div class="box">
			<%=txt%>
		</div>
	<%
	}
	%>
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>