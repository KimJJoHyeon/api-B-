<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="../css/bootstrap.css">
<title>Discription page</title>

<style>
	.navbar-header{
	background-color: rgb(41, 128, 185);
	}
	span#title{
		/*font-weight: 100px;*/
		text-align:center;
		font-style:italic;
		font-size:30px;
		color:black;
	}
	
	div#div_content{
		text-align:center;
		height: 300px;
	}
	h3{
		border: 1px solid black;
		
	}
	
</style>


</head>
<body>
   <nav class="navbar navbar-default">
        <div class="navbar-header">
             <button type="button" class="navbar-toggle collapsed"
             data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
             aria-expanded="false">
             
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
             
             </button>
             <a class="navbar-brand" href="main.jsp"><span id ="title">Discription Page</span></a>
        </div>
        
        <div class ="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        	<ul class ="nav navbar-nav">
        		<li><a href="main.jsp">메인</a></li>
        		<li><a href="bbs.jsp">게시판</a></li>
        	</ul>
        	<ul class ="nav navbar-right">
        		<li class="dropdown">
        			<a href="#" class ="dropdown-toggle"
        			data-toggle ="dropdown" role="button" 
        			aria-haspopup="true"
        			aria-expanded="false"
        			>메뉴<span class="caret"></span></a>
        				<ul class="dropdown-menu">
			        		<li class="active"><a href="login.jsp">로그인</a></li>
			        		<li><a href="join.jsp">회원가입</a></li>
			        	</ul>
        		</li>
        	</ul>
        </div>
   </nav>
   <div class="container">
   	<div class="col-g-4"></div>
   		<div class="jumbotron" style="pading-top:20px">
   								<!-- 사용자 입력받은 input들을 form 태그로 넘겨서 loginAction.jsp에서 처리한다. -->
   			<form method="post" action="login.jsp">
   			<div id ="div_content">
   				<h3> 반갑습니다.</h3>
   			</div>
   			<input type="submit" class="btn btn-primary form-control" value="메인 페이지로 가기"/>
   			</form>
   		</div>
   </div>
   <script src="../js/jquery-3.6.0.min.js"></script>
   <script src="../js/bootstrap.js"></script>
   <footer>
   		<div>
   			ProjectName
   		</div>
   
   </footer>
</body>
</html>