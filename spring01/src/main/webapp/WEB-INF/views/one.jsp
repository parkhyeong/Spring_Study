<%@page import="com.backend.mvc01.BbsDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
게시판 id: ${bag.getId()}<br>
게시판 title: ${bag.getTitle()}<br>
게시판 content: ${ bag.getContent()}<br>
게시판 writer: ${bag.getWriter()}

</body>
</html>