<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head></head>

<body>
	
	<hr color="red">
	전체 게시물 수 : ${count}개<br>
	전체 페이지 수 : ${pages}개<br>
	<%
		int pages = (int) request.getAttribute("pages");
		for(int p =1; p<=pages; p++){
	%>
		<a href="list4?page=<%=p%>"><button style="background: pink;"><%=p%></button></a>
	<%	
		}
	%>
	
	<hr color="red">

	<table border="1">
		<tr bgcolor="lime">
			<td>row_id</td>
			<td>id</td>
			<td>email</td>
			<td>car</td>

		</tr>
		<c:forEach items="${list}" var="vo">
			<tr>
				<td>${vo.row_no}</td>
				<td>${vo.id}</td>
				<td>${vo.email}</td>
				<td>${vo.car}</td>
			</tr>
		</c:forEach>
	</table>
</body>

</html>
