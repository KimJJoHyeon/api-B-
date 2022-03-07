<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, jdbc.DBConnection" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 보기</title>

<style>
    table, td{
        margin:auto;
        width: 400px;
        border: 1px solid gray;
        text-align: center;
    }
    
    h2, h4{ text-align: center;}
    a { text-decoration: none;}
</style>


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
<h2>회원정보</h2>
<table>
    <tr>
        <td>아이디</td><td><%=rs.getString("member_id") %></td>
    </tr>
    <tr>
        <td>비밀번호</td><td><%=rs.getString("member_pw") %></td>
    </tr>
    <tr>
        <td>이름</td><td><%=rs.getString("member_name") %></td>
    </tr>
    <tr>
        <td>전화번호</td><td><%=rs.getString("phone_no") %></td>
    </tr>
</table>
<h4><a href="main.jsp">메인화면</a>&nbsp;&nbsp;<a href="update_member.jsp">정보수정</a>&nbsp;&nbsp;<a href="delete_member.jsp">회원탈퇴</a></h4>

<% pstmt.close(); rs.close(); conn.close(); %>
</body>
</html>