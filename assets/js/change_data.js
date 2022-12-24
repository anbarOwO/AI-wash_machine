function change(){
    document.getElementById("t-name").readOnly=false;
    document.getElementById("t-email").readOnly=false;
    var add=document.getElementById("add")
    document.getElementById("t-adress").readOnly=false;
    add.style.visibility = "visible"
    document.getElementById('t-btn').onclick = function() {
    this.type = 'submit';
    this.value = "確認修改資料";
    this.onclick=function(){
        this.type = 'button';
        this.value = "編輯修改資料";
        window.location.href = "";
        }
    }
}
