<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //1.쿠키를 만들기
    Cookie c1 = new Cookie("apple", "1000");
    Cookie c2 = new Cookie("melon", "2000");
    Cookie c3 = new Cookie("ice", "3000");
    //2.쿠키심기 
    response.addCookie(c1);
    response.addCookie(c2);
    response.addCookie(c3);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="cookie2.jsp">쿠키보기</a>
</body>
</html>