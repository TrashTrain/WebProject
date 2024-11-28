<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="menu.jsp" %>
<div class="modal modal-sheet position-static d-block bg-body-secondary p-4 py-md-5" tabindex="-1" role="dialog" id="loginModal"
		aria-labelledby="loginModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content rounded-4 shadow">
		      <div class="modal-header p-5 pb-4 border-bottom-0">
		        <h1 class="fw-bold mb-0 fs-2"id="loginModalLabel">정보 변경 완료!</h1>
		      </div>
				<!-- 띄우려는 내용 -->
		      <div class="modal-body p-5 pt-0">
		        <form action="./getInfo.jsp">
		          <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit" >마이 페이지로 이동</button>
		          <small class="text-body-secondary">마이 페이지로 이동 하시겠습니까?</small>
		          <hr class="my-4">
		        </form>
		      </div>
		    </div>
		  </div>
		</div>
</body>
</html>