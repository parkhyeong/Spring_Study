<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <table border="1">
    <thead>
        <tr>
            <th width="200">영화제목</th>
            <th width="200">영화가격</th>
        </tr>
    </thead>
    <tbody>
        <tr>
        <!--  세션, 모델만 출력 가능 -->
            <td>${title}</td>
            <td>${price}</td>
        </tr>
        <tr>
            <td colspan="2">문자 인증받기</td>
        </tr>

    </tbody>
</table>