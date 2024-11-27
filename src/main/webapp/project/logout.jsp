<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	session.removeAttribute("inputid");

	response.sendRedirect("./mainPage.jsp");
%>