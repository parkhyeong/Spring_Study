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

	let idok = 0
	let passok = 0
	let nameok = 0
	let nickok = 0
	let emailok = 0
	let tel = 0

	function passConfirm() {

		let password = $('#password'); //비밀번호 
		let passwordConfirm = $('#passwordConfirm'); //비밀번호 확인 값
		let confrimMsg = $('#confirmMsg'); //확인 메세지
		var correctColor = "#00ff00"; //맞았을 때 출력되는 색깔.
		var wrongColor = "#ff0000"; //틀렸을 때 출력되는 색깔

		if (password.val().trim() == "") {
			confirmMsg.style.color = wrongColor;
			confirmMsg.innerHTML = "비밀번호 공백";
			passok = 0
		} else if (password.val() == passwordConfirm.val()) {
			confirmMsg.style.color = correctColor;
			confirmMsg.innerHTML = "비밀번호 일치";
			passok = 1
		} else {
			confirmMsg.style.color = wrongColor;
			confirmMsg.innerHTML = "비밀번호 불일치";
			passok = 0
		}
		Connected()
	}

	function idConfirm() {
		console.log("idConfirm 호출")
		let member_id = $('#member_id').val();
		let idconfrimMsg = $('#idconfirmMsg');
		var correctColor = "#00ff00"; //맞았을 때 출력되는 색깔.
		var wrongColor = "#ff0000"; //틀렸을 때 출력되는 색깔

		console.log("아이디 입력 값 : " + member_id)
		if (member_id.trim() != "") {
			$.ajax({
				type : "post",/* 전송 방식 */
				url : "idConfirm", /* 컨트롤러 사용할 때. 내가 보낼 데이터의 주소. */
				data : {
					"member_id" : member_id
				},

				success : function(data) {
					if (data == "1") {
						idconfirmMsg.style.color = correctColor;
						idconfirmMsg.innerHTML = "&nbsp;&nbsp;사용 가능";
						idok = 1
						Connected()
					} else { //ajax가 제대로 안됐을 때 .
						idconfirmMsg.style.color = wrongColor;
						idconfirmMsg.innerHTML = "&nbsp;&nbsp;사용 불가";
						idok = 0 //불가 
						Connected()
					}
				},
				error : function() {
					idconfirmMsg.style.color = wrongColor;
					idconfirmMsg.innerHTML = "&nbsp;&nbsp;오류발생";
					idok = 0
					Connected()
				}
			});
		} else {
			idconfirmMsg.style.color = wrongColor;
			idconfirmMsg.innerHTML = "&nbsp;&nbsp;사용 불가";
			idok = 0
		}
		Connected()
	}

	function nicknameConfirm() {
		console.log("nicknameConfirm 호출")
		let nickname = $('#nickname').val();
		let idconfrimMsg = $('#nickconfirmMsg');
		var correctColor = "#00ff00"; //맞았을 때 출력되는 색깔.
		var wrongColor = "#ff0000"; //틀렸을 때 출력되는 색깔
		console.log("닉네임 입력 값 : " + nickname)
		
		if (nickname.trim() != "") {
			$.ajax({
				type : "post",/* 전송 방식 */
				url : "nicknameConfirm", 
				data : {
					"nickname" : nickname
				},

				dataType : "text", 
				success : function(data) {
					if (data == "1") {
						nickconfirmMsg.style.color = correctColor;
						nickconfirmMsg.innerHTML = "&nbsp;&nbsp;사용 가능";
						nickok = 1
						Connected()
					} else { //ajax가 제대로 안됐을 때 .
						nickconfirmMsg.style.color = wrongColor;
						nickconfirmMsg.innerHTML = "&nbsp;&nbsp;사용 불가";
						nickok = 0
						Connected()
					}
				},
				error : function() {
					nickconfirmMsg.innerHTML = "&nbsp;&nbsp;오류발생";
					nickok = 0
					Connected()
				}
			});
		} else {
			nickconfirmMsg.style.color = wrongColor;
			nickconfirmMsg.innerHTML = "&nbsp;&nbsp;사용 불가";
			nickok = 0
		}
		Connected()
	}
	
	function nameConfirm(){
		if ($('#name').val().trim() != "") {
			nameok=1
		}else{
			nameok=0
		}
		Connected()
	}
	
	function emailConfirm(){
		if ($('#email').val().trim() != "") {
			emailok=1
		}else{
			emailok=0
		}
		Connected()
	}
	
	function telConfirm(){
		if ($('#tel').val().trim() != "") {
			telok=1
		}else{
			telok=0
		}
		Connected()
	}

	function Connected() { //연결 여부에 따라 설정 
		if (idok == 1 && passok == 1 && nickok == 1 && nameok ==1 && emailok==1 && telok==1 ) {
			document.getElementById('joinbutton').disabled = false;
		} else {
			document.getElementById('joinbutton').disabled = true;
		}
	}
	
</script>

<title>회원가입</title>
</head>
<body>
	<div class="container mt-5">

		<h2 class="text-center mb-4">회원가입</h2>

		<form action="insert" method="post" accept-charset="utf-8">

			<div class="insert mb-3">
				<label for="username" class="form-label">아이디</label> <span
					id="idconfirmMsg"></span> <input type="text" class="form-control"
					id="member_id" name="member_id" onkeyup="idConfirm()"
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
					class="form-control" id="name" name="name" onkeyup="nameConfirm()"required>
			</div>

			<div class="mb-3">
				<label for="tel" class="form-label">닉네임</label> <span
					id="nickconfirmMsg"></span> <input type="text" class="form-control"
					id="nickname" name="nickname" onkeyup="nicknameConfirm()" required>
			</div>

			<div class="mb-3">
				<label for="email" class="form-label">이메일</label><input type="email"
					class="form-control" id="email" name="email"
					placeholder="sample@email.com" onkeyup="emailConfirm()" required>
			</div>

			<div class="mb-3">
				<label for="tel" class="form-label">전화번호</label><input type="tel"
					class="form-control" id="tel" name="tel"
					placeholder="010-0000-0000" onkeyup="telConfirm()" required>
			</div>

			<div class="form-group row mb-3">
				<div class="col-sm-12">
					<button type="submit" class="btn btn-block"
						style="background-color: #3498D8; border-radius: 20px;"
						id="joinbutton" disabled>가입하기</button>
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
