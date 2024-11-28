<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="dbconn.jsp" %>

<%
	String id=(String)session.getAttribute("inputid");
	PreparedStatement pstmt=null;
	ResultSet rs = null;
	
	String sql = "select * from members where id = ?";
	try{
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			id = rs.getString("id");
			String username = rs.getString("name");
			String passwd = rs.getString("passwd");
			String email = rs.getString("email");
			
			request.setAttribute("id", id);
			request.setAttribute("name", username);
			request.setAttribute("passwd", passwd);
			request.setAttribute("email", email);
			request.getRequestDispatcher("myPage.jsp").forward(request, response);
		}else{
			response.sendRedirect("login.jsp");
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