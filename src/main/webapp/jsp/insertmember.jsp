<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
</script>
<%
	request.setCharacterEncoding("EUC-KR");
	
	String id=request.getParameter("identifier");
	String birth=request.getParameter("snumber");
	String pw=request.getParameter("password1");
	String name=request.getParameter("name");
	String phonenumber=request.getParameter("tel");
	String email=request.getParameter("email");
	String nickname=request.getParameter("nname");
	
/* 	MemberBean bean= new MemberBean();
	bean.setId(id);
	bean.setBirth(birth);
	bean.setPw(pw);
	bean.setName(name);
	bean.setPhonenumber(phonenumber);
	bean.setEmail(email);
	bean.setNickname(nickname);
	
	AppleDao.insertMember(bean);
 */	response.sendRedirect("index.jsp");
%>
<body>
</body>
</html>