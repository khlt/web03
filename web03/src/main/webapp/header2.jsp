<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />  
<!-- <script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script> -->
<header id="header" class="panel-heading">
	<div class="hd_wrap">
		<div class="navbar navbar-default">
			<div class="logo"><a href="${path }/index.jsp" class="navbar-brand">로고</a></div>
			<nav id="gnb" class="collapse navbar-collapse">
			    <ul class="nav navbar-nav">
			        <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
			        <li><a href="#">Link</a></li>
			        <li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="true">Dropdown <span class="caret"></span></a>
			          <ul class="dropdown-menu" role="menu">
			            <li><a href="#">Action</a></li>
			            <li><a href="#">Another action</a></li>
			            <li><a href="#">Something else here</a></li>
			            <li class="divider"></li>
			            <li><a href="#">Separated link</a></li>
			            <li class="divider"></li>
			            <li><a href="#">One more separated link</a></li>
			          </ul>
			        </li>
					<li><a href="${path }/GetBoardListCtrl">게시판관리</a></li>
					<li><a href="${path }/GetMemberListCtrl">회원관리</a></li>
					<li><a href="${path }/GetProducListCtrl">제품관리</a></li>
				</ul>
			</nav>
			<nav id="top">
				<ul>
					<li><a href="${path }/member/login.jsp">로그인</a></li>
					<li><a href="${path }/member/join.jsp">회원가입</a></li>
				</ul>
			</nav>
		</div>
	</div>
</header>