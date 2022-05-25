<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path1" value="${pageContext.request.contextPath }" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css" />
<title>로그인</title>
<jsp:include page="../common.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<div id="content">
	<section class="con_wrap">
		<h2>로그인</h2>
		<form action="${path1 }/loginCtrl" method="post" name="login_form">
			<table class="table" id="lst_tb">
				<tbody>
					<tr>
						<th>아이디</th>
						<td><input type="text" name="userid" required></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" name="userpw" required></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="로그인" class="button is-info"/>
							<input type="reset" value="취소" class="button is-info"/>
						</td>
					</tr>
				</tbody>
			</table>
		</form>	
	</section>
</div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>