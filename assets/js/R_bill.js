var R_billnum = document.getElementById("R_billnum");

function randomCoding(){
    var result = [];
    var n = 2;
    for(var i=0;i<n;i++){
        var ranNum = Math.ceil(Math.random()*25);
        result.push(String.fromCharCode(65+ranNum));

    }
    return result.join('');
}

function randomnum(){
    let number="";
    var n = 8;
    for(var i=0;i<n;i++){
        number+=Math.floor(Math.random()*10);
    }
    return number;
}

R_billnum.innerHTML = randomCoding()+"-"+randomnum();