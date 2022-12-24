var password = document.getElementById("password");
var passwordcheck = document.getElementById("passwordcheck");
var btn = document.getElementById("signbutton");

btn.addEventListener('click',function(){
    if(password.value == passwordcheck.value){
        alert("註冊成功");
        location.href='R_bill.html';
    }
    else{
        alert("密碼和確認密碼錯誤請重新輸入一次")
        password.value ="";
        passwordcheck.value="";

    }
})