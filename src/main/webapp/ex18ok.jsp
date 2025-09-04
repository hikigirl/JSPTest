<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
/*  
	파일 업로드
	1. 파일 업로드 처리
	 - 업로드할 경로: webapp>files
	 - 최대 크기: 100MB
	 - MultipartRequest 생성 + 파일 업로드 완료
	2. 목록으로 돌아가기(ex18.jsp)

*/

	request.setCharacterEncoding("UTF-8");
	String path = application.getRealPath("/files");
	int size = 1024 * 1024 * 100; //100mb
	
	String subject = "";
	ArrayList<String> filename = new ArrayList<String>();
	ArrayList<String> orgfilename = new ArrayList<String>();
	
	try {
		
		//multipartrequest 객체 생성 = 첨부파일 처리 완료
		MultipartRequest multi = new MultipartRequest(
					request,		//원래 request
					path,			//업로드 위치
					size,			//파일크기
					"UTF-8",		//인코딩
					new DefaultFileRenamePolicy()
				);
		subject = multi.getParameter("subject");
		
		Enumeration e = multi.getFileNames();
		
		
		while (e.hasMoreElements()) {
			String file = (String)e.nextElement();
			
			filename.add(multi.getFilesystemName(file));
			orgfilename.add(multi.getOriginalFileName(file));
		}
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	response.sendRedirect("ex18.jsp");
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