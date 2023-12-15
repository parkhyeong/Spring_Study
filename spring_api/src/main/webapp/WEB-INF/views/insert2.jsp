<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
영화등록후 보여지는 화면입니다.!!!<br>
<img src="resources/upload/${vo.img}" width="400" height="600"><br>
영화제목은 ${vo.title}<br>
영화링크는 <a href="${vo.link}">여기를 클릭</a>
</body>
</html>