<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<style>  /* CSS 소스코드 */

    div.login_content {
        width:220px;
        height:160px;
        background:#E8FFFF; /*네이버 색상 코드표 활용*/
        position:absolute; 
        left:50%; 
        top:40%; 
        transform:translate(-50%, -50%)
    }
        
    div.login_field{
        margin:10px;
        padding:5px;
    }
    
    input.login-input{
        height: 30px;
        width: 180px;
    }
    
    input.login-button-submit{
    	width: 180px
    }
    
    a{
        margin-left: 25px; 
        font-size:15px;
        color:blue; 
        text-decoration:none;
    }    

</style>

</head>
<body>

<div class="login_content">
	<form name="loginForm" method="post" action="process_login.jsp">
	<div class="login_field"><input type="text" class="login-input" name="member_id" placeholder="아이디(이메일)" required></div>
	<div class="login_field"><input type="password" class="login-input" name="member_pw" placeholder="비밀번호" required></div>

	<div class="login_field">
<!--<input type="submit" class="login-button-submit" value="로그인">&nbsp;&nbsp;<a href="join.jsp">회원가입</a> -->
     <!-- submitt을 <a>태그로 작성한 소스 -->
       <a href="javascript:loginForm.submit()">로그인</a>
       <a href="join.jsp">회원가입</a>
	</div>
	</form>
</div>
</body>
</html>