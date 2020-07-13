<%@page import="sist.com.dao.MilyDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
   $(function(){
   
   });
</script>
</head>
<body>
  <%--  <%
      request.setCharacterEncoding("EUC-KR");
      String id=request.getParameter("id");
      String pw=request.getParameter("pw");
      AppleDao.idcheckProcess(id, pw);
      
      boolean tf=AppleDao.idcheckProcess(id, pw);
      
      if(tf){
         session.setAttribute("id", id);
         //session.setMaxInactiveInterval(360);
            response.sendRedirect("index.jsp");
       }else{
            response.sendRedirect("signin.jsp");
       }
   %>
   
   <%=id %>
   <%=pw %>
    --%>
</body>
</html>