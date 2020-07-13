<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Bily</title>
		<meta name="description" content="Fullscreen Pageflip Layout with BookBlock" />
		<meta name="keywords" content="fullscreen pageflip, booklet, layout, bookblock, jquery plugin, flipboard layout, sidebar menu" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico"> 
		<link rel="stylesheet" type="text/css" href="/web/css/jquery.jscrollpane.custom.css" />
		<link rel="stylesheet" type="text/css" href="/web/css/bookread.css" />
		<link rel="stylesheet" type="text/css" href="/web/css/custom.css" />
		<script src="/web/js/modernizr.custom.79639.js"></script>
		<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
		<script>
		$(function(){
			$("a#1page").click(function(){
				$("div#ipage").show();
			});
		});
		</script>
	
	</head>
	<body>
<div id="container" class="container slideRight">	
<c:forEach items="${readList}" var="i" varStatus="cnt">


			<div class="menu-panel">
				<h3>${id}'s Book</h3>
				<ul id="menu-toc" class="menu-toc2">				
					<li class="menu-toc-current"><a href="/web/home.do">HOME</a></li>
					<!-- <li><a id="1page" href="#">첫페이지</a> </li> -->
					<li><a href="evalPage.do?code=${i.bookcode}">한줄평</a></li>
					<!-- <li><a href="#">찜하기</a></li> -->
					<li><a href="${i.link}" target="_blank">종이책 구매하기</a></li>
				</ul>				
			</div>

			<div class="bb-custom-wrapper">
				<div id="bb-bookblock" class="bb-bookblock">
					<div class="bb-item" id="page${cnt.count}">
						<div class="content">
							<div class="scroller">
								${cnt.count}page<br><br>
								<h3>${i.bookname}</h3><br>
								
								<p>${i.contents}</p>														
							</div>
							
						</div>
						
					</div>
				</div>
				
				<nav>
					<span id="bb-nav-prev">&larr;</span>
					<span id="bb-nav-next">&rarr;</span>
				</nav>

				<span id="tblcontents" class="menu-button">Table of Contents</span>
			</div>

</c:forEach>
		</div>
		
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
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