<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>Login</title>
</head>
<body>
	<!-- 상단바 -->
	<div id="top">
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	
    <div class="container mt-5">
        <h2 class="mb-4">로그인</h2>

        <form action="select" method="post">
            <div class="form-group">
                <label for="username">아이디:</label>
                <input type="text" class="form-control" id="username" name="m_id" required>
            </div>

            <div class="form-group">
                <label for="password">비밀번호:</label>
                <input type="password" class="form-control" id="password" name="m_pw" required>
            </div>

            <button type="submit" class="btn btn-primary">로그인</button>
            <a href="index.jsp" class="btn btn-primary">회원가입</a>
            <a href = "home.jsp" class="btn btn-primary">Home</a>
        </form>
    </div>
</body>
</html>


