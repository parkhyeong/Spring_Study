<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Cookie c1 = new Cookie("name", "hong");
    	c1.setMaxAge(0);
    	response.addCookie(c1);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>name쿠키가 삭제되었습니다.!</h3>
<a href="쿠키보기.jsp">쿠키보기</a>
</body>
</html>