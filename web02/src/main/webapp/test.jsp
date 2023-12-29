<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//out.print(3/0);
	//dao.insert();
	/* int[] n = { 1, 2, 3 };
	out.print(n[3]); */
	session.setAttribute("apple", 1000);
	session.setAttribute("melon", 2000);
	Enumeration<String> names = session.getAttributeNames();
	while(names.hasMoreElements()){
		out.print(names.nextElement() + " ");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>