<%@page import="com.backend.mvc05.ReplyDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.backend.mvc05.BbsDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//컨트롤러에서 모델로 지정한 것 request.getAttribute("모델이름");
	BbsDTO bag = (BbsDTO)request.getAttribute("bag"); 
	//작 = (작)큰;
%>
<% 
	session.setAttribute("user", "apple");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(function() { 
		$('#b1').click(function() {
			$.ajax({
				url: "insert4",
				data: {
					oriid : '<%= bag.getId() %>',
					content : $('#reply').val(),
					writer : '${user}'
				},
				success: function(response) {
					alert('ajax호출 성공' + response)
					$('#result').append(response)
				}//success
			})//ajax
		})//b1
	})//$
</script>
</head>
<body bgcolor="yellow">
게시판 id <%= bag.getId() %> <br>
게시판 title <%= bag.getTitle() %> <br>
게시판 content <%= bag.getContent()%> <br>
게시판 writer <%= bag.getWriter() %> <br>
<hr color="red">
댓글입력 : <input id="reply" value="나는 댓글!"><button id="b1">댓글달기</button>
<hr color="red">
<div id="result">
	<%
		List<ReplyDTO> list = (List<ReplyDTO>)request.getAttribute("list");
	%>
	<% for(ReplyDTO dto : list){ %>
	- <%= dto.getId() %>, <%= dto.getContent() %>, <%= dto.getWriter() %> <br>
	<%} %>
</div>	
</body>
</html>