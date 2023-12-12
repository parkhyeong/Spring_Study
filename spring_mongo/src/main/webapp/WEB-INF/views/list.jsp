<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
/* Add your CSS styles here */
table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

th, td {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: left;
	background: pink;
}

th {
	background-color: yellow;
}
</style>
<table border="1" width=800>
<tr>
	<th>번호</th>
	<th>작성자</th>
	<th>내용</th>
	<th>날씨</th>
	<th>날짜</th>
</tr>
<c:forEach items="${list}" var="vo" varStatus="status">
<tr>
	<td>${status.count}</td>
	<td>${vo.name}</td>
	<td>
		<a href="one.memo?_id=${vo._id}">
			${vo.content}
		</a>
	</td>
	<td>${vo.weather}</td>
	<td>${vo.date}</td>
</tr>
</c:forEach>
</table>