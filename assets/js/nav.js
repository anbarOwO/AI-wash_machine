var R_pic = document.getElementById("R_Menupic");
var R_side = document.getElementById("R_side");
var R_body = document.getElementById("R_body");

var R_side1 = document.getElementById("R_side1");
var R_side2 = document.getElementById("R_side2");
var R_side3 = document.getElementById("R_side3");
var R_side4 = document.getElementById("R_side4");

var R_cpic = document.getElementById("R-cpic");
var R_peopic = document.getElementById("R_peopic");
var R_mappic = document.getElementById("R_mappic");



R_pic.addEventListener('click',function(){

    R_side1.style.color="black";
    R_side2.style.color="black";
    R_side3.style.color="black";
    R_side4.style.color="black";
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
        R_side.style.width="0%";

    }
})

R_side1.addEventListener('click',function(){
    location.href='L_menu.html'
})
R_side2.addEventListener('click',function(){
    location.href='L_service.html'
})
R_side3.addEventListener('click',function(){
    location.href='email.html'
})
R_side4.addEventListener('click',function(){
    location.href='L_washway_1.html'
})

R_cpic.addEventListener('click',function(){
    location.href='order.html'
})
R_peopic.addEventListener('click',function(){
    location.href='Member_center.html'
})
R_mappic.addEventListener('click',function(){
    location.href='R_shop.html'
})
Y_change.addEventListener('click',function(){
    location.href='Y_another.html'
})



