<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>
<%@include file="menu.jsp" %>
<br><br><br><br><br><br>
<div class="container">
	<div class="row g-5">
		<h4 class="mb-1">회원 가입</h4>
		<form class="sign_info">
		<div class="row g-3">
            <div class="col-sm-6">
              <label for="firstName" class="form-label">이름</label>
              <input type="text" class="form-control" id="firstName" placeholder="이름을 입력하세요." value="" required="">
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>
            <div></div>
            <div class="col-6">
              <label for="username" class="form-label">아이디</label>
              <div class="input-group has-validation">
                <input type="text" class="form-control" id="username" placeholder="아이디를 입력하세요." required="">
              <div class="invalid-feedback">
                  Your username is required.
                </div>
              </div>
            </div>
			<div><div/>
            <div class="col-6">
              <label for="email" class="form-label">Email <span class="text-body-secondary">(Optional)</span></label>
              <input type="email" class="form-control" id="email" placeholder="you@example.com">
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
            </div>


            <div class="col-md-3">
              <label for="zip" class="form-label">자기소개</label>
              <textarea rows="5" cols="5" class="form-control" id="self-info" placeholder="자신을 소개해보세요!"></textarea>
            </div>
          </div>
          <br><br><br>
          <button class="w-50 btn btn-primary btn-lg" type="submit">회원가입</button>
          </div>
		</form>
	</div>
</div>
</body>
</html>