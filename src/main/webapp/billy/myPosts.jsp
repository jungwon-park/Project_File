<%@page import="sist.com.dto.EvalBookBean"%>
<%@page import="sist.com.dao.MilyDao"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myPosts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="/web/billy/css/w3c.css">

</head>
<script type="text/javascript"
	src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script>
	$(function(){
		$("#mod").click(function(){
			if($(this).text()=='수정'){
				$(this).text('확인');
				$("#eval").hide();
				$("#evalMod").attr("type",'text');
				$("#mod").click(function(){
					$("#eval").text("");
					$("form").submit();
					$("#eval").text($("#evalMod").val());
				});
			} 
		});
		
		/* $("#del").click(function(){
			$.ajax({
				url:'myPostDelete.do',
				dataType:'html',
				type:'POST',
				data:{subscribecode:'${i.subscribecode}', id:'${id}'},
				success:function(v){
					document.location.href='/web/';
				},error:function(){
					alert('err');
				}
			});
		}); */
	});
</script>

<body id="deleteAjax">
	<br>
	<div class="w3-container">
		<c:forEach var="i" items="${postlist}" varStatus="cnt">
		<div class="w3-card" style="width: 100%">
			<div class="w3-container">
			<%-- <p>${i.id }</p> --%>
			<form action="updateMyPost.do?evaluation=${i.evaluation2}&id=${id}&bookcode=${i.bookcode}" method="post">
				<img src="/web/billy/img/${i.bookcode}.jpg"
					alt="Avatar"
					class="w3-left w3-square w3-margin-right w3-margin-top w3-margin-bottom"
					style="width: 150px">
		
				<h3 align="left" name="bookname" id="bookname">${i.bookname}</h3>
				<p name="Eval" id="eval">${i.evaluation}</p>
				<input name="Eval" id="evalMod" type="hidden" value="${i.evaluation2}">
				
				<br> <br> <br>
				
				<p class="w3-text-blue-grey" align="left" name="score" id="score">별점: 
				
               <c:forEach var="e" begin="1" end="${i.score}">
               
               <b style="color: orange; font-size: 1em">★</b>
               
               </c:forEach>
               </p>
               </form>
				<p class="w3-text-blue-grey" align="left" name="regdate" id="regdate">작성일:${i.writedate}</p>
				
				 <!--  <button
					class="w3-button w3-block w3-dark-grey w3-right w3-margin-right"
					 style="width: 100px"  ><a href="#" id="mod">수정</a></button> -->
				 <button 
					class="w3-button w3-block w3-dark-grey w3-right w3-margin-right"
					style="width: 100px" id="del" name="del" ><a href="/web/myPostDelete.do?bookcode=${i.bookcode}&id=${id}">삭제</a></button>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
  </c:forEach>
 
</body>
</html>