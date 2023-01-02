var R_password = document.getElementById("R_password");
var R_passwordcheck = document.getElementById("R_passwordcheck");
var R_btn = document.getElementById("R_signbutton");
var R_accont = document.getElementById("R_account");

var R_phonenum = document.getElementById("R_phonenum");
var R_phnumbtn = document.getElementById("R_phnumbtn");
var R_phnumcheck = document.getElementById("R_phnumcheck");


function R_random(min,max){
    return Math.floor(Math.random()*(max-min))+min;
}
var R_ran = R_random(1000,9999);

R_phnumbtn.addEventListener('click',function(){
    if(R_phonenum.value==""||!isNaN(R_phonenum.value)==false){
        alert("請輸入電話號碼(只能輸入數字!)");
        R_phonenum.value="";
    }
    else{
        R_phnumcheck.style.display="inline";
        alert("您的電話號碼是："+R_phonenum.value+"  已傳送驗證碼為"+R_ran+"，請在30分鐘內輸入驗證碼");
    }
})


R_btn.addEventListener('click',function(){
    if(R_password.value==""||R_passwordcheck.value==""||R_accont.value==""){
        alert("帳號密碼不能空白!"); 
    }
    else{
        if(R_ran!=R_phnumcheck.value){
            alert("驗證碼輸入錯誤，請再輸入一次");
            R_phnumcheck.value="";
        }
        else{
            if(R_password.value == R_passwordcheck.value){
                alert("註冊成功");
                location.href='L_menu.html';
            }
            else{
                alert("密碼和確認密碼錯誤請重新輸入一次")
                R_password.value ="";
                R_passwordcheck.value="";
            }
        }
    }
})



