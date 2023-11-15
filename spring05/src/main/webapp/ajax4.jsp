<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$.ajax({
				url:"movie",
				data:{
					title:$('#title').val(),
					price:$('#price').val()
				},
				success:function(x){
					alert(x)
					$('#result').html(x);
				}
			})
		})
	})

</script>
</head>
<body>
영화제목: <input id="title" value="킹덤"><br>
영화관람표: <input id="price" value="1234"><br>
<button id="b1">영화 관람 확인</button>
<hr color="red">
<div id="result"></div>
</body>
</html>