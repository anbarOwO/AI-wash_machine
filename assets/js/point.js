/*計算碳點區間*/ 


function count(){
    var fin_chart1_p=parseInt(document.getElementById("point").innerText)/1000;
    var max_chart1 =Math.ceil(fin_chart1_p)*1000
    var min_chart1 =Math.floor(fin_chart1_p)*1000
}

/*進度條*/
function run(){
    var fin_chart1_p=parseInt(document.getElementById("point").innerText)/1000;
    alert(fin_chart1_p)
}


/*function count(){
    var fin_chart1 = document.getElementsByClassName("fin_chart1");
    var fin_chart1_p=document.getElementById("point").innerText;
    alert(fin_chart1_p);
   if (fin_chart1_p/500>1){
        fin_chart1_p=fin_chart1_p-1
        alert(fin_chart1_p)
    }
    else{
        alert(fin_chart1_p)
    }
}*/

