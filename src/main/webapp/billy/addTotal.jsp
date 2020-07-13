<%-- <%@page import="model.BookBean"%>
<%@page import="model.AuthorBean"%>
<%@page import="dao.AppleDao"%>
<%@page import="model.PublisherBean"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%-- <%
   BookBean Bbean = new BookBean();
   request.setCharacterEncoding("UTF-8");
   String job = request.getParameter("job");

   if (job.equals("publ")) {
      String publishercode = request.getParameter("publishercode");
      String publishername = request.getParameter("publishername");
      String callnumber = request.getParameter("callnumber");

      PublisherBean Pbean = new PublisherBean();
      Pbean.setPublishername(publishername);
      Pbean.setPublishercode(publishercode);
      Pbean.setCallnumber(callnumber);

      AppleDao.addPublAdmin(Pbean);

   }
   if (job.equals("author")) {
      String authorcode = request.getParameter("authorcode");
      String authorname = request.getParameter("authorname");

      AuthorBean Abean = new AuthorBean();
      Abean.setAuthorcode(authorcode);
      Abean.setAuthorname(authorname);

      AppleDao.addAuthorAdmin(Abean);
   }
   if (job.equals("book")) {

      //BOOKCODE   BOOKNAME   AUTHORCODE   PUBLISHERCODE   PUBLICATIONDATE   
      //REGISTRATIONDATE   CATEGORYCODE   CONTENTS   LINK   

      String bookcode = request.getParameter("bookcode");
      String bookname = request.getParameter("bookname");
      String authorcode = request.getParameter("authorcode");
      String publishercode = request.getParameter("publishercode");
      String categorycode = request.getParameter("categorycode");
      String contents = request.getParameter("contents");
      String link = request.getParameter("link");

      Bbean.setBookcode(bookcode);
      Bbean.setBookname(bookname);
      Bbean.setAuthorcode(authorcode);
      Bbean.setPublishercode(publishercode);
      Bbean.setCategorycode(categorycode);
      Bbean.setContents(contents);
      Bbean.setLink(link);

      //AppleDao.addBookAdmin(Bbean);

   }

   response.sendRedirect("adminMain.jsp");
   //add - redirect - main
%> --%>
<script type="text/javascript">
   //document.location.reload(true); 
   //document.location.href("adminMain.jsp");
</script>
<body>
   <h1>add Total</h1>
   <%-- <%=Bbean%> --%>


</body>
</html>