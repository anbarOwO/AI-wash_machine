<%@ page import = "java.io.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/R_membersignup.css">
    <title>會員註冊</title>
</head>
<body>
    <div class="R-container">
        <div class="R-title">
            <div class="R-titleone">
                <h2>
                    AI智慧喜會員資料
                </h2>
            </div>
            <div class="R-titletwo">
                <h2>
                    註冊填寫
                </h2>
            </div>
        </div>
	<form action="signup.jsp" method="post">
        <div class="R-content">
            <div class="R-conone">
                <div class="R-onetext">
                    <h3>
                        請輸入帳號（身分證字號）
                    </h3> 
                </div>
                <div class="R-oneinput">
                    <input type="text" id="R_account" name="account">
                </div>
            </div>
            <div class="R-contwo">
                <div class="R-twotext">
                    <h3>
                        請輸入密碼
                    </h3>
                </div>
                <div class="R-twoinput">
                    <input type="text" id="R_password"name="password">
                </div>
            </div>
            <div class="R-conthree">
                <div class="R-threetext">
                    <h3>
                        確認密碼
                    </h3>
                </div>
                <div class="R-threeinput">
                    <input type="text" id="R_passwordcheck">
                </div>
            </div>
            <div class="R-confour">
                <div class="R-fourtext">
                    <h3>
                        請輸入電話號碼
                    </h3>
                </div>
                <div class="R_number">
                    <div class="R-fourinput">
                        <input type="text" id="R_phonenum" name="phone">
                        <div class="R_fournum" id="R_phnumbtn">
                            <h3>
                                獲取驗證碼
                            </h3>
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="R-confive">
                <div class="R-fiveinput">
                    <input type="text" placeholder="請輸入驗證碼" id="R_phnumcheck">
                </div>
            </div>

                <div class="R-signbtn">
                    <button id="R_signbutton">註冊</button>
                </div>
            
            
        </div>
		</form>
    </div>
    <script src="./assets/js/R-signup.js"></script>
</body>
</html>