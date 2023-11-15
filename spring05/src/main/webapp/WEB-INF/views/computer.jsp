<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<table border="1">
    <thead>
        <tr>
            <th>항목명</th>
            <th>값</th>
        </tr>
    </thead>
    <tbody>
        <tr>
        <!--  세션, 모델만 출력 가능 -->
            <td>${vo.com}</td>
            <td>${vo.price}</td>
        </tr>
        <tr>
            <td>${vo.mouse}</td>
            <td>${vo.price2}</td>
        </tr>
        <tr style="background: yellow">
            <td>총합</td>
            <td>${total}</td>
            <%--int total = (int)request.getAttribue("total");
            <%=total%>
             --%>
        </tr>

    </tbody>
</table>