    var code;
    
    $(function()
    {
        window.onload = createCode("#code");
        $("#code").click(function()
        {
            createCode("#code");
        }
        );

        $("#yz").click(function()
        
        {
            validate("#input1","#code");
        }
        );
    }
    );

    function createCode(code1){
        code="";
        var codeLength = 6;
        var checkCode =$(code1);
        var random = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');

        for(var i=0 ; i<codeLength ;i++)
        {
            var index = Math.floor(Math.random()*36);
            code += random[index];
        }
        checkCode.val(code);
    }

    function validate(txtinput,code1)
    {
        var inputCode = $(txtinput).val().toUpperCase();
        
        if(inputCode.length <= 0)
        {
            alert("此處不得為空");
            
        }
        else if(inputCode != code)
        {
            alert("驗證碼輸入錯誤");
            createCode(code1);
            $(txtinput).val("");
        }
        else
        {
            alert("輸入正確");
            onclick=function(){

                window.location.href = "email.html";
        
            };
        }

        
    }
