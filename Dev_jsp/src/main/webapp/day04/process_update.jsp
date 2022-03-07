<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "jdbc.DBConnection, java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="dto" class="member.MemberDto"></jsp:useBean>
<jsp:setProperty  name="dto" property="*"></jsp:setProperty>
<jsp:useBean id="dao" class="member.MemberDao"></jsp:useBean>
<% 
	int result = dao.UpdateMemberInfo(dto);
	if(result == 1){
		out.println("<h3>정상적으로 정보 수정이 이루어졌습니다. </h3>&nbsp;<a href='member_info.jsp'>회원정보 보기</a>");
	}else{
		out.println("<script>alert('회원정보 수정 실패.')</script>");
    	out.println("<script> history.back(); </script>");
	}

%>
<% 

	//request.setCharacterEncoding("UTF-8");
	//<jsp:setProperty  name="dto" property="*"></jsp:setProperty>  -이 한문장으로 뒤의 가져오는부분이 다 사라짐
	
    /*String member_id = request.getParameter("member_id");
    String member_pw1 = request.getParameter("member_pw1");
    String member_name = request.getParameter("member_name");
    String phone_no = request.getParameter("phone_no");*/
    
    /*Connection conn =DBConnection.getConnection();
    String sql ="update member_tb SET member_id =? ,  member_pw=? , member_name=? , phone_no=? where member_id=? ";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setString(1,member_id);//1:첫번째 ?를 의미함
	pstmt.setString(2,member_pw1);
	pstmt.setString(3,member_name);
	pstmt.setString(4,phone_no);
	pstmt.setString(5,member_id);
    pstmt.executeUpdate();*/
    
%>

<h4><a href="main.jsp">수정끝</a></h4>
</body>
</html>