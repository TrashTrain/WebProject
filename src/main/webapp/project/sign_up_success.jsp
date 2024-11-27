<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	
	String username=request.getParameter("username");
	String id=request.getParameter("id");
	String passwd=request.getParameter("passwd");
	String passcheck=request.getParameter("passcheck");
	String email=request.getParameter("email");
	String self=request.getParameter("self");
	
	PreparedStatement pstmt = null;
	
	try{
		String sql="INSERT INTO Members(id, name, passwd, email, info) VALUES(?,?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, username);
		pstmt.setString(3, passwd);
		pstmt.setString(4, email);
		pstmt.setString(5, self);
		pstmt.executeUpdate();
	}catch(SQLException ex){
		out.println("SQLException: " + ex.getMessage());
	}
	finally{
		if(pstmt!=null)
			pstmt.close();
		if(conn!=null)
			conn.close();
	}
%>
<%@include file="menu.jsp" %>
<div class="modal modal-sheet position-static d-block bg-body-secondary p-4 py-md-5" tabindex="-1" role="dialog" id="loginModal"
		aria-labelledby="loginModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content rounded-4 shadow">
		      <div class="modal-header p-5 pb-4 border-bottom-0">
		        <h1 class="fw-bold mb-0 fs-2"id="loginModalLabel">회원 가입 완료!</h1>
		      </div>
				<!-- 띄우려는 내용 -->
		      <div class="modal-body p-5 pt-0">
		        <form action="./login.jsp">
		          <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit" >로그인 페이지로 이동</button>
		          <small class="text-body-secondary">로그인 페이지로 이동 하시겠습니까?</small>
		          <hr class="my-4">
		        </form>
		      </div>
		    </div>
		  </div>
		</div>
</body>
</html>