<%-- <%@page import="model.CategoryBean"%>
<%@page import="model.PublisherBean"%>
<%@page import="model.AuthorBean"%>
<%@page import="java.util.List"%>
<%@page import="dao.AppleDao"%> --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$( "#testDatepicker" ).click(function() {
			$( "#testDatepicker" ).datepicker({
				nextText: '  ▶   ',
		         prevText: ' ◀  ' ,
		        	 dateFormat: "yymmdd"
		    });
			
		});
		$("input#add").click(
				function() {

					if ($("input#bookcode").val() == 0
							|| $("input#bookname").val() == 0
							|| $("input#authorcode").val() == 0
							|| $("input#publishercode").val() == 0
							|| $("input#publicationdate").val() == 0
							|| $("input#categorycode").val() == 0
							|| $("input#contents").val() == 0
							|| $("input#link").val() == 0) {

						alert("누락된 값이 있습니다");
					} else {
						
						var obj = new Object();

						let today = new Date();
						let year = today.getFullYear(); // 년도
						let month = today.getMonth() + 1; // 월
						let date = today.getDate(); // 날짜
						let dateP=year + '0' + month + '' + date;

						obj.bookcode = $("#bookcode").val();
						obj.bookname = $("#bookname").val();
						obj.authorcode = $("#authorcode").val();
						obj.publishercode = $("#publishercode").val();
						obj.publicationdate = $("#testDatepicker").val();
						obj.registrationdate = dateP;
						obj.categorycode = $("#categorycode").val();
						obj.contents = $("#contentsData").val();
						obj.link = $("#link").val();

						var jsonData = JSON.stringify(obj);

						$("#registrationdate").val(dateP);

						

						$("#addBookFrm").submit();
					}

				});

		/* select 추가 ajax */
		$("small#cateBtn").click(function() {
			$(this).hide();
			$.ajax({
				url : '/web/categoryListList.do',
				datatype : 'html',
				type : 'POST',
				success : function(data) {
					$("a#cate").html(data);
				},
				error : function() {
					alert('error');
				}
			});
		});

		$("small#publBtn").click(function() {
			$(this).hide();
			$.ajax({
				url : '/web/publisherList.do',
				datatype : 'html',
				type : 'POST',
				success : function(data) {
					$("a#pub").html(data);
				},
				error : function() {
					alert('error');
				}
			});
		});

		$("small#authorBtn").click(function() {
			$(this).hide();
			$.ajax({
				url : '/web/authorList.do',
				datatype : 'html',
				type : 'POST',
				success : function(data) {
					$("a#auth").html(data);

				},
				error : function() {
					alert('error');
				}
			});
		});

		$("small#authorUse")
				.click(
						function() {
							if ($("select#authorList option:checked").val() != 'authorcode') {
								$("input#authorcode2").val(
										$("select#authorList option:checked")
												.val());
							}
						});
		$("small#pubUse")
				.click(
						function() {
							if ($("select#publisherList option:checked").val() != 'publishercode') {
								$("input#publishercode2")
										.val(
												$(
														"select#publisherList option:checked")
														.val());
							}
						});
		$("small#cateUse")
				.click(
						function() {
							if ($("select#categoryList option:checked").val() != 'categorycode') {
								$("input#categorycode2").val(
										$("select#categoryList option:checked")
												.val());
							}
						});

	}); // jQ load
</script>
<body>
	<h3
		style="margin: 1em; background-color: #9e9e9e; border-radius: 10px; padding: 0.2em; font: bold; align-content: center;">
		<strong>Add Book</strong>
	</h3>
	<form id="addBookFrm" class="w3-container w3-card-4 w3-light-grey"
		action="/web/checkBook.do" method="post">
		<h2>NEW BOOK</h2>

		<p>
			<label>BOOKCODE</label> <input class="w3-input w3-border-0"
				type="text" id="bookcode" name="bookcode">
		</p>
		<p>
			<label>BOOKNAME</label> <input class="w3-input w3-border-0"
				type="text" id="bookname" name="bookname">
		</p>
		<p>
			<label>AUTHORCODE</label> <input class="w3-input w3-border-0"
				type="text" id="authorcode2" name="authorcode2"
				style="background-color: white;" disabled="disabled"> <small
				id="authorBtn"
				style="background-color: grey; padding: 1px; color: white">작가목록
				확인하기</small> <a id="auth"></a> <small id="authorUse"
				style="background-color: grey; padding: 1px; color: white">선택</small>

		</p>



		<p>
			<label>PUBLISHERCODE</label> <input class="w3-input w3-border-0"
				type="text" id="publishercode2" name="publishercode2"
				style="background-color: white;" disabled="disabled"> <small
				id="publBtn"
				style="background-color: grey; padding: 1px; color: white">출판사목록
				확인하기</small> <a id="pub"></a> <small id="pubUse"
				style="background-color: grey; padding: 1px; color: white">선택</small>

		</p>

		<p>
			<label>CATEGORYCODE</label> <input class="w3-input w3-border-0"
				type="text" id="categorycode2" name="categorycode2"
				style="background-color: white;" disabled="disabled"><small
				id="cateBtn"
				style="background-color: grey; padding: 1px; color: white">장르코드
				확인하기</small> <a id="cate"></a> <small id="cateUse"
				style="background-color: grey; padding: 1px; color: white">선택</small>
		</p>

		<p>
			<label>CONTENTS</label> <input class="w3-input w3-border-0"
				type="text" id="Fcontents" name="Fcontents">
		</p>
		<p>
			<label>LINK</label> <input class="w3-input w3-border-0" type="text"
				id="link" name="link"><br> <small>구매링크가 없는 경우
				'없음' 으로 입력해주세요.</small>
		</p>
		<p>
			<label>PUBLICATIONDATE</label> <input 
				type="text" id="testDatepicker" name="publicationdate" autocomplete="off">
				<input 
				type="text" id="registrationdate" name="registrationdate" hidden="true">
		</p>
		<p id="hideP"><br><br><br><br><br><br><br><br></p>
		<input id="add" value="ADD" type="button"></input> <br> <br>
	</form>
	<br>
	<br>
	
	<form action="/web/checkBook.do" method="post">
	
	</form>
</body>
</html>
