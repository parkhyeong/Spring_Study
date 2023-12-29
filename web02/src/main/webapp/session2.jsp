<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	int t = (int)session.getAttribute("tennis");//int <--(int)-- Obejct 
    	int s = (int)session.getAttribute("swim");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
테니스와 수영 둘다 수강하면 합계는 <%= t + s %>원
</body>
</html>