<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="com.exam.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="com.exam.dao.MemberDao"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// DB객체 준비
MemberDao memberDao = MemberDao.getInstance();
List<MemberVO> memberList = memberDao.getMembers();
//json-simle lib
JSONArray jsonArray = new JSONArray();
for(MemberVO memberVO : memberList){
	JSONObject jsonObject = new JSONObject();
	
	jsonObject.put("id", memberVO.getId());
	jsonObject.put("passwd", memberVO.getPasswd());
	jsonObject.put("name",memberVO.getName());
	
	jsonArray.add(jsonObject);
	
}

//out.println(jsonArray);
%>
<%=jsonArray %>