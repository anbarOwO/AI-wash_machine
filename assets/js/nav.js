var R_pic = document.getElementById("R_Menupic");
var R_side = document.getElementById("R_side");
var R_body = document.getElementById("R_body");

var R_side1 = document.getElementById("R_side1");
var R_side2 = document.getElementById("R_side2");
var R_side3 = document.getElementById("R_side3");
var R_side4 = document.getElementById("R_side4");
var R_side5 = document.getElementById("R_side5");
var R_side6 = document.getElementById("R_side6");


R_pic.addEventListener('click',function(){

    R_side1.style.color="black";
    R_side2.style.color="black";
    R_side3.style.color="black";
    R_side4.style.color="black";
    R_side5.style.color="black";
    R_side6.style.color="black";
    R_side.style.width="30%";

})

R_pic.addEventListener('click',function(e){
    e.stopPropagation();
});

R_body.addEventListener('click',function(){
    if (R_side.style.width=="30%"){

        R_side1.style.color="rgb(246, 252, 224)";
        R_side2.style.color="rgb(246, 252, 224)";
        R_side3.style.color="rgb(246, 252, 224)";
        R_side4.style.color="rgb(246, 252, 224)";
        R_side5.style.color="rgb(246, 252, 224)";
        R_side6.style.color="rgb(246, 252, 224)";
        R_side.style.width="0%";

    }
})

