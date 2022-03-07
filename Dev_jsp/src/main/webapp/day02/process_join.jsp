<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jdbc.DBConnection, java.sql.*" %>    
<!DOCTYPE html>
<html><head><meta charset="UTF-8"><title>회원가입 처리 페이지</title></head>
<body>

<%
//스크립트릿:_jspService()메소드 내에서 실행되는 자바 소스 코드
    request.setCharacterEncoding("UTF-8");

    String member_id = request.getParameter("member_id");
    String member_pw1 = request.getParameter("member_pw1");
    String member_pw2 = request.getParameter("member_pw2");
    String member_name = request.getParameter("member_name");
    String phone_no = request.getParameter("phone_no");
    
    //비밀번호 일치 여부 확인
    if(member_pw1.equals(member_pw2)){
    	//DB연결 객체 얻기
    	Connection conn =DBConnection.getConnection();
    	//SQL문 작성
    	String sql ="insert into member_tb values(member_seq.nextval,?,?,?,?,0,sysdate)";
    	PreparedStatement pstmt = conn.prepareStatement(sql);
    	pstmt.setString(1,member_id);//1:첫번째 ?를 의미함
    	pstmt.setString(2,member_pw1);
    	pstmt.setString(3,member_name);
    	pstmt.setString(4,phone_no);
    	
    	pstmt.executeUpdate();
    	
    	out.println("<h3>정상적으로 회원가입이 이루어졌습니다</h3>");
    }else{
    	out.println("<script>alert('비밀번호가 일치하지 않습니다.')</script>");
    	out.println("<script> history.back(); </script>");
    }

%>

</body>
</html>