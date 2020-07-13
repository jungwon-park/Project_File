<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>


<select name="categorycode" id="categoryList" style="width: 120px; height: 25px; margin-right: 5px; margin-top: 5px;">
							<option id="categorycode" value="categorycode" selected="selected">장르 코드</option>
							
							<c:forEach items="${list}" var="i" varStatus="cnt">
							<option value="${i.categorycode}">${i.categorycode} / ${i.categoryname}</option>
							</c:forEach>
</select>