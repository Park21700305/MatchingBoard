<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>

        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid beige;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: beige;}
        #list tr:hover {background-color: beige;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: navy;
            color: beige;
        }
    </style>
</head>
<body>

<h1>매칭 조건 작성</h1>
<form action="addok" method="post">
    <table id="edit">
        <tr><td>카테고리</td><td>
            <select class="form-select" name="category"/>
            <option value="밀어내기">밀어내기</option>
            <option value="Lab 대항">Lab 대항</option>
            <option value="팀 대전">팀 대전</option>
            <option value="동아리 매치">동아리 매치</option>
            <option value="단순매치">단순매치</option>
            </select>
        </td></tr>
        <tr><td>팀명</td><td><input type="text" name="teamname"/></td></tr>
        <tr><td>작성자</td><td><input type="text" name="writer"/></td></tr>
        <tr><td>희망날짜</td><td><input type="date" name="startdate"/></td></tr>
        <tr><td>희망시간</td><td><input type="time" name="starttime"/></td></tr>
        <tr><td>인원 수</td><td><input type="number" name="numpeople"/></td></tr>
        <tr><td>요구사항</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
    </table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>
</form>
</body>
</html>