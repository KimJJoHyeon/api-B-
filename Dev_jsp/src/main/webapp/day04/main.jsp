<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- JSP 주석 --%>
<!-- HTML 주석 -->
<%-- 지시어, 스크립트 요소, 내장객체, 액션태그, 자바빈, 세션, 예외처리 등등 --%>
<%--지시어: page, include, taglib
    **page: JSP페이지 설정에 대한 지시
        -language:스크립트 요소에서 사용할 언어 지정, 
        -contentType: JSP페이지가 생성할 문서 타입과 문자셋 지정,
        -pageEncoding: JSP페이지의 문자 인코딩 지정,
        -import: JSP페이지에 import할 패키지.클래스 지정,
        -extends: 상속받을 클래스 설정,
        -session: HttpSession 사용여부 지정(기본값: true),
        -buffer: JSP페이지의 출력 버퍼 크기 지정(기본값: 8kb),
        -autoFlush: 자동 플러시 기능 지정(기본값: true),
        -isThreadSafe: 다중 스레드의 동시 실행 여부 지정(기본값: true),
        -info: 페이지에 대한 설명(기본값: 없음),
        -errorPage: JSP페이지에서 발생한 에러를 처리할 페이지 지정,
        -isErrorPage: 현재 JSP페이지를 에러 페이지로 지정(기본값: false)
    **include: JSP페이지에 포함시킬 페이지에 대한 지시
    **taglib: JSP 페이지에 사용할 태그 라이브러리에 대한 지시
    (예)<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 --%> 
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>메인 화면</title>
	<style>
	    h4{
	        text-align: right;
	        padding-right: 150px;
	    }
	    
	    .footer, h2{text-align: center; }
	    
	    a{
	        margin-left: 10px; 
	        font-size:12px;
	        color:blue; 
	        text-decoration:none;
	    }
	</style>
</head>
<body>
<!-- include지시어는 내용을 합쳐서 돌린거고 
	jsp:include는 따로 돌린거임
 -->
<jsp:include page="header.jsp" flush="false"/>

<!-- <%@ include file="header.jsp" %> -->

<h2>메인 페이지 입니다</h2>
<div style="height:550px;"></div>

<jsp:include page="footer.jsp" flush="false"/>
<!-- <%@ include file="footer.jsp" %> -->
</body>
</html>