<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="header.jsp"%><br>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>전기자동차 타요타요</title>

<!-- Google Maps API 스타일을 파란색으로 채우기 -->
<style>
#map-container {
	height: 400px;
	background-color: #3498db; /* 파란색 */
}
</style>
<%
	String id = (String) session.getAttribute("id");
%>
</head>
<body>

	<!-- Google Maps API를 사용하는 지도 -->
	<div id="map-container" class="mt-3"></div>

	<!-- 부트스트랩 JS 및 Google Maps API 스크립트 -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<!-- Google Maps API 스크립트 -->
	<!-- 반드시 API 키를 설정해야 합니다. -->
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap"></script>

</body>
</html>

