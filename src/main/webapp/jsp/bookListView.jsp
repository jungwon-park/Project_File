<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script>

 

</script>    
    
<c:forEach var="i" items="${list}" varStatus="cnt">
					<figure>
						<div class="book" data-book="book-${cnt.count}"
							style="background:url('/web/img/${i.bookcode}.jpg')"></div>
						<div class="buttons" id="bt">
							<a href="/web/readPage.do?code=${i.bookcode}&id=${id}" >Look inside</a>
							<a id="${i.bookcode}" href="/web/WishListInsert.do?code=${i.bookcode}" class="wishInsert" >찜하기</a>
							<a id="${i.bookcode}" href="/web/WishListDelete.do?code=${i.bookcode}" class="wishDel" >찜삭제</a>
						</div>
						<figcaption>
							<h2>${i.bookname}<span>${i.authorname}</span>
							</h2>
						</figcaption>
					</figure>
</c:forEach>