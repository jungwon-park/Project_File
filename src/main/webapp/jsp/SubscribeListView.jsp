<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<script>
$("div[class='buttons']").click(function(){
	if(confirm("구매 하시겠습니까?")==true){
		alert('success');
		$("#Buy").submit();
	}else{
		return;
	}
});
</script>
<c:forEach var="i" items="${Sublist}" varStatus="cnt">
					<figure>
					    <div class="book" data-book="book-${cnt.count}" 
					  style="background:url('/web/img/${i.subscribename}.jpg')">
					  </div>
						<div class="buttons"><a href="/web/BuySubscribe.do?id=${id }
						&subscribecode=${i.subscribecode}" id="Buy">
						구매하기</a></div>
						<figcaption>
						<h2>${i.subscribecode}<span>${i.subscribename}</span></h2>
						</figcaption>
					</figure>
</c:forEach>
