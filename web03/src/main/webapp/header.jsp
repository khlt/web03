<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />  
<%
	String sid = "";
	if(session !=null) sid = (String) session.getAttribute("sid");  
%>
<header id="header" class="panel-heading">
	<div class="hd_wrap">
		<nav class="navbar" role="navigation" aria-label="main navigation">
		  <div class="navbar-brand">
		    <a class="navbar-item" href="${path }/index.jsp" id="logo">
		      <img src="${path }/img/img_header_logo.png" width="220" height="39">
		    </a>
		
		    <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
		      <span aria-hidden="true"></span>
		      <span aria-hidden="true"></span>
		      <span aria-hidden="true"></span>
		    </a>
		  </div>
		
		  <div id="gnb" class="navbar-menu">
		    <div class="navbar-start">
		      <div class="navbar-item has-dropdown is-hoverable">
		        <a class="navbar-link">
		          케어식단
		        </a>
		
		        <div class="navbar-dropdown">
		          <a class="navbar-item">
		            정기식단
		          </a>
		          <a class="navbar-item">
		            챌린지 식단
		          </a>
		        </div>
		      </div>
		      <div class="navbar-item has-dropdown is-hoverable">
		        <a class="navbar-link">
		          건강마켓
		        </a>
		        <div class="navbar-dropdown">
		          <a class="navbar-item">
		            건강반찬
		          </a>
		          <a class="navbar-item">
		            건강 국/찌개
		          </a>
		          <a class="navbar-item">
		            자연 담은 면
		          </a>
		          <hr class="navbar-divider">
		          <a class="navbar-item">
		            영양 가득 밥/죽
		          </a>
		          <a class="navbar-item">
		            샐러드/샌드위치
		          </a>
		          <a class="navbar-item">
		            베이커리
		          </a>
		          <a class="navbar-item">
		            착한 간식
		          </a>
		        </div>
		      </div>
		      <div class="navbar-item has-dropdown is-hoverable">
		        <a class="navbar-link">
		          브랜드관/기획전
		        </a>
		
		        <div class="navbar-dropdown">
		          <a class="navbar-item" href="GetDiscountListCtrl">
		            할인관
		          </a>
		          <a class="navbar-item">
		            브랜드관
		          </a>
		          <a class="navbar-item">
		            기획전
		          </a>
		        </div>
		      </div>
		      <div class="navbar-item has-dropdown is-hoverable">
		        <a class="navbar-link">
		          이벤트/스토리
		        </a>
		
		        <div class="navbar-dropdown">
		          <a class="navbar-item" href="GetEventListCtrl">
		            이벤트
		          </a>
		          <a class="navbar-item">
		            스토리
		          </a>
		          <a class="navbar-item">
		            이용후기
		          </a>
		        </div>
		      </div>
		      <div class="navbar-item has-dropdown is-hoverable">
		        <a class="navbar-link">
		          고객센터
		        </a>		
		        <div class="navbar-dropdown">
		          <a class="navbar-item" href="${path }/GetBoardListCtrl">
		            공지사항
		          </a>
		          <a class="navbar-item">
		            1:1 문의
		          </a>
		          <a class="navbar-item">
		            자주하는 질문 및 답변
		          </a>
		          <hr class="navbar-divider">
		          <a class="navbar-item">
		            반품안내
		          </a>
		        </div>
		      </div>
		    </div>
			<c:if test="${empty sid }">		
		    <div class="navbar-end">
		      <div class="navbar-item">
		        <div class="buttons">
		          <a href="${path }/member/agree.jsp" class="button is-primary">
		            <strong>회원가입</strong>
		          </a>
		          <a href="${path }/member/login.jsp" class="button is-light">
		            로그인
		          </a>
		        </div>
		      </div>
		      </c:if>
		      <c:if test="${!empty sid }">
		      <!-- 로그인 사용자 -->
		      <div class="navbar-item">
		        <div class="buttons">
		          <a href="${path }/myPageCtrl?userid=${sid }" class="button is-primary">
		            <strong>회원정보수정</strong>
		          </a>
		          <a href="" class="button is-light">
		            마이페이지
		          </a>
		          <a href="${path }/logOutCtrl" class="button is-light">
		            로그아웃
		          </a>
		        </div>
		      </div>
		      </c:if>
		      <!-- 관리자 -->
		      <c:if test="${sid=='admin' }">
		      <div class="navbar-item">
		        <div class="buttons">
		          <a href="${path }/GetBoardListCtrl" class="button is-primary">
		            <strong>글 관리</strong>
		          </a>
		          <a href="${path }/GetMemberListCtrl" class="button is-light">
		            회원관리
		          </a>
		          <a class="button is-light">
		            제품관리
		          </a>
		          <a class="button is-light">
		            판매관리
		          </a>
		        </div>
		      </div>
		      </c:if>
		    </div>
		  </div>
		</nav>
	</div>
</header>