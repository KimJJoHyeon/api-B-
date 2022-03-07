<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, jdbc.DBConnection" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보 수정화면</title>
<jsp:useBean id="dto" class="member.MemberDto"></jsp:useBean>
<jsp:useBean id="dao" class="member.MemberDao"></jsp:useBean>

<%
	String member_id = (String)session.getAttribute("id");
	dto = dao.getMemberInfo(member_id, dto);
%>

<%
    //session객체의 속성으로 저장해둔 member_id값을 가져와서 쿼리문 작성
    //String member_id = (String)session.getAttribute("id");

   /* Connection conn = DBConnection.getConnection();
    String sql = "select member_id, member_pw, member_name, phone_no from member_tb where member_id=?";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, member_id);
    ResultSet rs = pstmt.executeQuery();
    rs.next();*/
%>
</head>
<body>
<div>

	<div>
	    
	</div>

    <form action="process_update.jsp" method="post">

	<div>
          <input type="email" name="member_id"
                 id="join-email-input" value="<%=dto.getMember_id() %>" maxlength="80" >
	</div>
	     
	<div>
          <input type="password" name="member_pw"
                 id="join-password-input" value="<%=dto.getMember_pw() %>" maxlength="20">             
	</div>
	
	 <div>
           <input type="Name" name="member_name"
                  id="join-name-input" maxlength="40" value="<%=dto.getMember_name() %>">
	</div>
	
	<div>
           <input type="tel"name="phone_no"
                id="join-phone-input" value="<%=dto.getPhone_no() %>" autocomplete="off" >
	</div>
	
	<div>  
	   <span>
           <input type="submit" value="수정하기">
           <input type="reset" value="다시쓰기">
       </span>    
	</div>
    </form> 
</div>
</body>
</html>