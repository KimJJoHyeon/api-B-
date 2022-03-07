<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jdbc.DBConnection" %> <!-- import해줘야함 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB연결 테스트 페이지</title>
</head>
<body>

<%
 DBConnection.getConnection();
%>
DB연결 테스트 실행
</body>
</html>