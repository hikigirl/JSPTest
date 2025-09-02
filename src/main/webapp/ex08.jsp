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
<body class="narrow">
	<h1>폼 입력 태그</h1>
	<form method="post" action="ex08ok.jsp">
	<table class="vertical">
		<tr>
			<th>텍스트박스</th>
			<td><input type="text" name="txt1" /></td>
		</tr>
		<tr>
			<th>암호상자</th>
			<td><input type="password" name="txt2" /></td>
		</tr>
		<tr>
			<th>텍스트박스<br>(다중라인)</th>
			<td><textarea name="txt3"></textarea></td>
		</tr>
		<tr>
			<th>체크박스</th>
			<td><input type="checkbox" name="cb1" /></td>
		</tr>
		<tr>
			<th>체크박스들</th>
			<td>
				취미 선택(복수선택가능)<br>
				<label><input type="checkbox" name="cb2" value="독서">독서</label>
				<label><input type="checkbox" name="cb3" value="운동">운동</label>
				<label><input type="checkbox" name="cb4" value="코딩">코딩</label>
			</td>
		</tr>
		<tr>
			<th>체크박스들2</th>
			<td>
				취미 선택(복수선택가능)<br>
				<label><input type="checkbox" name="cb5" value="독서">독서</label>
				<label><input type="checkbox" name="cb5" value="운동">운동</label>
				<label><input type="checkbox" name="cb5" value="코딩">코딩</label>
			</td>
		</tr>
		<tr>
			<th>라디오버튼</th>
			<td>
				성별 선택<br>
				<label><input type="radio" name="rb" value="M" checked>남자</label>
				<label><input type="radio" name="rb" value="F">여자</label>
			</td>
		</tr>
		<tr>
			<th>콤보박스</th>
			<td>
				<select name="sel1">
					<option value="dog">강아지</option>
					<option value="cat">고양이</option>
					<option value="chick">병아리</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>콤보박스<br>(다중)</th>
			<td>
				<select name="sel2" multiple>
					<option value="dog">강아지</option>
					<option value="cat">고양이</option>
					<option value="chick">병아리</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>히든 태그</th>
			<td><input type="hidden" name="id" value="hong"></td>
		</tr>
		<tr>
			<th>날짜</th>
			<td><input type="date" name="regdate"></td>
		</tr>
		<tr>
			<th>색상</th>
			<td><input type="color" name="color"></td>
		</tr>
		<tr>
			<th>사용자 정의 컨트롤(JavaScript, jQuery 등..)</th>
			<td><img src="images/catty01.png" id="cat1"></td>
		</tr>
		<tr>
			<th></th>
			<td></td>
		</tr>
		
	</table>
	<div><input type="submit" value="보내기" /></div>
	<input type="hidden" name="left">
	<input type="hidden" name="top">
	
	</form>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://code.jquery.com/ui/1.14.1/jquery-ui.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		$('#cat1').draggable({
			stop: function(event, ui) {
				$('input[name=left]').val(ui.position.left);
				$('input[name=top]').val(ui.position.top);
			}
		});
	</script>
</body>
</html>