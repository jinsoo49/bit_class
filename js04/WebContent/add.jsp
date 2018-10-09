<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			h1, h1+form{
				width: 600px;
			}
			h1, h1+form, form>button{
				margin: 20px auto;
			}
			form>div{
				color: red;
				font-style: italic;
				font-size: 8pt;
			}
			form label{
				color:black;
				font-style:normal;
				font-size:12pt;
				display: inline-block;
				width: 100px;
				background-color: gray;
			}
		</style>
	</head>
	<body>
		<div>
			<h1>입력페이지</h1>
			<form action="insert.jsp" onsubmit="return inputCheck();">
				<div>
					<label for="name">이름</label>
					<input type="text" name="name" id="name"/>
				</div>
				<div>
					<label for="pay">금액</label>
					<input type="number" min="0" value="0" name="pay" id="pay"/>
				</div>
				<div>
					<button type="submit">입력</button>
				</div>
			</form>
		</div>
		<script type="text/javascript">
			var form = document.firstElementChild.lastElementChild.firstElementChild.lastElementChild;
			var inputName = form.firstElementChild.lastElementChild;
			var inputPay = form.firstElementChild.nextElementSibling.lastElementChild;
			
			/*
				errmsg
				1. 빈값은 허용되지 않습니다
				2. name - 대문자, 소문자, 숫자조합으로 입력하시오.
				3. pay - 숫자를 입력하세요
			
			*/
			var nameChk1 = false;
			var nameChk2 = false;
			var payChk1 = false;
			var payChk2 = false;
			var msgNull = document.createTextNode('빈값은 허용되지 않습니다');
			var msgAlpa = document.createTextNode('대문자, 소문자, 숫자 조합으로 입력하시오');
			var msgSu = document.createTextNode('숫자를 입력하시오.');
			
			function inputCheck(){
				// console.log('name length : '+inputName.value.length);
				// console.log('pay length : '+inputPay.value.length);
				
				// var result = suCheck(inputName.value.charAt(0));
				// var result = alpaCheck(inputName.value);
				// console.log('result : '+result);
				
				if(nameChk1){
					nameChk1=false;
					inputName.parentElement.removeChild(msgNull);
				}
				if(nameChk2){
					nameChk2=false;
					inputName.parentElement.removeChild(msgAlpa);					
				}
				if(payChk1){
					payChk1 = false;
					inputPay.parentElement.removeChild(msgNull);
				}
				if(payChk2){
					payChk2 = false;
					inputPay.parentElement.removeChild(msgSu);
				}
				var val1 = inputName.value;
				var val2 = inputPay.value;
				if(val1.length==0){
					inputName.parentElement.appendChild(msgNull);
					nameChk1 = true;
					return false;
				}
				if(!alpaCheck(val1)){
					inputName.parentElement.appendChild(msgAlpa);
					nameChk2 = true;
					return false;
				}
				if(val2.length==0){
					payChk1 = true;
					inputPay.parentElement.appendChild(msgNull);
					return false;
				}
				if(!suCheck(val2)){
					inputPay.parentElement.appendChild(msgSu);
					payChk1 = false;
					return false;
				}				
				return true;
			}
			
			function alpaCheck(a){
				// 대문자 소문자 조합 숫자
				
				var upper = false;
				var lower = false;
				var digital = false;
				for(var i=0; i<a.length; i++){
					var temp = a.charCodeAt(i);
					if(temp>64&&temp<91)upper=true;				// 65~90
					else if(temp>96&&temp<123)lower=true;		// 97~122
					else if(temp>47&&temp<58)digital=true;		// 48~57
				}
				if(upper && lower && digital)return true;
				else return false;
			}
			
			function suCheck(a){
				var pay = a.value;
				for(var i=0; i<a.length; i++){
					console.log(a.charCodeAt(i));				// 아스키코드 48~57
					if(a.charCodeAt(i) < 48 || a.charCodeAt(i) > 57){
						return false;
					}
				}
				if(a.length>4){
					return false;
				}
				return true;
			}
			
		</script>
	</body>
</html>