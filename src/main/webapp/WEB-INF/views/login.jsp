<%--
  Created by IntelliJ IDEA.
  User: Park
  Date: 2022/12/09
  Time: 12:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body{
            background-image: url("../img/img.png");
            background-size:cover;
        }
        img, label{display: inline-flex;}
        label{width: 150px}
        button{background-color: navy; color: beige; font-size: 15px}
    </style>
</head>
<body>
<div style='width: 100%; text-align: center; padding-top: 220px'>
    <img src="../img/photo.png" height="120" width="120"><br>
    <form method="post" action="loginOk">
        <div><label style="font-weight: bold; background-color: black; color: #f2f2f2">User ID: </label>
            <input style="font-weight: bold; background-color: black; color: #f2f2f2" type="text" name="userid" /></div>
        <div><label style="font-weight: bold; background-color: black; color: #f2f2f2">Password: </label>
            <input style="font-weight: bold; background-color: black; color: #f2f2f2" type="password" name="password" /></div>
        <br>
        <button type="submit">login</button>
    </form>
</div>
<div style="font-weight: bold; color: #f2f2f2; position: absolute; left: 0px; bottom: 0px; background-color: black">
    <pre>매칭 정보입력(시간, 전화번호 필수) or 매칭 상대 고르기(content란에 전화번호로 연락)</pre>
    <pre>                               ⬇</pre>
    <pre>           상대 매칭 시 작성자가 예약정보 수정(enable->reserved)</pre>
    <pre>                   - 게시글은 관리자가 일괄 관리 및 삭제 -</pre>
</div>

</body>
</html>
