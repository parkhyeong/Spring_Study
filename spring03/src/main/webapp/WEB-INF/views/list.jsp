<%@page import="com.backend.mvc03.BookDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap JS (optional) -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
<!-- ctrl + shift + M 자동 임폴트 -->
	<%
		List<BookDTO> list = (List<BookDTO>) request.getAttribute("list");
	%>

	<div class="container mt-4">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">아이디</th>
					<th scope="col">이름</th>
					<th scope="col">URL</th>
					<th scope="col">이미지</th>
					<!-- Added fourth column -->
				</tr>
			</thead>
			<tbody>
			<% for (BookDTO dto: list){%>
				<tr>
					<td><%=dto.getId()%></td>
					<td>
					<a href=one?id=<%=dto.getId() %>><%=dto.getName()%></a></td>
					<td><%=dto.getUrl()%></td>
					<td>
					<img src="resources/img/<%=dto.getImg()%>"></td>
					<!-- Added content for the fourth column -->
				</tr>
			<%}%>
				
			</tbody>
		</table>
		<a href="index.jsp">
			<button class="btn btn-primary">북마크 목록으로</button>
		</a>
	</div>
</body>
</html>