<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>	
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Billy</title>
<meta name="description"
	content="Fullscreen Pageflip Layout with BookBlock" />
<meta name="keywords"
	content="fullscreen pageflip, booklet, layout, bookblock, jquery plugin, flipboard layout, sidebar menu" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css"
	href="/web/css/jquery.jscrollpane.custom.css" />
<link rel="stylesheet" type="text/css" href="/web/css/bookread.css" />
<link rel="stylesheet" type="text/css" href="/web/css/custom.css" />
<script src="/web/js/modernizr.custom.79639.js"></script>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">

<link rel="stylesheet" href="/web/css/eval1.css">
<link rel="stylesheet" href="/web/css/eval2.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script type="text/javascript"
	src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script>
	
	$(function() {
		$("*").css("font-family", "times new roman");

		$("a#1page").click(function() {
			$("div#ipage").show();
		});

		$("button#btn").click(function() {
			//alert("test") ;
			if ($("input#eval").val().length == 0) {
				alert("감상평을 입력해 주세요.");
				return false;
			}			
		});
		  
		$(function() { 
			  $("input[name='score']").bind('click',function() {
		      $("input[name='score']").not(this).prop("checked", false);
			  });
		  });	
		  
		  $("button#btn").click(function(){
			 $("form#frm").submit(); 
		  });
		
	});
	
	function reLoad(){
		document.location.reload();
	}
</script>
</head>

<body style="overflow: scroll;">

	<div id="container" class="container slideRight" >

<c:forEach items="${readList}" var="i" varStatus="cnt">
		<div class="menu-panel">
			<h3>${id}'s Book</h3>
			<ul id="menu-toc" class="menu-toc2">

				<li class="menu-toc-current"><a href="/web/home.do">HOME</a></li>
				<!-- <li><a id="1page" href="#">첫페이지</a> </li> -->
				<li><a href="readPage.do?code=${i.bookcode}">돌아가기</a></li>
				<!-- <li><a href="#">찜하기</a></li> -->
				<li><a href="${i.link}" target="_blank">종이책 구매하기</a></li>
			</ul>
		</div>
		<!-- menu-panel -->
		

<div class="w3-col m7">
				<div class="w3-row-padding">
					<div class="w3-col m12">
						<div class="w3-card w3-round w3-white">
							<div class="w3-container w3-padding">
							<form action="/web/evalInsert.do?bookcode=${i.bookcode}&id=${id}" id="frm" method="post">
								<h6 class="w3-opacity">${i.bookname} 책에 대한 ${id}
									님의 한줄평을 입력해주세요.
								</h6>
								<input id="eval" type="text" name="evaluation"
									class="w3-border w3-padding" size="80%"
									style="margin-right: 5px; ime-mode: active;">
								<div style="display: inline; margin-left: 20px;">
									<%
										for (int i = 1; i < 6; i++) {
									%>
										<input type="checkbox" id="<%=i%>"  name="score" value="<%=i%>" />
										<%=i%>점
									<%
										}
									%>
								</div>
								<button  type="button" id="btn" class="w3-button w3-theme"
									style="margin-left: 15px; margin-bottom: 5px;">입력</button>
								</form>
							</div>
						</div>
					</div>
				</div>
      
       
				<div class="w3-container w3-card w3-white w3-round w3-margin">
      <c:forEach items="${evalList}" var="j" varStatus="cnt">
					<span class="w3-right w3-opacity">작성자: ${j.id}&emsp;작성일: ${j.writedate}</span>
					<h4 style="display: inline;">${j.bookname}</h4>&emsp;
					평점:${j.score}	
					<hr class="w3-clear">
					<p style="margin-bottom: 10px;">${j.evaluation}</p>
	</c:forEach>	
				</div>
			</div>
    			<!-- w3-col m7 -->
</c:forEach>			
	</div>
	<!-- /container -->



	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script src="/web/js/jquery.mousewheel.js"></script>
	<script src="/web/js/jquery.jscrollpane.min.js"></script>
	<script src="/web/js/jquerypp.custom.js"></script>
	<script src="/web/js/jquery.bookblock.js"></script>
	<script src="/web/js/page.js"></script>
	<script>
		$(function() {
			Page.init();
		});
	</script>
</body>
</html>