var change = setTimeout(change, 1000);
document.getElementById("t-lineberbtn").onclick=function(){
    window.location.href = "./T_recheckcode .html";
}
function change(){
    document.getElementById("t-lineberbtn").innerText="完成訂單";
    document.getElementById("t-lineberbtn").onclick=function(){
        window.location.href = "./T_checkout.html";
    }
}