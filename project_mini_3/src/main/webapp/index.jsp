<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%><br>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
body {
	background-color: #3498D8;
	margin: 0;
}

.container {
	background-color: #ffffff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.mb-3 input {
	border-radius: 20px;
}
</style>

<script type="text/javascript">
	/* 자바 스크립트 함수 선언(비밀번호 확인) */

	function passConfirm() {
		/* 비밀번호, 비밀번호 확인 입력창에 입력된 값을 비교해서 같다면 비밀번호 일치, 그렇지 않으면 불일치 라는 텍스트 출력.*/
		/* document : 현재 문서를 의미함. 작성되고 있는 문서를 뜻함. */
		/* getElementByID('아이디') : 아이디에 적힌 값을 가진 id의 value를 get을 해서 password 변수 넣기 */
		var password = document.getElementById('password'); //비밀번호 
		var passwordConfirm = document.getElementById('passwordConfirm'); //비밀번호 확인 값
		var confrimMsg = document.getElementById('confirmMsg'); //확인 메세지
		var correctColor = "#00ff00"; //맞았을 때 출력되는 색깔.
		var wrongColor = "#ff0000"; //틀렸을 때 출력되는 색깔

		if (password.value == passwordConfirm.value) {//password 변수의 값과 passwordConfirm 변수의 값과 동일하다.
			confirmMsg.style.color = correctColor;/* span 태그의 ID(confirmMsg) 사용  */
			confirmMsg.innerHTML = "비밀번호 일치";/* innerHTML : HTML 내부에 추가적인 내용을 넣을 때 사용하는 것. */
		} else {
			confirmMsg.style.color = wrongColor;
			confirmMsg.innerHTML = "비밀번호 불일치";
		}
	}

	function idOverlap() {
		console.log("idOverlap 호출")
		let member_id = document.getElementById('username').value;
		console.log("아이디 입력 값 : " + member_id)
		$.ajax({
			type : "post",/* 전송 방식 */
			url : "idOverlap", /* 컨트롤러 사용할 때. 내가 보낼 데이터의 주소. */
			data : {
				"member_id" : member_id
			},
			/* JSON형식 안에 JSON 형식으로 표현한 데이터. 
			"파라미터 이름" : 폼태그에 적은 NAME 값.ID입력창의 NAME값.value 여러 개도 가능
			data :{	"id" : joinForm.id.value, 
			"id1" : joinForm.password.value}, 이렇게도 사용 가능.					
			 */
			dataType : "text", /* text, xml, html, script, json, jsonp 가능 */
			//정상적인 통신을 했다면 function은 백엔드 단에서 데이터를 처리.
			success : function(data) {
				if (data == "1" && member_id.trim() != "") {
					alert("이 아이디는 사용 가능합니다.");
				} else { //ajax가 제대로 안됐을 때 .
					alert("이 아이디는 사용  불가능합니다.");
				}
			},
			error : function() {
				alert("아이디 중복 확인 ajax 실행 실패");
			}
		});

	}

	function nicknameOverlap() {
		console.log("nicknameOverlap 호출")
		let nickname = document.getElementById('nickname').value;
		console.log("닉네임 입력 값 : " + nickname)
		$.ajax({
			type : "post",/* 전송 방식 */
			url : "nicknameOverlap", /* 컨트롤러 사용할 때. 내가 보낼 데이터의 주소. */
			data : {
				"nickname" : nickname
			},
			/* JSON형식 안에 JSON 형식으로 표현한 데이터. 
			"파라미터 이름" : 폼태그에 적은 NAME 값.ID입력창의 NAME값.value 여러 개도 가능
			data :{	"id" : joinForm.id.value, 
			"id1" : joinForm.password.value}, 이렇게도 사용 가능.					
			 */
			dataType : "text", /* text, xml, html, script, json, jsonp 가능 */
			//정상적인 통신을 했다면 function은 백엔드 단에서 데이터를 처리.
			success : function(data) {
				if (data == "1" && nickname.trim() != "") {
					alert("이 닉네임은 사용 가능합니다.");
				} else { //ajax가 제대로 안됐을 때 .
					alert("이 닉네임은 사용  불가능합니다.");
				}
			},
			error : function() {
				alert("닉네임 중복 확인 ajax 실행 실패");
			}
		});
	}
</script>

<title>회원가입</title>
</head>
<body>
	<div class="container mt-5">

		<h2 class="text-center mb-4">회원가입</h2>

		<form action="insert" method="post" accept-charset="utf-8">

			<div class="insert mb-3">
				<label for="username" class="form-label">아이디</label> <input
					type="button" onclick="idOverlap()" value="중복확인" /> <input
					type="text" class="form-control" id="username" name="member_id"
					placeholder="소문자, 숫자 6~15자 이내" required>

			</div>

			<div class="form-row mb-3">
				<div class="col">
					<label for="password" class="form-label">비밀번호</label> <input
						type="password" class="form-control" id="password" name="pw"
						onkeyup="passConfirm()"
						placeholder="대소문자, 숫자, 특수문자(~'!@#$%\^&*()-+=) 8~20자 이내" required>
				</div>
				<div class="col">
					<label for="confirmPassword" class="form-label"">비밀번호 확인</label> <input
						type="password" class="form-control" id="passwordConfirm"
						onkeyup="passConfirm()" name="confirmPassword" required> <span
						id="confirmMsg"></span>
				</div>
			</div>

			<div class="mb-3">
				<label for="name" class="form-label">이름</label><input type="text"
					class="form-control" id="name" name="name" required>
			</div>

			<div class="mb-3">
				<label for="tel" class="form-label">닉네임</label>
				<input
					type="button" onclick="nicknameOverlap()" value="중복확인" />
				<input type="text"
					class="form-control" id="nickname" name="nickname" required>
			</div>

			<div class="mb-3">
				<label for="email" class="form-label">이메일</label><input type="email"
					class="form-control" id="email" name="email"
					placeholder="sample@email.com" required>
			</div>

			<div class="mb-3">
				<label for="tel" class="form-label">전화번호</label><input type="tel"
					class="form-control" id="tel" name="tel"
					placeholder="010-0000-0000" required>
			</div>

			<div class="form-group row mb-3">
				<div class="col-sm-12">
					<button type="submit" class="btn btn-block"
						style="background-color: #3498D8; border-radius: 20px;">가입하기</button>
				</div>
			</div>
			<hr style="border-color: black;">
			<div class="text-center">
				<a class="small" href="login.jsp">이미 계정이 있나요? 로그인!</a>
			</div>
		</form>
	</div>

</body>
</html>
