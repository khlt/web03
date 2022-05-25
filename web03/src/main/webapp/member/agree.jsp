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
<title>회원 약관 및 동의</title>
<jsp:include page="../common.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<div id="content">
	<section class="con_wrap">
		<h2>회원 약관 및 개인정보처리방침</h2>
		<div role="form" class="form-horizontal">
			<textarea rows="30" cols="90" readonly>회원약관</textarea><br>
			<input type="checkbox" name="ck1" id="ck1"> 회원약관에 동의합니다.
			<br><br><br>
			<textarea rows="30" cols="90" readonly>개인정보처리방침</textarea><br>
			<input type="checkbox" name="ck2" id="ck2"> 개인정보처리방침에 동의합니다.
			<br><br><br>
			<button id="btn1" onclick="fnc1()" class="btn btn-primary">회원가입</button>
			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			<a href="javascript:history.back()" class="btn btn-primary">취소</a>
			<br><br>
			<script type="text/javascript">
				function fnc1(){
					var ck1 = document.getElementById("ck1");
					var ck2 = document.getElementById("ck2");
					if(ck1.checked && ck2.checked) {
						location.href = "${path1 }/member/join.jsp";
						return false;
					} else {
						alert("약관에 동의하지 않으셨습니다.");
						return false;
					}
				}
			</script>
		</div>
	</section>
</div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>