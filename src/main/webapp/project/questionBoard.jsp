<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>질문 게시판</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<div class="container py-4">
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display-5 fw-bold">질문 게시판</h1>
			<p class="col-md-8 fs-4">모르는게 있으면 편하게 물어보세요!</p>
		</div>
	</div>
	
	<div class="row align-items-md-stretch">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left"><a href="#"
					class="btn btn-danger">인기글</a>
					<a href="#"
					class="btn btn-secondary">전체글</a>
					</td>
					
					<td align="right"><a href="./writingPage.jsp" class="btn btn-success">글쓰기</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
		<table class="table table-hover">
			<tr>
				<th>도서</th>
				<th>가격</th>
				<th>수량</th>
				<th>소계</th>
				<th>비고</th>
			</tr>
		</table>
		<a href="#" class="btn btn-secondary">&laquo; 쇼핑 계속하기</a>
		</div>
	</div>
</div>
</body>
</html>