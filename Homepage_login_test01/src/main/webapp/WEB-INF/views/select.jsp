<%@page import="com.multi.logintest01.MemberVO"%>
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
	<% MemberVO result = (MemberVO)request.getAttribute("result"); %>

<% if (result != null) { %>
		로그인 성공
<% }  else {%>
		로그인 실패
<% } %>
</body>
</html>