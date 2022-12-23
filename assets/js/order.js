/*產生隨機數的函式*/ 
function validateCode(n)
{ 
    /*驗證碼中可能包含的字元*/ 
    var  s ="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"; 
    var  ret = "";
    for (var i=0;i<n;i++)
        {
            var index = (Math.random()*62);
            ret += s.charAt(index)
        }
        return ret;
        checkCode.val(s);
}

function show()
{
    document.getElementById("code").innerHTML = validateCode(4)
}

window.onload = show;

var code;

$(function()
{
    $("#yz").click(function()
    
    {
        validate("#input1","#code");
    }
    );
}
);

function validate(textinput,n)
{
    var inputCode = $(textinput).val();
    if(inputCode.length <= 0)
    {
        alert("此處不得為空");
    }
    else if(inputCode !=code)
    {
        alert("驗證碼輸入錯誤");
        validateCode(n);
        $(textinput).val("");
    }
    else
    {
        alert("輸入正確");
    }
}