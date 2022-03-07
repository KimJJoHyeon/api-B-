<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "jdbc.DBConnection, java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리 페이지</title>
</head>
<body>

<%
//스크립트릿, 자바 소스 코드, _jspService()메소드 내에 실행됨 

   String member_id = request.getParameter("member_id");
   String member_pw = request.getParameter("member_pw");
   
   //JDBC구현 - jdbc.DBConnection클래스 이용
   Connection conn = DBConnection.getConnection();
   String sql = "select count(*) from member_tb where member_id=? and member_pw=?";
   PreparedStatement pstmt = conn.prepareStatement(sql);
   pstmt.setString(1, member_id);
   pstmt.setString(2, member_pw);
   ResultSet rs = pstmt.executeQuery();
   int count = 0;
   if(rs.next())  count = rs.getInt(1);
   
   if(count != 0){//회원인 경우
	   //회원정보를 유지하기 위해 session객체 이용
	   session.setAttribute("id", member_id);
	   //main.jsp페이지로 이동
	   response.sendRedirect("main.jsp");
   }else{
	   out.println("<script>alert('아이디나 비밀번호가 일치하지 않습니다.')</script>");
       out.println("<script> history.back(); </script>");
   }
   
   

%>


</body>
</html>