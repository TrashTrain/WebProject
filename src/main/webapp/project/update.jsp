<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");

	String userid = request.getParameter("id");
	String name = request.getParameter("username");
	String passwd = request.getParameter("passwd");
	String email = request.getParameter("email");
	
	PreparedStatement pstmt = null;
	
	String sql = "update members set name = ?, passwd=?, email=? where id=?";
	
	try{
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, passwd);
		pstmt.setString(3, email);
		pstmt.setString(4, userid);
		
		int result = pstmt.executeUpdate();
		
		if(result==1){
			
			response.sendRedirect("update_success.jsp");
		}else{
			request.setAttribute("errorMessage", "수정 정보가 올바르지 않습니다.");
			RequestDispatcher rd = request.getRequestDispatcher("myPage.jsp");
			rd.forward(request, response);
		}
	}catch(Exception ex){
		out.println("SQLException: " + ex.getMessage());
	}finally{
		if(pstmt!=null)
			pstmt.close();
		if(conn!=null)
			conn.close();
	}
%>