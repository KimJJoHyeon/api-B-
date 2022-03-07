<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, jdbc.DBConnection" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
    //session객체의 속성으로 저장해둔 member_id값을 가져와서 쿼리문 작성
    String member_id = (String)session.getAttribute("id");

    Connection conn = DBConnection.getConnection();
    String sql = "select member_id, member_pw, member_name, phone_no from member_tb where member_id=?";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, member_id);
    ResultSet rs = pstmt.executeQuery();
    rs.next();
%>
</head>
<body>


<% 


%>
</body>
</html>