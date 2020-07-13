
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
</head>
<body>
	<h3
		style="margin: 1em; background-color: #9e9e9e; border-radius: 10px; padding: 0.2em; font: bold; align-content: center;">
		<strong>Total Post</strong>
	</h3>

	<div class="w3-container">
		<ul class="w3-ul w3-card-4">

			<c:forEach varStatus="cnt" items="${evalBookList}" var="i">

				<li class="w3-bar"><span
					onclick="this.parentElement.style.display='none'"
					class="w3-bar-item w3-button w3-white w3-xlarge w3-right">×</span>
					<img src="/web/billy/img/${i.bookcode}.jpg"
					class="w3-bar-item w3-hide-small" style="width: 85px" >

					<div class="w3-bar-item">
						<span class="w3-large"> ${i.id} </span>| <span class="w3-large">
							${i.bookname}</span>
						<c:choose>
							<c:when test="${i.score eq 5}">
								<b style="color: orange; font-size: 1em">★</b>
								<b style="color: orange; font-size: 1em">★</b>
								<b style="color: orange; font-size: 1em">★</b>
								<b style="color: orange; font-size: 1em">★</b>
								<b style="color: orange; font-size: 1em">★</b>
							</c:when>
							<c:when test="${i.score eq 4}">
								<b style="color: orange; font-size: 1em">★</b>
								<b style="color: orange; font-size: 1em">★</b>
								<b style="color: orange; font-size: 1em">★</b>
								<b style="color: orange; font-size: 1em">★</b>
							</c:when>
							<c:when test="${i.score eq 3}">
								<b style="color: orange; font-size: 1em">★</b>
								<b style="color: orange; font-size: 1em">★</b>
								<b style="color: orange; font-size: 1em">★</b>
							</c:when>
							<c:when test="${i.score eq 2}">
								<b style="color: orange; font-size: 1em">★</b>
								<b style="color: orange; font-size: 1em">★</b>
							</c:when>
							<c:when test="${i.score eq 1}">
								<b style="color: orange; font-size: 1em">★</b>
							</c:when>



						</c:choose>




						<br> <br> <span>${i.evaluation} </span>



					</div></li>

			</c:forEach>


		</ul>
		<br> <br>
	</div>
</body>
</html>