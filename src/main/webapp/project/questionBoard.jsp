<%@page import="dao.QuestionBoardRepository"%>
<%@page import="dto.QuestionBoard"%>
<%@page import="java.util.ArrayList"%>
<%@page import="jakarta.websocket.SendResult"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문 게시판</title>
</head>
<script>
function CheckLogin() {
	<%Object qid = session.getAttribute("inputid");
	if (qid == null) {%>
		alert("로그인 후에 이용 가능합니다.");
	<%	
	} else {%>
		location.href="writingPage.jsp";
	<%}%>
}
</script>
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
					<td align="right"><button onclick="CheckLogin()" class="btn btn-success">글쓰기</button></td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
		<table style = "width:100%" class="table table-hover">
			<tr>
				<th style="width:10%">No.</th>
				<th style="width:60%">제목</th>
				<th>글쓴이</th>
				<th>추천수</th>
			</tr>
			<%
				ArrayList<QuestionBoard> qboard = QuestionBoardRepository.getInstance().getAllBoard();
				
				for(QuestionBoard a : qboard){
			%>
			<tr>
				<td><%=a.getNum() %></td>
				<td><a href="contentViewQ.jsp?postID=<%=a.getNum() %>" style="color:black"><%=a.getTitle() %></a></td>
				<td><%=a.getUsername() %></td>
				<td><%=0 %></td>
				<td><%=0 %></td>
			</tr>
			
			<%} %>
		</table>
				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center">
						<li class="page-item disabled"><a class="page-link">Previous</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a>
						</li>
					</ul>
				</nav>
			</div>
	</div>
</div>
</body>
</html>