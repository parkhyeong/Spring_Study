<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	Cookie[] list = request.getCookies();
    int applePrice = 0;
    int icePrice = 0;
    for(Cookie c: list){
    	if(c.getName().equals("apple")) {
    		applePrice = Integer.parseInt(c.getValue());
    	}
    	if(c.getName().equals("ice")){
    		icePrice = Integer.parseInt(c.getValue());
    	}
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
사과와 아이스크림의 합은 <%= applePrice + icePrice %>
</body>
</html>