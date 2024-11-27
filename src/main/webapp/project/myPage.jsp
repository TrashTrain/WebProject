<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="../resources/js/validation.js"></script>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
<%@include file="menu.jsp" %>
<div class="container px-4 py-5" id="custom-cards">
		<h2 class="pb-2 border-bottom"></h2>
		<form name="checkSign" action="./sign_up_success.jsp" method="post" class="sign_info">
			<div
				class="modal modal-sheet position-static d-block bg-body-secondary p-4 py-md-5">
				<div class="modal-dialog" role="document">
					<div class="modal-content rounded-4 shadow">
						<div class="modal-header p-5 pb-4 border-bottom-0">
							<h1 class="fw-bold mb-0 fs-2 pb-2 border-bottom">마이페이지</h1>
						</div>
						<div class="container p-5 pb-4">
							<div class="row g-5">
								<div class="row g-3">
									<div class="col-sm-6">
										<label for="firstName" class="form-label">닉네임</label> <input
											type="text" class="form-control" name="username" id="username"
											placeholder="이름을 입력하세요." value="" required="">
										<div class="invalid-feedback">Valid first name is
											required.</div>
									</div>
									<div></div>
									<div class="col-6">
										<label for="username" class="form-label">아이디</label>
										<div class="input-group has-validation">
											<input type="text" class="form-control" name="id"id="id"
												placeholder="아이디를 입력하세요." required="">
											<div class="invalid-feedback">Your username is
												required.</div>
										</div>
									</div>
									<div></div>
									<div class="col-12">
										<label for="passwd" class="form-label">비밀번호</label>
										<div class="input-group has-validation">
											<input type="password" class="form-control" name="passwd" id="passwd"
												placeholder="비밀번호를 입력하세요." required="">
											<div class="invalid-feedback">Your username is
												required.</div>
										</div>
									</div>
									<div></div>
									<div class="col-12">
										<label for="passwd" class="form-label">비밀번호 확인</label>
										<div class="input-group has-validation">
											<input type="password" class="form-control" name="passcheck" id="passcheck"
												placeholder="비밀번호를 다시 한 번 입력하세요." required="">
											<div class="invalid-feedback">Your username is
												required.</div>
										</div>
									</div>
									<div>
										<div class="col-6">
											<label for="email" class="form-label">Email <span
												class="text-body-secondary">(Optional)</span></label> <input
												type="email" class="form-control" name="email" id="email"
												placeholder="you@example.com">
											<div class="invalid-feedback">Please enter a valid
												email address for shipping updates.</div>
										</div>


										<div class="col-md-12">
											<label class="form-label">자기소개</label>
											<textarea rows="5" cols="5" class="form-control" wrap="hard"
												id="self" name="self" placeholder="자신을 소개해보세요!"style="resize: none;"></textarea>
										</div>
									</div>
									<br>
									<br>
									<br>
									<button class="w-100 btn btn-primary btn-lg" type="button" onclick="CheckSignUp()">회원가입</button>
									<br>
									<br>
									<br>
									<br>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>