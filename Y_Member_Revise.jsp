<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
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
    <link rel="stylesheet" href="./assets/css/Y_Member_Revise.css">
    <script src="./assets/js/change_data.js"></script>
</head>

<body id="R_body">
    <div class="R_side" id="R_side">
        <div class="R_side1" id="R_side1">
            APP教學
        </div>
        <div class="R_side2" id="R_side2">
            服務項目
        </div>
        <div class="R_side3" id="R_side3">
            常見問題
        </div>
        <div class="R_side4" id="R_side4">
            洗衣簡介
        </div>
    </div>
    <header class="R_header">
        <div class="R-Menupic" id="R_Menupic">
            <img src="./assets/img/R_Menu.png" class="R-imgmenu">
        </div>
        <div class="R-title">
            <a href="L_menu.html"><img src="./assets/img/R_titlepic.png" class="R-titlepic"></a>
        </div>
		
		<%if(session.getAttribute("Member_acc")!=null){
			out.print("<div class='R-out_btn'><input type='button' value='登出' id='logout'></div>");
			}
		  else{
			out.print("<div class='R-out_btn'><input type='button' value='登出'  value='登出'  style='visibility:hidden;'></div>" );
		  			  
		}%>
		
    </header>
    <div class="t-inmember">
        <h2>AI智慧喜會員中心個人資料</h2>
		<form action="udmember.jsp" method="post">
		  <%
		sql = "SELECT * FROM `member` where `Member_acc` ='"+ session.getAttribute("Member_acc") + "' ";
		ResultSet rs = con.createStatement().executeQuery(sql);
		rs.next();
		%>
        <div class="t-inmemberbox">
            <h3>帳號：</h3>
            <p><%=rs.getString(1)%></p>
        </div>
		<div class="t-inmemberbox">
            <h3>密碼：</h3>
            <p><input type='text'  id='t-name' value="<%=rs.getString(3)%>"</p>
        </div>
        <div class="t-inmemberbox">
            <h3>暱稱 :</h3>
            <input type='text'  id='t-name' value="<%=rs.getString(3)%>" readonly=true>
        </div>
        <div class="t-inmemberbox">
            <h3>信箱 :</h3>
            <input type="text" value="<%=rs.getString(6)%>" id="t-email" readonly="true">
        </div>
        <div class="t-inmemberbox">
            <h3>電話 :</h3>
            <p><%=rs.getString(2)%></p>
        </div>
        <div class="t-inmemberbox">
            <h3>地址：</h3>
            <input type="text" value="<%=rs.getString(5)%>" id="t-adress" readonly="true">
        </div>
		<%%>
    
 
        
        <div class='Y-btnbox'>
                <input type="button" class='Y-btn' id="t-btn" onclick="change()" value="編輯/修改資料">
            
        </div>
		</form>

        <div class="Y-btnbox">
            <a href="/Member_center.html">
                <button class="Y-btn" id="t-btn">返回</button>
            </a>
        </div>
    </div>
    
    <footer class="R-footer">
        <div class="R-foot-cpic" id="R-cpic">
            <img src="./assets/img/R_footercloth.svg" alt="" class="R-cpic">
        </div>
        <div class="R-foot-peopic" id="R_peopic">
            <img src="./assets/./img/R_footerpeople.png" alt="" class="R-peopic">
        </div>
        <div class="R-foot-mappic" id="R_mappic">
            <img src="./assets/img/R_footerplaceholder.png" alt="" class="R-mappic">
        </div>
        <div class="R-foot-change" id="Y_change">
            <img src="./assets/img/Y_help.png" alt="" class="Y_change">
        </div>
    </footer>
    <script src="./assets/js/nav.js"></script>
</body>


</html>