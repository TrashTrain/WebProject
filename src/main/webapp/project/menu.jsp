 <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header class="p-3 text-bg-dark">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="./mainPage.jsp" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-diamond-half" viewBox="0 0 16 16">
			  <path d="M9.05.435c-.58-.58-1.52-.58-2.1 0L.436 6.95c-.58.58-.58 1.519 0 2.098l6.516 6.516c.58.58 1.519.58 2.098 0l6.516-6.516c.58-.58.58-1.519 0-2.098zM8 .989c.127 0 .253.049.35.145l6.516 6.516a.495.495 0 0 1 0 .7L8.35 14.866a.5.5 0 0 1-.35.145z"/>
			</svg>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="./mainPage.jsp" class="nav-link px-2 text-secondary">홈</a></li>
          <li><a href="./recommendGameBoard.jsp" class="nav-link px-2 text-white">추천 게시판</a></li>
          <li><a href="./questionBoard.jsp" class="nav-link px-2 text-white">질문 게시판</a></li>
          <li><a href="#" class="nav-link px-2 text-white">언어</a></li>
          <li><a href="#" class="nav-link px-2 text-white">About</a></li>
        </ul>
    
        <div class="text-end">
        <%
        	Object id = session.getAttribute("inputid");
        	if(id == null){
        %>
	          <button type="button" class="btn btn-outline-light me-2" onclick="location.href='./login.jsp'" >로그인</button>
	          <button type="button" class="btn btn-warning" onclick="location.href='./sign_up.jsp'">회원가입</button>
          <%
        	}else{
          %>
	          <button type="button" class="btn btn-outline-light me-2" onclick="location.href='./logout.jsp'" >로그아웃</button>
	          <button type="button" class="btn btn-warning" onclick="location.href='./getInfo.jsp'">마이페이지</button>
          <%
          	}
          	%>
        </div>
        
      </div>
    </div>
    
  </header>
  