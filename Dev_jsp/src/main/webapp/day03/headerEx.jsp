
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더 정보 관련 메소드들</title>
</head>
<body>
	<table><tr><th>헤더 이름</th><th>헤더 값</th></tr>
   	<% Enumeration en = request.getHeaderNames();
   		while(en.hasMoreElements()){
   			String h_name = (String)en.nextElement();
   		
   		}
   		%>
   <tr><td><%=h_name %></td><td><%=request.getHeader(h_name) %></td></tr>
   </table>
</body>
</html> 
