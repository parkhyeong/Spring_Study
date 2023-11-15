<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.7.1.js">
<script type="text/javascript">
	//jquery는 버튼하나당 함수 하나!
	//특정한 이벤트가 발생하기를 기다렸다가
	//이벤트가 발생하면
	//자동으로 함수를 실행시켜주는 방식의 함수를 사용함.
	//콜백함수
	//bodt를 먼저 브라우저가 읽도록 하는 코드를 넣어주어야함.
	$(function() { 
		$('#b1').click(function(){
			$.ajax({
				url:"test",
				success: function(x) { //브라우저가 http통신 받아옴
					alert("ajax통신결과>> "+ x)
				} //success
				
			}) //url, success
		}) //b1
	}) //document.ready()
</script>
</head>
<body>
	<button id="b1">컴퓨터 구매 항목 확인</button>
	<hr color="red">
	<div id="result">ajax통신 결과 들어가는 곳.</div>
</body>
</html>