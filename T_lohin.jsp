<!DOCTYPE html>
<%@ page import = "java.io.*"%>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--<meta name="viewport" content="width=device-width, initial-scale=1.0">-->
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>填寫會員資料</title>
    <link rel="stylesheet" type="text/css" href="assets/css/t-inmember.css">
    <link rel="stylesheet" type="text/css" href="./assets/css/R-header.css">
    <link rel="stylesheet" type="text/css" href="./assets/css/R-footer.css">
</head>

<body>
    <div class="t-inmember">
        <h2>AI智慧喜會員登入</h2>
	<form action="checkai.jsp" method="post">
        <div class="t-inmemberbox">
            <h3>請輸入帳號（身分證字號） :</h3>
            <input type="text" placeholder="請輸入帳號（身分證字號）" id="t-logname" name="account" >
        </div>
        <div class="t-inmemberbox">
            <h3>請輸入密碼 :</h3>
            <input type="text" placeholder="請輸入你的密碼" id="t-logpassword" name="Member_pwd">
        </div>
        <div class="t-btnbox">
            <a href="./L_menu.jsp">
                <button class="t-btn" id="t-btn">完成</button>
            </a>
        </div>
	</form>
    </div>
</body>

</html>