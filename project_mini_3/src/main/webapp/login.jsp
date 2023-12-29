<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<html>
<head>
<script type="text/javascript">
$(document).ready(function(){
	// 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
    var idkey = getCookie("idkey");
    $("#member_id").val(idkey); 
     
    // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
    if($("#member_id").val() != ""){ 
        $("#checkId").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
    }
     
    $("#checkId").change(function(){ // 체크박스에 변화가 있다면,
        if($("#checkId").is(":checked")){ // ID 저장하기 체크했을 때,
            setCookie("idkey", $("#id").val(), 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("idkey");
        }
    });
     
    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
    $("#member_id").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
        if($("#checkId").is(":checked")){ // ID 저장하기를 체크한 상태라면,
            setCookie("idkey", $("#member_id").val(), 7); // 7일 동안 쿠키 보관
        }
    });
});

// 쿠키 저장하기 
function setCookie(cookieName, value, exdays) {
	var exdate = new Date();
	exdate.setDate(exdate.getDate() + exdays);
	var cookieValue = escape(value)
			+ ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
	document.cookie = cookieName + "=" + cookieValue;
}

// 쿠키 삭제
function deleteCookie(cookieName) {
	var expireDate = new Date();
	expireDate.setDate(expireDate.getDate() - 1);
	document.cookie = cookieName + "= " + "; expires="
			+ expireDate.toGMTString();
}
 
// 쿠키 가져오기
function getCookie(cookieName) {
	cookieName = cookieName + '=';
	var cookieData = document.cookie;
	var start = cookieData.indexOf(cookieName);
	var cookieValue = '';
	if (start != -1) { // 쿠키가 존재하면
		start += cookieName.length;
		var end = cookieData.indexOf(';', start);
		if (end == -1) // 쿠키 값의 마지막 위치 인덱스 번호 설정 
			end = cookieData.length;
            console.log("end위치  : " + end);
		cookieValue = cookieData.substring(start, end);
	}
	return unescape(cookieValue);
}

</script>

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

.form-group input {
	border-radius: 20px;
}
</style>
<title>Login</title>
</head>
<body>
	<div class="container mt-5">
		<h2 class="text-center mb-4">로그인</h2>

		<form action="login" method="post">
			<div class="form-group">
				<label for="username"></label> <input type="text"
					class="form-control" id="member_id" name="member_id"
					placeholder="아이디" required>
			</div>
			<div class="form-group">
				<label for="password"></label> <input type="password"
					class="form-control" id="password" name="pw" placeholder="비밀번호"
					required>
			</div>

			<div class="logSave">
				<input type="checkbox" class="save_id" name="checkId" id="checkId">
				<label for="saveId">아이디 저장</label>
			</div>

			<div class="form-group">
				<button type="submit" class="btn btn-block"
					style="background-color: #3498D8; border-radius: 20px;">로그인</button>
			</div>
			<hr style="border-color: black;">
			<div class="text-center">
				<a class="small" href="#">아이디 찾기</a> <span class="mx-2">|</span> <a
					class="small" href="#">비밀번호 찾기</a> <span class="mx-2">|</span> <a
					class="small" href="index.jsp">회원가입</a>
			</div>
		</form>
	</div>
</body>
</html>
