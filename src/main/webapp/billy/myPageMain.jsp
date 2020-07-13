<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Welcome To Billy's Library</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/shop-homepage.css" rel="stylesheet">
<!--jQ-->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
   $(function(){
      $("#editInfo").click(function(){
         $.ajax({
            url:'/web/editInfoList.do',
            dataType:'html',
            data:{id:'${id}'},
            type:'POST',
            success:function(v){
          		$("#ajaxPaging").html('');
                $("#ajaxPaging").html(v);
            },error:function(){
               alert('err');
            }
         });
      });
      
      $("#myPost").click(function(){
    	 $.ajax({
    		 url:'/web/myPostList.do',
             dataType:'html',
             data:{id:'${id}'},
             type:'POST',
             success:function(v){
           		$("#ajaxPaging").html('');
                $("#ajaxPaging").html(v);
             },error:function(){
                alert('err');
             }
    	 });
      });
   });
</script>
</head>
<body>

   <!-- Navigation -->
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
         <a class="navbar-brand" href="/web/myPage.do?id=${id}">MY PAGE</a>
         <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarResponsive" aria-controls="navbarResponsive"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
               <li class="nav-item active"><a class="nav-link" href="/web/jsp/signin.jsp?id=null"
                  id="logout">Logout <span class="sr-only">(current)</span>
               </a></li>
            </ul>
         </div>
      </div>
   </nav>

   <!-- Page Content -->
   <div class="container">

      <div class="row">

         <div class="col-lg-3">

            <h1 class="my-4" align="center" style="font-size: 3.5em;">MENU</h1>
            <div class="list-group">
               <a href="/web/jsp/index.jsp?id=${id}" class="list-group-item" style="text-decoration:none "><strong>HOME</strong></a>
               
                  
                  <!-- <a href="#"
                  class="list-group-item">my rental</a> -->
                  <a href="#" id="myPost" class="list-group-item">my posts</a>
                  <a href="#" id="editInfo" class="list-group-item">edit info</a>
                  <a href="/web/Buysub.do" id="BuySubcribe" class="list-group-item">Buy Subcribe</a> 
                  <!-- <a href="#"
                  class="list-group-item">my zzimlist</a> -->
            </div>
            <br>

            
            <br> <br> <br> <br> <br> <br>
         </div>
         <!-- /.col-lg-3  MENU-->

         <div class="col-lg-9" id="contents">
         <br>
         <h1 align="center"  style="background-color: grey; font-style: italic ; font-size: 3em ;color: white" > ${id} 's Library</h1>
         <!-- <img alt="." src="/web/img/900x350.jpg" style="width: 51.5em"> -->
         <div id="ajaxPaging">
         	<img src="/web/jsp/mypageimg.jpg" height="475" width="825">
         </div>
         
         </div>
         <!-- /.col-lg-9  CONTENTS-->

      </div>
      <!-- /.row -->

   </div>
   <!-- /.container -->

   <!-- Footer -->
   <footer class="py-5 bg-dark">
      <div class="container"></div>
      <!-- /.container -->
   </footer>

   <!-- Bootstrap core JavaScript -->
   <script src="vendor/jquery/jquery.min.js"></script>
   <script src="vendor/jquery/myPageMain.js"></script>
   <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>