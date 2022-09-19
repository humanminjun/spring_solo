<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/style.css" />
<title>헤더</title>
<style>
nav {
	font-size: 12pt;
	font-family: 'PT Sans', Arial, Sans-serif;
	position: relative;
}

nav ul {
	padding: 0;
	margin: 0 auto;
	width: auto;
}

nav li {
	
}

nav a {
	line-height: 50px;
	height: 50px;
}

nav li a {
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

nav li:last-child a {
	border-right: 0;
}

nav a:hover, nav a:active {
	
}

nav a#pull {
	display: none;
}

html {
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

ul {
	/*list-style-type: none;*/
	margin: 0;
	padding: 0;
	background-color: #333;
	text-align: center;
}

li {
	/*position: relative;*/
	display: inline-block;
}

li a {
	color: #FFFFFF;
	text-align: center;
	padding: 14.5px 16px;
	text-decoration: none;
}

li a:hover {
	/*color: #597812;*/
	color: #FFD400;
	font-weight: normal;
}

.menu {
	width: 5000px;
	height: 50px;
	text-align: center;
	max-width: 100%;
	background-position: center;
	background-size: cover;
	background-color: #333333;
	color: white;
	position: absolute;
	z-index: 1;
}
</style>
</head>
<body topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0"
	style="background-color: #F6F6F6">
	<a href="${contextPath}/main.do">준 치과</a>
	<c:choose>
		<c:when test="${isLogOn == true  && member!= null}">
			<a href="#">mypage</a>
			<a href="${contextPath}/member/logout.do">로그아웃</a>
		</c:when>
		<c:otherwise>
			<a href="${contextPath}/member/loginForm.do">로그인</a>
			<a href="${contextPath}/member/memberForm.do">회원가입</a>
		</c:otherwise>
	</c:choose>
	<div class="menu">
		<nav class="clearfix">
			<ul class="clearfix">
				<li><a href="#">진료예약</a></li>
				<li><a href="#">커뮤니티</a></li>
				<li><a href="#">게시판</a></li>
				<li><a href="#">쇼핑</a></li>
				
			</ul>
			<a id="pull" href="#"></a>
		</nav>
	</div>
	<script src="../js/app.js"></script>
</body>
</html>