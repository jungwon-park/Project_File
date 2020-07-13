<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" type="text/css" href="/web/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="/web/css/demo.css" />
<link rel="stylesheet" type="text/css" href="/web/css/bookblock.css" />
<link rel="stylesheet" type="text/css" href="/web/css/component.css" />
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">

</script>
<title>Billy</title>
</head>
<body>
		<div id="scroll-wrap" class="container">
		
			<header class="codrops-header">
				<div class="codrops-top clearfix" style="font-size: 15px;">
	
					<!-- �α��� -->
					<c:if test="${id eq null}">
					<span class="right">
					<a class="codrops-icon codrops-icon-drop" href="/web/jsp/signin.jsp" id="login"><span>�α���</span></a>
					<a class="codrops-icon codrops-icon-drop" href="/web/jsp/signup.jsp" id="join"><span>ȸ������</span></a> 
					</span>
					</c:if>
					<!-- �˻� ī�װ� -->
					<c:if test="${id eq 'admin'}">
					<span class="right"> 
					<a class="codrops-icon codrops-icon-drop" href="/web/billy/shop/startbootstrap-shop-homepage-gh-pages/adminMain.jsp" id="Admin"><span>AdminPage</span></a>
					<a class="codrops-icon codrops-icon-drop" href="/web/logoutProcess.do" id="login"><span>������LogOut</span></a>
					</span>
					</c:if>
					<c:if test="${id ne null and id ne 'admin'}">
					<span class="right"> 
					<a class="codrops-icon codrops-icon-drop" href="/web/billy/shop/startbootstrap-shop-homepage-gh-pages/mypage.jsp" id="user"><span>MyPage</span></a>
					<a class="codrops-icon codrops-icon-drop" href="/web/logoutProcess.do" id="LogOut"><span>${id}��LogOut</span></a>
					</span>
					</c:if>
					
					</div>
				<h1 id="tt">${id}���� ����</h1>
				
			</header>
			
			<a id="homeBtn" href="/web/jsp/index.jsp">
			<img src="/web/img/bback.JPG">	<br>
		    <a>&nbsp; ���ư���</a>
			</a>
	<div class="main">	
	<div id="bookshelf" class="bookshelf">

		<c:forEach items="${list}" var="i" varStatus="cnt">
			<figure>
				<div class="book" data-book="book-${cnt.count}"
					style="background:url('/web/img/${i.bookcode}.jpg')"></div>
				<div class="buttons" id="bt">
					<a>���� ��¥: ${i.wishdate}</a>
				</div>
				<figcaption>
					<h2>${i.bookname}
					</h2>
				</figcaption>
			</figure>

		</c:forEach>
	</div>
	</div>
	</div>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script src="/web/js/jquery.mousewheel.js"></script>
	<script src="/web/js/jquery.jscrollpane.min.js"></script>
	<script src="/web/js/jquerypp.custom.js"></script>
	<script src="/web/js/jquery.bookblock.js"></script>
	<script src="/web/js/page.js"></script>
</body>
</html>