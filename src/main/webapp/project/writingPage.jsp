<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<form name="write_form" id="write_form" action="#" method="post">
		<div class="container px-4 py-5">
			<div class="p-5 mb-4 bg-body-tertiary rounded-3">
				<div class="container-fluid py-5">
					<h1 class="display-5 fw-bold">글 작성</h1>
				</div>
			</div>
			<hr class="col-sm-10">
			<div class="form-group row">
				<label for="category" class="col-sm-2 text-sm-right">게시판</label>
				<div class="col-sm-6">
					<select id="category" name="category" class="form-control">
						<option selected>선택</option>
						<option value="recommend">추천 게시판</option>
						<option value="question">질문 게시판</option>
					</select>
				</div>
			</div>
			<hr class="col-sm-10">
			<div class="form-group row">
				<label for="title" class="col-sm-2 text-sm-right">제목</label>
				<div class="col-sm-6">
					<input class="form-control" type="text" id="title" maxlength="256"
						placeholder="제목">
				</div>
			</div>
			<hr class="col-sm-10">
			<div class="form-group row">
				<label for="a4" class="col-sm-2 text-sm-right">내용</label>
				<div class="col-sm-8">
					<textarea id="a3" cols="30" rows="5" class="form-control"
						style="resize: none;" placeholder="내용을 입력해주세요."></textarea>
				</div>
			</div>
			<hr class="col-sm-10">
			<div class="form-group row">
				<label for="fileUpload" class="col-sm-2 text-sm-right">파일 첨부</label>
				<div class="col-sm-8">
					<input type="file" id="fileUpload" class="form-control-file border">
				</div>
			</div>
			<hr class="col-sm-10">
			<div class="form-group row">
				<button type="submit" class="btn btn-info col-sm-2 fw-bold">글 작성</button>
			</div>
		</div>
	</form>
</body>
</html>