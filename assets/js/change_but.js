var change = setTimeout(change, 10000);
document.getElementById("t-lineberbtn").onclick=function(){
    window.location.href = "./T_recheckcode .html";
}
function change(){
    document.getElementById("t-lineberbtn").innerText="完成訂單"
    document.getElementById("t-lineberbtn").onclick=function(){
        window.location.href = "./T_checkout.html";
    }
}
window.onload=function(){
    var out =document.getElementById("out").innerText
    var btn2 =document.getElementById("t-lineberbtn2")
    if(out=="代領代收"){
        btn2.style.pointerEvents="fill";
        btn2.style.background="#63a5a5";
    }
    
}