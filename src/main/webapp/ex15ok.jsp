<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	
	//<form enctype="multipart/form-data">
	//request의 일부 기능이 동작하지 않음 → request.getParameter(), request.getParameterValues()
	//String txt = request.getParameter("txt");
	
	//cos.jar -> MultipartRequest 클래스가 기존의 request를 대신한다.
	
	//첨부파일 저장할 경로 지정
	//String path = "C:\\code\\server\\JSPTest\\src\\main\\webapp\\files"; //설계도...
	
	
	//C:\code\server\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\JSPTest\files
	String path = application.getRealPath("/files");
	//System.out.println(path);
	
	int size = 1024 * 1024 * 100; //100mb
	String txt = "";
	String filename = "";	 //첨부파일명
	String orgfilename = ""; //첨부파일명
	
	
	try {
		
		//multipartrequest 객체 생성 = 첨부파일 처리 완료
		MultipartRequest multi = new MultipartRequest(
					request,		//원래 request
					path,			//업로드 위치
					size,			//파일크기
					"UTF-8",		//인코딩
					new DefaultFileRenamePolicy()
				);
		
		//문자열 전송
		txt = multi.getParameter("txt");
		//multi.getParameterValues("");
		
		//업로드 파일명?
		filename = multi.getFilesystemName("attach");
		orgfilename = multi.getOriginalFileName("attach");
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	

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
	<div>txt: <%= txt %></div>
	<div>filename: <%= filename %></div>
	<div>orgfilename: <%= orgfilename %></div>
	
	<hr>
	<h1>파일 다운로드</h1>
	<!-- 방법1 -->
	<div><a href="/jsp/files/<%= filename %>"><%= orgfilename %></a></div>
	
	<!-- 방법2 -->
	<div><a href="/jsp/files/<%= filename %>" download><%= orgfilename %></a></div>
	
	<div><a href="ex14_1_session_main.jsp" download>세션 예제</a></div>
	
	<!-- 방법3 직접구현한다(네트워크 입출력을 알아야됨..) -->
	<div>
		<a href="download.jsp?filename=<%= filename %>&orgfilename=<%= orgfilename %>">
			<%= orgfilename %>
		</a>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>