<%@page import="java.util.Calendar"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK" />
	<style>
		div > a {display: block;}
	</style>
</head>
<body>
	<h1>세션</h1>
	<div>
		<a href="ex14_2_session_set.jsp">세션값 저장하기</a>
		<a href="ex14_3_session_del.jsp">세션값 삭제하기</a>
		<a href="ex14_4_session_reset.jsp">세션 초기화</a>
		<a href="ex14_5_session_interval.jsp">세션 만료시간 설정</a>
	</div>
	<h2>세션 정보</h2>
	<div>
		Session ID: <%= session.getId() %>
	</div>
	<div>
		Session CreationTime:
		<%
			Calendar time = Calendar.getInstance();
			time.setTimeInMillis(session.getCreationTime());
			out.println(String.format("%tF %tT", time, time));
			
		%>
	</div>
	<div>
		Session Max Inactive Interval: <%= session.getMaxInactiveInterval() %>
	</div>
	<div>
		Session isNew: <%= session.isNew() %>
	</div>
	<div>
		Session Data: <%= session.getAttribute("data") %>
	</div>
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>