<<<<<<< HEAD
<<<<<<< HEAD
var change = setTimeout(change, 10000);
=======
var change = setTimeout(change , 10000);
>>>>>>> parent of f935ae1 (25)
=======
var change = setTimeout(change , 10000);
>>>>>>> parent of f935ae1 (25)
document.getElementById("t-lineberbtn").onclick=function(){
    window.location.href = "./T_recheckcode .html";
}
function change(){
    document.getElementById("t-lineberbtn").innerText="完成訂單"
    document.getElementById("t-lineberbtn").onclick=function(){
        window.location.href = "./T_checkout.html";
    }
}