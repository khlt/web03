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
<title>게시판 글 상세보기</title>
<jsp:include page="../common.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<div id="content">
	<section class="con_wrap">
		<h2>글 상세보기</h2>
		<form action="${path1 }/EditBoardCtrl" method="post">
			<table class="table" id="lst_tb">
				<tbody>
					<tr>
						<th>제목</th>
						<td>
						<c:if test="${sid=='admin' }">
							<input type="text" name="title" value="${board.title }">
						</c:if>
						<c:if test="${sid!='admin' }">
							<p>${board.title }</p>
						</c:if>
							<input type="hidden" name="seq" value="${board.seq }">
						</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>
						<c:if test="${sid=='admin' }">
							<input type="text" name="nickname" value="${board.nickname }">
						</c:if>
						<c:if test="${sid!='admin' }">
							<p>${board.nickname }</p>
						</c:if>
						</td>
						
					</tr>
					<tr>
						<th>내용</th>
						<td>
						<c:if test="${sid=='admin' }">
							<textarea cols="100" rows ="7" name="content">${board.content }</textarea>
						</c:if>	
						<c:if test="${sid!='admin' }">
							<p>${board.content }</p>
						</c:if>
						</td>
					</tr>
					<tr>
						<th>등록일</th>
						<td>${board.regdate }</td>
					</tr>
					<tr>
						<th>조회수</th>
						<td>${board.visited }</td>
					</tr>
					<tr>
						<td colspan="2">
						<c:if test="${sid=='admin' }">
							<input type="submit" value="수정" class="button is-info"/>
							<input type="reset" value="취소" class="button is-info"/>
							<a href="${path1 }/DelBoardCtrl?num=${board.seq }" class="button is-info">삭제</a>
						</c:if>
							<a href="${path1 }/GetBoardListCtrl" class="button is-info">목록</a>
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