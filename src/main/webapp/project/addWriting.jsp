<%@page import="dao.QuestionBoardRepository"%>
<%@page import="dao.RecommendBoardRepository"%>
<%@page import="dto.RecommendBoard"%>
<%@page import="dto.QuestionBoard"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="dbconn.jsp" %>
<% 
	request.setCharacterEncoding("utf-8");
	String filename="";
	String realFolder="C:\\eclipse\\WebProject\\src\\main\\webapp\\resources\\images";

	int maxSize=5 * 1024 * 1024;
	String encType="utf-8";
	
	MultipartRequest multi= new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	QuestionBoard qb = new QuestionBoard();
	RecommendBoard rb = new RecommendBoard();
	
	String category = multi.getParameter("category");
	
	if(category.equals("recommend")){
		PreparedStatement pstmt = null;
		rb.setTitle(multi.getParameter("title"));
		rb.setScript(multi.getParameter("script"));
		rb.setUsername((String) session.getAttribute("inputid"));
		rb.setNum(RecommendBoardRepository.getInstance().getAllBoard().size()+1);
		
		Enumeration files = multi.getFileNames();
		String fname = (String) files.nextElement();
		rb.setFilename(multi.getFilesystemName(fname));
		
		String sql = "INSERT INTO recommend VALUES(?,?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, rb.getTitle());
		pstmt.setString(2, rb.getScript());
		pstmt.setString(3, rb.getFilename());
		pstmt.setString(4, rb.getUsername());
		pstmt.setInt(5, rb.getNum());
		RecommendBoardRepository.getInstance().addBoard(rb);
		pstmt.executeUpdate();
		if(pstmt!=null)
			pstmt.close();
		if(conn!=null)
			conn.close();
	} 
	else if(category.equals("question")){
		PreparedStatement pstmt = null;
		qb.setTitle(multi.getParameter("title"));
		qb.setScript(multi.getParameter("script"));
		qb.setUsername((String) session.getAttribute("inputid"));
		qb.setNum(QuestionBoardRepository.getInstance().getAllBoard().size()+1);
		
		Enumeration files = multi.getFileNames();
		String fname = (String) files.nextElement();
		qb.setFilename(multi.getFilesystemName(fname));
		
		
		String sql = "INSERT INTO question VALUES(?,?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, qb.getTitle());
		pstmt.setString(2, qb.getScript());
		pstmt.setString(3, qb.getFilename());
		pstmt.setString(4, qb.getUsername());
		pstmt.setInt(5, qb.getNum());
		QuestionBoardRepository.getInstance().addBoard(qb);
		pstmt.executeUpdate();
		if(pstmt!=null)
			pstmt.close();
		if(conn!=null)
			conn.close();
	}

	
	if(category.equals("recommend"))
		response.sendRedirect("recommendGameBoard.jsp");
	else if(category.equals("question"))
		response.sendRedirect("questionBoard.jsp");
%>
