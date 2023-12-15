<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
	<% int result = (int) request.getAttribute("result"); %>

<% if (result == 1) { %>
		회원가입 성공
<% }  else {%>
		회원가입 실패
<% } %>
</body>
</html>