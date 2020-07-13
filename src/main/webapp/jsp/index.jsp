<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@
page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Billy</title>
<meta name="description" content="Book Preview with BookBlock" />
<meta name="keywords"
	content="BookBlock, book preview, look inside, css, transforms, animations, css3, 3d, perspective, fullscreen" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="/web/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="/web/css/demo.css" />
<link rel="stylesheet" type="text/css" href="/web/css/bookblock.css" />
<link rel="stylesheet" type="text/css" href="/web/css/component.css" />
<link rel="stylesheet" type="text/css" href="/web/css/3wc.css" />
<script src="js/modernizr.custom.js"></script>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script src="/web/js/sign.js" charset="UTF-8"></script>
<link href="/web/css/jquery.bxslider.css" rel="stylesheet">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="/web/js/jquery.bxslider.js"></script>
<script>
	$(function() {
		//total font 
		
		$("*").css("font-family", "times new roman");

		//accrdion css 
		$(".category").css({
			"background-color" : '#FFEB60',
			"border-radius" : "10px",
			"margin" : "80px 20px 20px 20px",
			"text-align" : "center",
			"box-shadow" : "3px 3px #787878"

		});

		$('.bxslider').bxSlider({
				auto : true,
				speed : 500,
				pause : 4000,
				mode : 'fade',
				autoControls : true,
				pager : true,
		});
	 		
	$.ajax({
				url:'/web/bookList.do',
				datatype:'html',
				type:'POST',
				success:function(data){			
					$("div#bookshelf").html(data);
				},
				error:function(){
					alert('error');
				}			
		});  
	$.ajax({
		url:'/web/category.do',
		datatype:'html',
		type:'POST',
		success:function(data){			
			$("div#cate").html(data);
		},
		error:function(){
			alert('error');
		}			
});
	 	 $("a#search").click(function(){
	 		if($("select#query").val()=='empty' || $("input#data").val().length==0){
				 alert("검색할 데이터를 입력해주세요.");
				 return false;
			}else{
				var query = $("select#query").val();
				var data = $("input#data").val();
				
				$.ajax({
					url:'/web/searchBookList.do?',
					datatype:'html',
					type:'POST',
					data:'query='+query+'&data='+data,
					success:function(data){			
						$("div#bookshelf").html(data);
					},
					error:function(){
						alert('error');
					}			
			  }); 
			}
	 	 });
	 	$('h1#tt').click(function() {
	 	    location.reload();
	 	});
	 	
	 	
	});

	
</script>

<style>
.imgBox {
	width: 60%;
	padding-top: 100px;
	padding-bottom: 100px;
}

.ui-menu {
	width: 150px;
}

.category {
	display: inline;
	padding: 10px 5px;
}

.accordion_title {
	font-size: 20px;
}
</style>

</head>

<body>

		<div id="scroll-wrap" class="container">
			<header class="codrops-header">
				<div class="codrops-top clearfix" style="font-size: 15px;">
					<!-- 검색 -->
					
					<a class="searchBox"> 
					<select name="query" id="query" style="width: 60px; height: 25px; margin-right: 5px;">
							<option value="all" selected="selected">전체</option>
							<option value="bookname">제목</option>
							<option value="authorname">저자</option>
					</select> 
					<input style="border-radius: 10px;" class="searchInput" type="text" name="data" id="data" placeholder="Search Data" size="40"> 
					<span class="button"><a id="search">검색</a></span>
					</a>
	
					<!-- 로그인 -->
					<c:if test="${id eq null}">
					<span class="right">
					<a class="codrops-icon codrops-icon-drop" href="signin.jsp" id="login"><span>로그인</span></a>
					<a class="codrops-icon codrops-icon-drop" href="signup.jsp" id="join"><span>회원가입</span></a> 
					</span>
					</c:if>
					<!-- 검색 카테고리 -->
					<c:if test="${id eq 'admin'}">
					<span class="right"> 
					<a class="codrops-icon codrops-icon-drop" href="/web/billy/adminMain.jsp" id="Admin"><span>AdminPage</span></a>
					<a class="codrops-icon codrops-icon-drop" href="/web/logoutProcess.do" id="login"><span>관리자LogOut</span></a>
					</span>
					</c:if>
					<c:if test="${id ne null and id ne 'admin'}">
					<span class="right"> 
					<a class="codrops-icon codrops-icon-drop" href="/web/jsp/subscribe.jsp" id="LogOut"><span>구독권구매</span></a>
					<a class="codrops-icon codrops-icon-drop" href="/web/myPage.do?id=${id}" id="user"><span>MyPage</span></a>
					<a class="codrops-icon codrops-icon-drop" href="/web/logoutProcess.do" id="LogOut"><span>${id}님  LogOut</span></a>
					</span>
					</c:if>
					
					</div>
				<h1 id="tt">Billy's Book</h1>
				
			</header>
			<!-- 카테고리 -->
			<!-- <div align="center" style="margin: 40px auto 20px; " >
               <div class="category">
                  <strong id="sc">&emsp;코믹(CO)&emsp;</strong>
               </div>
               <div class="category">
                  <strong>&emsp;추리()&emsp;</strong>
               </div>
               <div class="category">
                  <strong>&emsp;COMIC&emsp;</strong>
               </div>
               <div class="category">
                  <strong>&emsp;HEALING&emsp;</strong>
               </div>
               <div class="category">
                  <strong>&emsp;TREND&emsp;</strong>
               </div>
            </div> -->
            <div id="cate" align="center" style="margin: 40px auto 20px; " >
              
            </div> 

			<div class="main">

				<div
					style="max-width: 100%; margin-top: 50px; margin-left: 20%; margin-right: 20%">
					<ul class="bxslider">
						<li>
							<div style="position: absolute;">
								<h1></h1>
							</div> <img src="/web/img/baner1.JPG" />
						</li>
						<li>
							<div style="position: absolute;">
								<h1></h1>
							</div> <img src="/web/img/baner2.JPG" />
						</li>
						<li>
							<div style="position: absolute;">
								<h1></h1>
							</div> <img src="/web/img/baner3.JPG" />
						</li>
						<li>
							<div style="position: absolute;">
								<h1></h1>
							</div> <img src="/web/img/baner4.JPG" />
						</li>
					</ul>
				</div>
				<!-- bxslider -->
				
				
				<!-- 책리스트 뿌려지는 곳 -->
				<div id="bookshelf" class="bookshelf">

					
				</div>
				
				
			</div>
			<!-- /main -->
			<div class="related"></div>
		</div>
		<!-- /container -->
	<script src="js/bookblock.min.js"></script>
	<script src="js/classie.js"></script>
	<script src="js/bookshelf.js"></script>
	
</body>
</html>