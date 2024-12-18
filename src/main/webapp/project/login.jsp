<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<%@include file="menu.jsp" %>
<div class="container px-4 py-5" id="custom-cards">
    <h2 class="pb-2 border-bottom"></h2>
	<form action="./login_check.jsp" method="post">
			<div class="modal modal-sheet position-static d-block bg-body-secondary p-4 py-md-5" tabindex="-1" role="dialog" id="loginModal"
		aria-labelledby="loginModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content rounded-4 shadow">
		      <div class="modal-header p-5 pb-4 border-bottom-0">
		        <h1 class="fw-bold mb-0 fs-2"id="loginModalLabel">로그인</h1>
		      </div>
				<!-- 띄우려는 내용 -->
		      <div class="modal-body p-5 pt-0">	
		      		<%
		      			Object errorMessage = request.getAttribute("errorMessage");
		      			if(errorMessage != null){
		      		%>
		      		<div class="control-group">
		      			<label class="error"><% out.println(errorMessage); %></label>
		      		</div>
		      		<%
		      			}
		      		%>
		      		
		          <div class="form-floating mb-3">
		            <input type="text" class="form-control rounded-3" id="id" name="id" placeholder="name@example.com">
		            <label for="id">아이디를 입력해주세요.</label>
		          </div>
		          <div class="form-floating mb-3">
		            <input type="password" class="form-control rounded-3" id="passwd" name="passwd" placeholder="Password">
		            <label for="passwd">비밀번호를 입력해주세요.</label>
		          </div>
		          <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit">로그인</button>
		          <small class="text-body-secondary">로그인 정보를 입력해주세요.</small>
		          <hr class="my-4">
		          <h2 class="fs-5 fw-bold mb-3">아이디가 없으신가요?</h2>
		          
		          <button type="button" class="w-100 py-2 mb-2 btn btn-outline-primary rounded-3" onclick="location.href='./sign_up.jsp'">
		            회원 가입
		          </button>

		      </div>
		    </div>
		  </div>
		</div>
	</form>
	
</div>
</body>
</html>