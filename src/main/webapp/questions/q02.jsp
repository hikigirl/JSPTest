<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<h1>버튼 만들기</h1>
	<form method="POST" action="q02ok.jsp">
	<table class="vertical">
		<tr>
			<th>너비(px)</th>
			<td><input type="number" name="width" value="120"></td>
		</tr>
		<tr>
			<th>높이(px)</th>
			<td><input type="number" name="height" value="30"></td>
		</tr>
		<tr>
			<th>텍스트</th>
			<td><input type="text" name="txt"></td>
		</tr>
		<tr>
			<th>배경색</th>
			<td><input type="color" name="bgcolor"></td>
		</tr>
		<tr>
			<th>글자색</th>
			<td><input type="color" name="color"></td>
		</tr>
		<tr>
			<th>글자크기(px)</th>
			<td><input type="number" name="fontSize"></td>
		</tr>
		<tr>
			<th>버튼 개수(ea)</th>
			<td><input type="number" name="count"></td>
		</tr>
		<tr>
			<th>버튼 간격</th>
			<td>
				좌우 간격: <input type="range" name="left"/><br>
				상하 간격: <input type="range" name="top"/>
			</td>
		</tr>
		<tr>
			<th>아이콘</th>
			<td>
				<label><input type="radio" name="rb" value="none" checked="checked"/> 없음</label>
				<label><input type="radio" name="rb" value="home"/> 집</label>
				<label><input type="radio" name="rb" value="pic"/> 사진</label>
				<label><input type="radio" name="rb" value="map"/> 지도</label>
				<label><input type="radio" name="rb" value="git"/> GitHub</label>
				<label><input type="radio" name="rb" value="clip"/> 클립</label>
			</td>
		</tr>
		<tr>
			<th>테두리</th>
			<td>
				<select name="border">
					<option value="no">감추기</option>
					<option value="yes">보이기</option>
				</select>
				<div id="borderoptions">
					두께(px): <input type="number" name="borderWidth"><br>
					색상: <input type="color" name="borderColor"><br>
					스타일: 
					<select name="border">
						<option value="solid">실선</option>
						<option value="dashed">쇄선</option>
						<option value="dotted">점선</option>
					</select><br>
					모서리(px): <input type="number" name="borderRadius">
				</div>
			</td>
		</tr>
	</table>
	<input type="submit" value="만들기"/>
	</form>
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		//테두리 보이기 선택하면 td 안에 추가되게끔
	</script>
</body>
</html>