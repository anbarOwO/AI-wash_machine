var R_title1 = document.getElementById("R_four1");
var R_title2 = document.getElementById("R_four2");
var R_title3 = document.getElementById("R_four3");
var R_title4 = document.getElementById("R_four4");

var R_location = document.getElementById("R_location");
var R_shopimg1 = document.getElementById("R_shopimgall");
var R_shopname1 = document.getElementById("R_shopname");
var R_address = document.getElementById("R_address");

R_title1.addEventListener('click',function(){
    R_location.innerHTML="台北";
    R_shopimg1.src="./assets/img/R_shopimg.jpg";
    R_shopname1.innerHTML="台北/國王大道店";
    R_address.innerHTML="台北市中正區鄭州路8號";
})
R_title2.addEventListener('click',function(){
    R_location.innerHTML="台中";
    R_shopimg1.src="./assets/img/R_shopimg2.jpg";
    R_shopname1.innerHTML="台中/勤美店";
    R_address.innerHTML="台中市南區建國北路一段11號";
})
R_title3.addEventListener('click',function(){
    R_location.innerHTML="台南";
    R_shopimg1.src="./assets/img/R_shopimg3.jpg";
    R_shopname1.innerHTML="台南/赤崁店";
    R_address.innerHTML="台南市鹽水區中山路23號";
})
R_title4.addEventListener('click',function(){
    R_location.innerHTML="台東";
    R_shopimg1.src="./assets/img/R_shopimg4.png";
    R_shopname1.innerHTML="台東/海峽店";
    R_address.innerHTML="臺東縣臺東市華泰路300號";
})