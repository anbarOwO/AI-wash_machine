window.onload = function (){
    var fin_chart1_p=parseInt(document.getElementById("point").innerText)/1000;
    var max_chart1 =Math.ceil(fin_chart1_p)*1000
    var mid1_chart1 =Math.ceil(fin_chart1_p)*1000/4
    var mid2_chart1 =Math.ceil(fin_chart1_p)*1000/2
    var mid3_chart1 =Math.ceil(fin_chart1_p)*1000/4*3
    var min_chart1 =Math.floor(fin_chart1_p)*1000
  
    /*計算碳排區間*/
    document.getElementById("max1").innerText=min_chart1
    document.getElementById("mid1_1").innerText=mid1_chart1
    document.getElementById("mid1_2").innerText=mid2_chart1
    document.getElementById("mid1_3").innerText=mid3_chart1
    document.getElementById("min1").innerText=max_chart1
    var fin_chart1=document.getElementById("fin_chart1")
    var width=0;
    /*碳排進度條*/ 
    if(fin_chart1_p>1){
        fin_chart1_p=(fin_chart1_p-Math.floor(fin_chart1_p))*100;
       
    }
    else{
        fin_chart1_p=fin_chart1_p*100;
      
    }
    width+=fin_chart1_p
    fin_chart1.style.width = width +"%";

    var fin_chart2_t=parseInt(document.getElementById("wash_times").innerText)/10;
    var max_chart2 =Math.ceil(fin_chart2_t)*10
    var mid_chart2 =(Math.ceil(fin_chart2_t)+Math.floor(fin_chart2_t))*10/2
    var min_chart2 =Math.floor(fin_chart2_t)*10
    /*洗衣次數區間*/
    document.getElementById("max2").innerText=min_chart2
    document.getElementById("mid2").innerText=mid_chart2
    document.getElementById("min2").innerText=max_chart2

    var fin_chart1=document.getElementById("fin_chart1")
    var width=0;
    /*洗衣進度條*/
    if(fin_chart2_t>1){
        fin_chart2_t=(fin_chart2_t-Math.floor(fin_chart2_t))*100;
       
    }
    else{
        fin_chart2_t=fin_chart2_t*100;
    
    }
    width+=fin_chart2_t
    fin_chart2.style.width = width +"%";

}




