<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.io.File"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
/*
	1. 대상 폴더의 파일 객체 생성(webapp>files)
	2. 폴더의 내용을 가져오기(listFiles())
	3. 파일만 출력하기(폴더 빼고)
	 - 테이블에 출력
	 - 파일명: 그대로
	 - 크기: B, KB, MB(1024 넘어가면 단위변환), 소수이하 첫째자리까지
	 - 수정된날짜: 2025-09-04 (목) 오후 4:31
	 - 정렬: 파일명 기준 오름차순
	4. 파일명을 클릭하면 다운로드(download.jsp 활용)
	5. 삭제 아이콘 클릭시 ex18del.jsp로 이동
*/

	
	String path = application.getRealPath("/files");
	//System.out.println(path);
	//C:\code\server\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\JSPTest\files
	
	File dir = new File(path);
	File[] list = dir.listFiles(); //폴더의 내용을 가져오기
	
	//Arrays.sort(list, (o1, o2) -> Long.compare(o1.lastModified(), o2.lastModified()));
	
	//String끼리의 비교는 compareTo 메서드를 사용
	Arrays.sort(list, (o1, o2) -> o1.getName().compareTo(o2.getName()));
	//System.out.println(Arrays.toString(list));
	
%>


<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK" />
	<style>
		#tbl1 th:nth-child(1) { width: auto;}
		#tbl1 th:nth-child(2) { width: 100px; }
		#tbl1 th:nth-child(3) { width: 220px; }
		#tbl1 th:nth-child(4) { width: 40px; }
		#tbl1 td:nth-child(1) { text-align: left; }
		#tbl1 td:nth-child(4) { padding-top: 8px; padding-bottom: 2px; }
		
	</style>
</head>
<body>
	<!-- webapp > files 폴더 관리 -->
	<h1>자료실 <small>탐색기</small></h1>
	<table id="tbl1">
		<tr>
			<th>파일명</th>
			<th>크기</th>
			<th>수정한 날짜</th>
			<th>삭제</th>
		</tr>
		
		<!-- 디렉토리가 아닐 경우 표에 출력 -->
		<% 
		for (File file : list) {
			if(file.isDirectory()==false) {
				Date lastModifiedDate = new Date(file.lastModified());
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd (E) a h:mm", Locale.KOREA);
				String lastModified = sdf.format(lastModifiedDate);
				
				long fileSize = file.length();
				String result = "";
				if (fileSize < 1024) {
					result = fileSize + "B";
				} else if (fileSize < (1024 * 1024)) {
					double convertedSize = (double) fileSize/1024;
					result = String.format("%.1fKB", convertedSize);
				} else if (fileSize < (1024 * 1024 * 1024)) {
					double convertedSize = (double) fileSize/1024/1024;
					result = String.format("%.1fMB", convertedSize);
				}
		%>
		<tr>
			<td>
			<!-- 다운로드 구현해야됨 -->
				<%= file.getName() %>
			</td>
			<td><%= result %></td>
			<td><%= lastModified %></td>
			<td><span class="material-symbols-outlined">delete</span></td>
		</tr>
		<% }} %>
		
		
	</table>
	<hr>
	
	<form method="post" action="ex18ok.jsp" enctype="multipart/form-data">
		<div>파일: <input type="file" name="attach" required></div>
		<div><button class="attach">업로드</button></div>
		
	</form>
	
	
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>