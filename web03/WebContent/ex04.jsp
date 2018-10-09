<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h1>전달 페이지</h1>
		<form action="ex05.jsp">
			<table>
				<tr>
					<td>텍스트필드0</td><!-- Hidden >> 숨기기 , Readonly >> 읽기전용 -->
					<td><input type = "hidden" name = "msg" readonly = "readonly"></td>
				</tr>
				<tr>
					<td>텍스트필드1</td>
					<td><input type = "text" name = "id"></td>
				</tr>
				<tr>
					<td>텍스트필드2</td>
					<td><input type = "password" name = "pw"></td>
				</tr>
				<tr>
					<td>리스트</td>
					<td>
						<select name = "param3" multiple = "multiple">
							<!-- value값을 지정 안할시 default값(item1)전송 -->
							<optgroup label="1~2">
								<option value = "i1">item1</option>
								<option value = "i2">item2</option>
								<option value = "i3" selected = "selected">item3</option>
								<option value = "i4">item4</option>
							</optgroup>
						</select>
					</td>
				</tr>				
				
				<!-- 라디오박스 -->
				<tr>
					<td>라디오박스</td>
					<td><!-- 무엇을 선택했는가? >> value값 
						name을 일치시키면 그룹화 -->
						<input type="radio" name="ra" value="ra1">radio1
						<input type="radio" name="ra" value="ra2" checked = "checked">radio2<!-- 기본체크 -->
						<input type="radio" name="ra" value="ra3">radio3
						<input type="radio" name="ra" value="ra4">radio4
					</td>
				</tr>
				<!-- 체크박스 -->
				<tr>
					<td>체크박스</td>
					<td>
						<input type="checkbox" name="chk" value="chk1">checkbox1
						<input type="checkbox" name="chk" value="chk2">checkbox2
						<input type="checkbox" name="chk" value="chk3">checkbox3
						<input type="checkbox" name="chk" value="chk4">checkbox4
					</td>
				</tr>
				<!-- 텍스트 -->
				<tr>
					<!-- textarea - 열자마자 닫지 않을시 값이 들어감 -->
					<td>텍스트</td>
					<td><textarea name="content" rows="7" cols=""></textarea></td>
				</tr>
				<tr>
					<!-- submit과 reset은 페이지에 한번만 사용가능 -->
					<td colspan = 2 align = "center">
						<input type = "submit" value = "전송">
					</td>
					<td colspan = 2 align = "center">
						<input type = "button" value = "버튼">
					</td>
					<td colspan = 2 align = "center">
						<input type = "reset" value = "취소">
					</td>
				</tr>
				
			</table>
		</form>
	</body>
</html>