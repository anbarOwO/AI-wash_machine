var slideIndex = 0;
var btn_t =0;
function next() {
document.getElementById("first_pic") .style.display="none"
  var i;
  var x = document.getElementsByClassName("img_slides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  slideIndex++;
  btn_t++;
  if(btn_t==x.length){
    document.getElementById("next").value = "關閉"
    document.getElementById("next").onclick =function(){
        window.location.href = "T_memberdetail.html";
    } 
  }
  if (slideIndex > x.length) {slideIndex = 1}
  x[slideIndex-1].style.display = "block";
  setTimeout(carousel, 2000); // Change image every 2 seconds
}