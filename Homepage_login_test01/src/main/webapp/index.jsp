<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>회원가입</title>
</head>
<body>
	<!-- 상단바 -->
	<div id="top">
		<jsp:include page="header.jsp"></jsp:include>
	</div>

	<div class="container mt-5">

		<h2 class="mb-4">회원가입</h2>

		<form action="insert" method="post">
			<div class="insert">
				<label for="username" class="form-label">아이디:</label> <input
					type="text" class="form-control" id="username" name="m_id" required>
			</div>

			<div class="mb-3">
				<label for="password" class="form-label">비밀번호:</label> <input
					type="password" class="form-control" id="password" name="m_pw"
					required>
			</div>

			<div class="mb-3">
				<label for="name" class="form-label">이름:</label> <input type="text"
					class="form-control" id="name" name="m_name" required>
			</div>

			<div class="mb-3">
				<label for="email" class="form-label">이메일:</label> <input
					type="email" class="form-control" id="email" name="m_email"
					required>
			</div>

			<div class="mb-3">
				<label for="tel" class="form-label">전화번호:</label> <input type="tel"
					class="form-control" id="tel" name="m_tel" required>
			</div>


			<button type="submit" class="btn btn-primary">가입하기</button>
			<a href="home.jsp" class="btn btn-primary">Home</a>

		</form>
	</div>
</body>
</html>
