<%@page import="dao.RecommendBoardRepository"%>
<%@page import="java.util.concurrent.ExecutionException"%>
<%@page import="dto.RecommendBoard"%>
<%@page import="jakarta.annotation.PostConstruct"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="../resources/js/validation.js"></script>
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
	<%@ include file="menu.jsp"%>
	<%
	RecommendBoard rb = RecommendBoardRepository.getInstance()
			.searchBoard(Integer.parseInt(request.getParameter("postID")));
	%>
	<form name="checkwrite" id="checkwrite" action="./addWriting.jsp" method="post" enctype="multipart/form-data">
		<div class="container px-4 py-5">
			<div class="p-5 mb-4 bg-body-tertiary rounded-3">
				<div class="container-fluid py-5">
					<img src ="../resources/images/<%=rb.getFilename() %>" style="wdith : 250; height : 300"/>
				</div>
			</div>
			
			<hr class="col-sm-10">
			<div class="form-group row">
				<label for="title" class="col-sm-2 text-sm-right">제목</label>
				<div class="col-sm-6">
					<h5><%=rb.getTitle()%></h5>
				</div>
			</div>
			<hr class="col-sm-10">
			<div class="form-group row">
				<label for="script" class="col-sm-2 text-sm-right">내용</label>
				<div class="col-sm-8">
					<textarea id="script" name="script" cols="30" rows="10" class="form-control"
						style="resize: none;" readonly><%=rb.getScript() %></textarea>
				</div>
			</div>
			<hr class="col-sm-10">
			
			<div class="form-group row">
				<button type="button" onclick="location='./recommendGameBoard.jsp'" class="btn btn-info col-sm-2 fw-bold">뒤로가기</button>
			</div>
		</div>
	</form>
</body>
</html>