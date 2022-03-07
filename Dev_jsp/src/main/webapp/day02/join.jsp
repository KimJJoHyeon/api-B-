<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- HTML5 적용 표시 -->
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>

<style>  /* CSS 소스코드 */

    div.join_content {
        width:250px;
        height:380px;
        background:#E8FFFF; /*네이버 색상 코드표 활용*/
        position:absolute; 
        left:50%; 
        top:40%; 
        transform:translate(-50%, -50%)
    }
        
    div.join_field{
        margin:10px;
        padding:5px;
    }
    
    input.join-input{
        height: 30px;
        width: 200px;
    }
    
    input.join-button-submit{
        margin: 10px 15px 10px 25px; /*순서: (시계방향으로) 위쪽, 오른쪽, 아랫쪽, 왼쪽*/
    }
    
    div.join-header{
        margin: 10px;
        padding-left: 20px;
    }


</style>

</head>

<body>

<div class="join_content">

	<div class="join-header">
	        회원정보를 입력해주세요
	</div>

    <form action="process_join.jsp" method="post">

	<div class="join_field">
          <input type="email" class="join-input" name="member_id"
                 id="join-email-input" value="" maxlength="80" placeholder="아이디(이메일)" />
	</div>
	     
	<div class="join_field">
          <input type="password" class="join-input" name="member_pw1"
                 id="join-password-input" value="" maxlength="20" placeholder="비밀번호">             
	</div>
	 
	<div class="join_field">
           <input type="password" class="join-input" name="member_pw2"
                  id="verify-join-password-input" value="" maxlength="20" placeholder="비밀번호 확인">
	</div>
	
	 <div class="join_field">
           <input type="Name" class="join-input" name="member_name"
                  id="join-name-input" maxlength="40" value="" placeholder="이름">
	</div>
	
	<div class="join_field">
           <input type="tel" class="join-input" name="phone_no"
                id="join-phone-input" value="" autocomplete="off" placeholder="휴대폰 번호">
	</div>
	
	<div class="join_field">  
	   <span class="join-button">
           <input type="submit" class="join-button-submit" value="가입하기">
           <input type="reset" class="join-button-reset" value="취소하기">
       </span>    
	</div>
    </form> 
</div>

</body></html>        