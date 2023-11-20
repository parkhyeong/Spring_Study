<%@page import="com.backend.mvc01.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	ArrayList<ProductDTO> list = (ArrayList<ProductDTO>)request.getAttribute("list");

%>
<table border="1">

<tr>
	<td width=150>제품id</td>
	<td width=150>제품title</td>
	<td width=150>제품img</td>
</tr>

<% for(ProductDTO bag: list){ %>
<tr bgcolor="lightblue">
	<td><%= bag.getId() %></td>
	<td>
		<a href="one2?id=<%= bag.getId() %>"><%= bag.getTitle() %></a>
	</td>
	<td>
		<img src="resources/img/<%= bag.getImg() %>" width="100" height="50">
	</td>
</tr>

<%} %>
</table>
</body>
<c:forEach items="${list}" var="bag" >
	<a href="one2?id=${bag.id()}">${bag,title}</a><br>
	<img src="resources/img/${bag.img} ">
</c:forEach>
</html>