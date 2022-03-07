<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String id = (String)session.getAttribute("id");
    if(id != null){
%>

<h4> <%=id %>님&nbsp;&nbsp;<a href="member_info.jsp">내정보</a>
&nbsp;&nbsp;<a href="process_logout.jsp">로그아웃</a> </h4>

<%
    }else{
        
        out.println("<h4><a href=\'login.jsp\'>로그인</a>&nbsp;&nbsp;<a href=\'join.jsp\'>회원가입</a></h4>");
        
    }
%>

<hr>

















