<%@page import="dao.QuestionBoardRepository"%>
<%@page import="dao.RecommendBoardRepository"%>
<%@page import="dto.QuestionBoard"%>
<%@page import="dto.RecommendBoard"%>
<%@page import="com.mysql.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<body>
<script>
</script>
<%@include file="menu.jsp" %>
<%@include file="recommend.jsp" %>
<%@include file="dbconn.jsp" %>
<%
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	RecommendBoardRepository.getInstance().resetAllBoard();
	QuestionBoardRepository.getInstance().resetAllBoard();
	try{
		String sql = "select * from recommend order by num desc limit ?, 10";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, 0);
		
		rs = pstmt.executeQuery();
		while(rs.next()){
			RecommendBoard board = new RecommendBoard();
			board.setTitle(rs.getString("title"));
			board.setScript(rs.getString("script"));
			board.setFilename(rs.getString("file"));
			board.setUsername(rs.getString("username"));
			board.setNum(rs.getInt("num"));
			RecommendBoardRepository.getInstance().addBoard(board);
		}
	}catch(Exception ex){
		ex.printStackTrace();
	}finally{
		if(rs!=null)
			rs.close();
		if(pstmt!=null)
			pstmt.close();
	}
%>

<%
	ResultSet qrs = null;
	PreparedStatement qpstmt = null;
	try{
		String sql = "select * from question order by num desc limit ?, 10";
		qpstmt = conn.prepareStatement(sql);
		qpstmt.setInt(1, 0);
		
		qrs = pstmt.executeQuery();
		while(qrs.next()){
			QuestionBoard board = new QuestionBoard();
			board.setTitle(qrs.getString("title"));
			board.setScript(qrs.getString("script"));
			board.setFilename(qrs.getString("file"));
			board.setUsername(qrs.getString("username"));
			board.setNum(qrs.getInt("num"));
			QuestionBoardRepository.getInstance().addBoard(board);
		}
	}catch(Exception ex){
		ex.printStackTrace();
	}finally{
		if(qrs!=null)
			qrs.close();
		if(qpstmt!=null)
			qpstmt.close();
		if(conn!=null)
			conn.close();
	}
%>
</body>
</html>