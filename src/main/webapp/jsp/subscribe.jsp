<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%-- <%@page import="model.InsertBookBean"%>
<%@page import="java.util.List"%>
<%@page import="dao.AppleDao"%>
<%@page import="model.BookBean"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Bily</title>
		<meta name="description" content="Book Preview with BookBlock" />
		<meta name="keywords" content="BookBlock, book preview, look inside, css, transforms, animations, css3, 3d, perspective, fullscreen" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="/web/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="/web/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="/web/css/bookblock.css" />
		<link rel="stylesheet" type="text/css" href="/web/css/component.css" />
		<script src="js/modernizr.custom.js"></script>
		<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
		<script src="/web/js/sign.js" charset="UTF-8"></script>
		<script >
		$(function(){
			
			var query = $("select#query").val();
			$.ajax({
				url:'/web/searchSub.do?',
				datatype:'html',
				type:'POST',
				data:'query='+query,
				success:function(data){		
					$("div#bookshelf").html(data);
				},
				error:function(){
					alert('error');
				}
				});
				
			
			
			//total font 
		      $("*").css("font-family", "times new roman")
		      $("a#search").click(function(){
			 		if($("select#query").val()=='empty'){
						 alert("구독권을 선택해주세요.");
						 return false;
					}else{
						var query = $("select#query").val();
						$.ajax({
							url:'/web/searchSub.do?',
							datatype:'html',
							type:'POST',
							data:'query='+query,
							success:function(data){		
								$("div#bookshelf").html(data);
							},
							error:function(){
								alert('error');
							}			
					  });  
					}
			 	 });
		});	
		</script>

<style>

</style> 

	</head>
	<body>	
	
		<div id="scroll-wrap" class="container">
		
			<header class="codrops-header">
				<div class="codrops-top clearfix" style="font-size: 15px;">
				
               	<!-- 검색 -->
               <a class="searchBox" > 
               		<!-- 검색카테고리 -->
             	 <select name="query" id="query" style="width: 150px; height: 25px; margin-right: 5px;">
							<option value="all" selected="selected">전체</option>
							<option value="MONTH">MONTH</option>
							<option value="YEAR">YEAR</option>
					</select> 
					<span class="button"><a id="search">검색</a></span>
					</a>
               		 
               <c:if test="${id eq null}">
					<span class="right">
					<a class="codrops-icon codrops-icon-drop" href="signin.jsp" id="login"><span>로그인</span></a>
					<a class="codrops-icon codrops-icon-drop" href="signup.jsp" id="join"><span>회원가입</span></a> 
					</span>
			   </c:if>
			    <c:if test="${id ne null and id ne 'admin'}">
					<span class="right"> 
					<a class="codrops-icon codrops-icon-drop" href="/web/myPage.do?id=${id}" id="user"><span>MyPage</span></a>
					<a class="codrops-icon codrops-icon-drop" href="/web/logoutProcess.do" id="LogOut"><span>${id}님LogOut</span></a>
					</span>
				</c:if>
            </div>
            <h1 id="tt">${id }'s Book</h1>
            </header>      
             
			<div class="main">					
			<div id="bookshelf" class="bookshelf">
			
			</div>
			</div><!-- /main -->
			<!-- /<form name="frm" id="frm" method="POST"> -->
		</div><!-- /container -->
			<div class="related">
			<!--하단-->
			</div>
	</body>
</html>