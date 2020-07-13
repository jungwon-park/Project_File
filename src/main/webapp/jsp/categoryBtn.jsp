<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script>
$("a.cate").click(function(){
	$.ajax({
		url:'/web/cateSelect.do?cate='+$(this).attr('id'),
		datatype:'html',
		type:'POST',
		success:function(data){			
			$("div#bookshelf").html(data);
		},
		error:function(){
			alert('error');
		}			
});
});
</script>
|
<c:forEach items="${list}" varStatus="cnt" var="i">
<a class="cate" id="${i.categorycode}">&emsp;${i.categoryname}&emsp;</a>|
<a class="cate2" id="${i.categoryname}" hidden="${i.categorycode}"></a>
</c:forEach>