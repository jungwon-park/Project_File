<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:forEach var="i" items="${searchList}" varStatus="cnt">
					<figure>
						<div class="book" data-book="book-${cnt.count}"
							style="background:url('/web/img/${i.bookcode}.jpg')"></div>
						<div class="buttons">
							<a href="/web/readPage.do?code=${i.bookcode}">Look inside</a>
						</div>
						<figcaption>
							<h2>${i.bookname}<span></span>
							</h2>
						</figcaption>
					</figure>
</c:forEach>