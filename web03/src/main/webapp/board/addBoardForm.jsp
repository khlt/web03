<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<jsp:include page="../common.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<%-- <c:if test="${empty name }"><c:redirect url="../member/login.jsp" /></c:if> --%>
<div id="content" class="content_wrap">
	<section class="con_wrap">
		<h2>글 상세보기</h2>
		<form action="${path1 }/AddBoardCtrl" method="post">
			<table class="table" id="lst_tb">
				<tbody>
					<tr>
						<th>제목</th>
						<td>
							<input type="text" name="title" value="" required>
						</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>
							<input type="text" name="nickname" value="admin">
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							<textarea cols="100" rows ="7" name="content" required></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="글 등록" class="button is-info"/>
							<input type="reset" value="취소" class="button is-info"/>
							<a href="${path1 }/GetBoardListCtrl" class="button is-info">목록</a>
						</td>
					</tr>
				</tbody>
			</table>
		</form>	
	</section>
	<script>
	$(document).ready(function(){
		$("#lst_tb_filter").css("display","none");
	});
	</script>	
</div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>