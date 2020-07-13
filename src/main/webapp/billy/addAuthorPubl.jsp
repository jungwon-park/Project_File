<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {

		$("input#add1").click(
				function() {
					//authorcode authorname

					if ($("input#authorcode").val() == 0
							|| $("input#authorname").val() == 0) {

						alert("누락된 값이 있습니다");
						$("input#authorcode").val("");
						$("input#authorname").val("");

					} else {
						//alert 반복 문제 생길 시 여기 삭제 
						//alert("작가가 추가되었습니다.");
					
						
						$("#AuthorFrm").submit();

					}

				});
		$("input#add2").click(
				function() {
					//publishercode publishername "callnumber" 

					if ($("input#publishercode").val() == 0
							|| $("input#publishername").val() == 0
							|| $("input#callnumber").val() == 0) {

						alert("누락된 값이 있습니다");
						$("input#publishercode").val("");
						$("input#publishername").val("");
						$("input#callnumber").val("");
					} else {
						//alert 반복 문제 생길 시 여기 삭제 
						alert("출판사가 추가되었습니다.");
						//ajax 실험 
					/* 	 $.ajax({
						url : '/web/checkPublisher.do',
						datatype : 'text',
						success : function(data) {

							location.reload();
							$("#isPubl").text(data);
						},
						error : function() {
							alert('error');
						}
					}); */ 
						$("#PublFrm").submit();

					}

				});

		$("button").css({
			"margin" : "5px",
			"padding" : "5px"
		});

	}); // jQ load
</script>
<body>

	<h3
		style="margin: 1em; background-color: #9e9e9e; border-radius: 10px; padding: 0.2em; font: bold; align-content: center;">
		<strong>Add Publisher&Author</strong>
	</h3>

	<form id="AuthorFrm" class="w3-container w3-card-4 w3-light-grey"
		action="/web/checkAuthor.do" method="post">
		<h2>NEW Author</h2>

		<p>
			<label>AUTHORCODE</label> <input class="w3-input w3-border-0"
				type="text" id="authorcode" name="authorcode">
		</p>
		<p>
			<label>AUTHORNAME</label> <input class="w3-input w3-border-0"
				type="text" id="authorname" name="authorname">
		</p>
		<input id="add1" type="button" value="ADD"></input> <br> <br>
	</form>
	<br>
	<br>
	<form id="PublFrm" class="w3-container w3-card-4 w3-light-grey"
		action="/web/checkPublisher.do" method="post">
		<h2>NEW Publisher</h2>

		<p>
			<label>PUBLISHERCODE</label> <input class="w3-input w3-border-0"
				type="text" id="publishercode" name="publishercode">
		</p>
		<p>
			<label>PUBLISHERNAME</label> <input class="w3-input w3-border-0"
				type="text" id="publishername" name="publishername">
		</p>
		<p>
			<label>CALLNUMBER</label> <input class="w3-input w3-border-0"
				type="text" id="callnumber" name="callnumber">
		</p>
		<input id="add2" type="button" value="ADD"></input> <label id="isPubl">${isPubl}
		</label> <br> <br>
	</form>
	<br>
	<br>
	<br>

</body>
</html>
