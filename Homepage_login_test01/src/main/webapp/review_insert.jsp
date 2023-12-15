<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>전기자동차 타요타요</title>
    <!-- 부트스트랩 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <!-- Google Maps API 스타일을 파란색으로 채우기 -->
    <style>
        #map-container {
            height: 400px;
            background-color: #3498db; /* 파란색 */
        }
    </style>
</head>
<body>
	<!-- 상단바 -->
	<div id="top">
		<jsp:include page="header.jsp"></jsp:include>
	</div>

	<form action="review_insert">
		<input name="r_writer" hidden="hidden" value="${id }">
		제목 : <input name="r_title"><br>
		내용 : <input name="r_content"><br>
		충전소 : <input name="r_charger"><br>
		<button>리뷰 작성</button>
	</form>

</body>
</html>