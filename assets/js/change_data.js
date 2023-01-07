function change(){
    document.getElementById("t-name").readOnly=false;
    document.getElementById("t-email").readOnly=false;

    document.getElementById("t-adress").readOnly=false;
    document.getElementById('t-btn').type = 'submit';
    document.getElementById('t-btn').value = "確認修改資料";
    document.getElementById('t-btn').onclick=function(){
        /*檢查是否是否是電子郵件 */
        var email = document.getElementById("t-email").value;
        if(email.includes("@")){
            window.location.href = "";
        }
        else{
            alert("請輸入正確的電子郵件")
        }
        
        }
        
    document.getElementById('logout').onclick=function(){
        window.location.href = "";
    }
    
}

