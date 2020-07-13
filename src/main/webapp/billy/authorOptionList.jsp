<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<select name="authorcode" id="authorList" style="width: 120px; height: 25px; margin-right: 5px; margin-top: 5px;">
							<option id="authorcode" value="authorcode" selected="selected">작가 코드</option>
							
							<c:forEach items="${list}" var="i" varStatus="cnt">
							<option value="${i.authorcode}">${i.authorcode} / ${i.authorname}</option>
							</c:forEach>
</select>
