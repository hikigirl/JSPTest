<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//이미지 업로드 처리
	String path = application.getRealPath("/pic");
	int size = 1024 * 1024 * 100; //100mb
	
	String filename = "";	 //첨부파일명
	//String orgfilename = ""; //첨부파일명 -> 다운로드때문에 만든거라 이번엔 필요없음
	
	try {
		//multipartrequest 객체 생성 = 첨부파일 처리 완료
		MultipartRequest multi = new MultipartRequest(
					request,		//원래 request
					path,			//업로드 위치
					size,			//파일크기
					"UTF-8",		//인코딩
					new DefaultFileRenamePolicy()
				);
		
		//업로드 파일명?
		//filename = multi.getFilesystemName("attach");
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	response.sendRedirect("ex17.jsp");

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
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>