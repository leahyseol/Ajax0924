<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name=request.getParameter("name");
	String age=request.getParameter("age");
	//out.pringln();
	
%>
<h1><%=name %> : <%=age %></h1>