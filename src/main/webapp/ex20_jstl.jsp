<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>


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
	<h1>JSTL</h1>
	<h2>변수 선언</h2>
	<%
		int a=10; //지역변수
		pageContext.setAttribute("b", 20); //pageContext 변수 b
		request.setAttribute("c", 30);	//request 변수 c
	%>
	
	<!-- <namespace:태그명> </namespace:태그명> -->
	<c:set var="d" value="40"/><!-- JSTL 변수 == pageContext 변수 -->
	<%-- <div>d: <%= d %></div> 컴파일 에러--%>
	<div>d: ${d}</div>
	<div>d: ${pageScope.d}</div>
	<div>d: ${requestScope.d}</div>
	<div>d: ${sesstionScope.d}</div>
	<div>d: ${applicationScope.d}</div>
	
	<h2>변수 수정하기</h2>
	<c:set var="d" value="50" />
	<div>d: ${d}</div>
	
	<h2>변수 삭제하기</h2>
	<div>변수도 결국 컬렉션의 일부이므로 삭제하는 것이 가능하다.</div>
	<c:remove var="d"/>
	<div>d: ${d}</div>
	<div>d == empty?: ${empty d}</div>
	
	<hr />
	<h2>조건문</h2>
	<c:set var="num" value="6" />
	
	<!-- 조건문에 사용할 때에도 EL로 꺼내서 써야한다 -->
	<c:if test="${num > 0}">
		<div>${num}은 양수입니다.</div>
	</c:if>
	<!-- else if, else절이 없고 if문에 반대 조건을 걸어서 else절처럼 사용한다. -->
	<c:if test="${num <= 0}">
		<div>${num}은 양수가 아닙니다.</div>
	</c:if>
	
	<h2>조건문(다중if문)</h2>
	<div>
	<c:choose>
		<c:when test="${num > 0}">양수</c:when>
		<c:when test="${num < 0}">음수</c:when>
		<c:otherwise>0</c:otherwise>
	</c:choose>
	</div>
	
	<h2>반복문(일반for문/향상된 for문)</h2>
	<h3>일반for문</h3>
	<% for (int i=1; i<=10; i++) { %>
		<div>숫자: <%= i %></div>
	<% } %>
	<br />
	<c:forEach var="i" begin="1" end="10" step="1">
		<div>숫자: ${i}</div>
	</c:forEach>
	
	<h3>향상된for문</h3>
	<% 
		String[] names = {"홍길동", "아무개", "강아지", "고양이", "거북이"}; 
		pageContext.setAttribute("names", names); //내장객체에 배열을 넣어줘야 사용 가능해지므로 필수적인 과정임
	%>
	<c:forEach var="name" items="${names}">
		<div>이름: ${name}</div>
	</c:forEach>
	<br />
	<table>
		<tr>
			<th>이름</th>
			<th>인덱스</th>
			<th>카운트</th>
			<th>status.current</th>
			<th>status.first</th>
			<th>status.last</th>
		</tr>
		<c:forEach var="name" items="${names}" varStatus="status">
		<tr>
			<td>${name}</td>
			<td>${status.index}</td>
			<td>${status.count}</td>
			<td>${status.current}</td>
			<td>${status.first}</td>
			<td>${status.last}</td>
		</tr>
		</c:forEach>
	</table>
	<br />
	
	<c:forTokens items="서울,인천,부산,광주,제주,독도" delims="," var="city">
		<div>${city}</div>
	</c:forTokens>
	<hr />
	<h2>출력문</h2>
	<div>안녕하세요. <b>홍길동</b>입니다.</div>
	<br>
	<c:set var="txt" value="안녕하세요. <b>홍길동</b>입니다." />
	<div>${txt}</div>
	<div><c:out value="${txt}"></c:out></div>
	<br />
	<div>${txt.replace("<", "&lt;").replace(">", "&gt;")}</div>
	<div><c:out value="${txt}" escapeXml="true"></c:out></div>
	<div><c:out value="${txt}" escapeXml="false"></c:out></div>
	<hr />
	<h2>링크 만들기</h2>
	<div><a href="ex20.jsp?name=hong&age=20&gender=m">페이지 이동하기</a></div>
	
	<c:url var="url1" value="ex20.jsp">
		<c:param name="name" value="hong"/>
		<c:param name="age" value="20"/>
		<c:param name="gender" value="m"/>
	</c:url>
	<div><a href="${url1}">페이지 이동하기(JSTL)</a></div>
	<hr />
	<h2>이동하기</h2>
	
	<%-- <c:redirect url="ex19_el.jsp" /> --%>
	
	<hr />
	<h2>형식문자열</h2>
	<c:set var="price" value="1234567" />
	<div>가격: ${price}원</div>
	<div>가격: <fmt:formatNumber value="${price}"/>원</div>
	
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>