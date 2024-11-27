<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("passwd");
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "SELECT * FROM Members WHERE id=? and passwd = ?";
	
	try{
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			id = rs.getString("id");
			String username = rs.getString("name");
			session.setAttribute("inputid", id);
			response.sendRedirect("mainPage.jsp");
		}else{
			request.setAttribute("errorMessage", "로그인 정보가 올바르지 않습니다.");
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
	}catch(Exception ex){
		out.println("SQLException: " + ex.getMessage());
	}finally{
		if(rs!=null)
			rs.close();
		if(pstmt!=null)
			pstmt.close();
		if(conn!=null)
			conn.close();
	}
	
%>