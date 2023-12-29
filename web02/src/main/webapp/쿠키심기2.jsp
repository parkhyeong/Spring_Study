<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Cookie c1 = new Cookie("like", "운동"); //이름+값
    	Cookie c2 = new Cookie("field", "축구"); //이름+값
    	response.addCookie(c1);
    	response.addCookie(c2);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>브라우저에 쿠키심기 완료!</h3>
<a href="쿠키보기.jsp">쿠키보기</a>
</body>
</html>