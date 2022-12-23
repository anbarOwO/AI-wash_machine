window.onload = function (){
    var fin_chart1_p=parseInt(document.getElementById("point").innerText)/1000;
    var max_chart1 =Math.ceil(fin_chart1_p)*1000
    var min_chart1 =Math.floor(fin_chart1_p)*1000
    /*進度條*/
    document.getElementById("max").innerText=min_chart1
    document.getElementById("min").innerText=max_chart1
    var fin_chart1=document.getElementById("fin_chart1")
    var width=0;
    /*計算碳點區間*/ 
    if(fin_chart1_p>1){
        fin_chart1_p=(fin_chart1_p-Math.floor(fin_chart1_p))*100;
       
    }
    else{
        fin_chart1_p=fin_chart1_p*100;
      
    }
    width+=fin_chart1_p
    fin_chart1.style.width = width +"%";
}




