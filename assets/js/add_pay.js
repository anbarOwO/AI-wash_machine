function add(){
    if(document.getElementById("add_pay2").style.display=="block"){
        document.getElementById("add_pay2").style.display="none"
        document.getElementById("add_pay").style.display="block";
    }
    else if(document.getElementById("add_pay").style.display=="block")
    {
        document.getElementById("add_pay").style.display="none";
    }
    else{
        document.getElementById("add_pay").style.display="block";
    }
}

function delet(){
    if(document.getElementById("add_pay").style.display=="block"){
        document.getElementById("add_pay").style.display="none"
        document.getElementById("add_pay2").style.display="block"
    }
    else if(document.getElementById("add_pay2").style.display=="block")
    {
        document.getElementById("add_pay2").style.display="none";
    }
    else{
        document.getElementById("add_pay2").style.display="block";
    }
}
