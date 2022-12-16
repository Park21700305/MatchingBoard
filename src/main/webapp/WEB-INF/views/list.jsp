<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
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

        label{display: inline-block;}
        label{width: 130px}
        button{background-color: #006bb3; color: #f2f2f2; font-size: 15px}
    </style>
</head>
<body>

<h1>Handong Hiddink Field Matching Board</h1>
<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>Category</th>
        <th>TeamName</th>
        <th>Writer</th>
        <th>Content</th>
        <th>Number of People</th>
        <th>Date</th>
        <th>Time</th>
        <th>Regdate</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>

    <c:forEach items = "${list}" var="u">
        <tr>
            <td>${u.id}</td>
            <td>${u.category}</td>
            <td>${u.teamname}</td>
            <td>${u.writer}</td>
            <td>${u.content}</td>
            <td>${u.numpeople}</td>
            <td>${u.startdate}</td>
            <td>${u.starttime}</td>
            <td>${u.regdate}</td>
            <td><a href="editform/${u.seq}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'"> Add New Post </button>
<button type="button" onclick="location.href = '../login/logout'"> Logout </button>
</body>
<script>
    function delete_ok(id){
        var a = confirm("정말로 삭제하겠습니까?");
        if(a) location.href='deleteok/' + id;
    }
</script>
</html>
