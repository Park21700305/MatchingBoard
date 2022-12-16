<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
	<style>

		#list {
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
			border-collapse: collapse;
			width: 100%;
		}
		#list td, #list th {
			border: 1px solid #ddd;
			padding: 8px;
			text-align:center;
		}
		#list tr:nth-child(even){background-color: #f2f2f2;}
		#list tr:hover {background-color: #ddd;}
		#list th {
			padding-top: 12px;
			padding-bottom: 12px;
			text-align: center;
			background-color: #006bb3;
			color: white;
		}
	</style>
</head>
<body>
<h1>게시물 수정</h1>
<form:form modelAttribute="u" method="POST" action="../editok">
	<form:hidden path ="id"/>
<table id="edit">
	<tr>
		<td>카테고리</td><td><form:input type="radio" path ="category"/></td>
	</tr>
	<tr>
		<td>팀명</td><td><form:input path ="teamname"/></td>
	</tr>
	<tr>
		<td>작성자</td><td><form:input type="text" path = "writer"/></td>
	</tr>
	<tr>
		<td>희망날짜</td><td><form:input type="date" path = "startdate"/></td>
	</tr>
	<tr>
		<td>희망시간</td><td><form:input type="time" path = "starttime"/></td>
	</tr>
	<tr>
		<td>인원 수</td><td><form:input type="number" path = "numpeople"/></td>
	</tr>
	<tr>
		<td>요구사항</td><td><form:textarea cols="50" rows="5" path = "content" /></td>
	</tr>
</table>
	<input type="submit" value="수정하기"/>
	<input type="button" value="취소하기" onclick="history.back()"/>
</form:form>
</body>
</html>