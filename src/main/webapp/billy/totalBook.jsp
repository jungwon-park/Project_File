<%-- <%@page import="java.util.List"%>
<%@page import="model.BookBean"%>
<%@page import="dao.AppleDao"%> --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%><%@ taglib prefix="c"
	uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/shop-homepage.css" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!--jQ-->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="vendor/jquery/adminMain.js"></script>
</head>

<body>
	<h3
		style="margin: 1em; background-color: #9e9e9e; border-radius: 10px; padding: 0.2em; font: bold; align-content: center;">
		<strong>Total Book</strong>
	</h3>


	<table class="w3-table w3-bordered">
		<tr>
			<th>BOOKCODE</th>
			<th>BOOKNAME</th>
			<th>AUTHOR</th>
			<th>PUBLISHER</th>
			<th>CATEGORY</th>

		</tr>
		<c:forEach varStatus="cnt" items="${totalBook}" var="i">
			<tr>
				<td><img src="/web/billy/img/${i.bookcode}.jpg"
					class="w3-bar-item w3-hide-small" style="width: 85px"><br>
					<b>${i.bookcode}</b></td>
				<td>${i.bookname}</td>
				<td>${i.authorname}</td>
				<td>${i.publishername}</td>
				<td>${i.categoryname}<br>
				<br>
				<br>
				<br>
				<br> <a
					href="/web/delBookAdmin.do?bookcode=${i.bookcode}"><input type="button"
						value="삭제" id="bookDel" name="btnCss"></a></td>

			</tr>
		</c:forEach>
	</table>
	<br>
	<br>
	<br>
	<br>
</body>
</html>