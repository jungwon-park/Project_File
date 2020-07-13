<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<select name="publishercode" id="publisherList" style="width: 120px; height: 25px; margin-right: 5px; margin-top: 5px;">
							<option id="publishercode" value="publishercode" selected="selected">출판사 코드</option>
							
							<c:forEach items="${list}" var="i" varStatus="cnt">
							<option value="${i.publishercode}">${i.publishercode} / ${i.publishername}</option>
							</c:forEach>
</select>