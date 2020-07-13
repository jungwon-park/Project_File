<%-- <%@page import="dao.AppleDao"%>
<%@page import="model.MemberBean"%> --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1"
>
<meta name="description" content="">
<meta name="author" content="">

<title>Sign-In</title>

<!-- Bootstrap Core CSS -->
<link href="/web/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<!-- <link href="css/login.css" rel="stylesheet"> -->
<link href="/web/css/clean-blog.css" rel="stylesheet">

<!-- Custom Fonts -->
<link
   href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
   rel="stylesheet" type="text/css">
<link
   href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
   rel='stylesheet' type='text/css'>
<link
   href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
   rel='stylesheet' type='text/css'>
</head>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script src="/web/js/sign.js" charset="UTF-8"></script>
<script>
</script>
<%-- <%
   List<MemberBean>list = AppleDao.selectmember();
%> --%>
<%-- <%=list %> --%>
<body style="background-image: url(#)">
   <div class="container" style="margin-top: 120px">
      <div class="row">
         <div class="main">
         <h1 align="center"><a href="/web/jsp/index.jsp">Billy</a></h1>
            <h3>
                SIGN IN
            </h3>

            <form role="form" 
            action="/web/idCheck.do">
            
               <div class="form-group">
                  <input type="text" placeholder="ID" class="form-control"
                     id="id" name="id" />    
               </div>
               <div class="form-group">
                  <!--<a class="pull-right" href="#">Esqueci a senha</a>-->
                  <input type="password" placeholder="PASSWORD " class="form-control"
                     id="pw" name="pw" />
               </div>
               <div class="row">
                  <div class="col-xs-12 col-sm-12 col-md-12">
                     <a href="#" class="btn btn-sm btn-danger btn-block" id="signin">SIGN IN</a>
                  </div>
               </div>
               <div class="login-or">
                  <hr class="hr-or">
                  <span class="span-or">or</span>
               </div>
               <div class="row">
                  <div class="col-xs-12 col-sm-12 col-md-12">
                  
                     <a href="/web/jsp/signup.jsp" class="btn btn-sm btn-info btn-block">SIGN UP</a>
                  </div>
               </div>
               <h6 style="font-weight: 400;font-size: 0.85714rem; color: gray " align="center">
                  비밀번호가 기억나지 않으세요? <u><a href="#">비밀번호재설정</a></u>
               </h6>
            </div>
            </form>
         </div>
      </div>
   </div>
</body>
</html>