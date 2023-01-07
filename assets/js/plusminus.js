var plus = document.getElementById("plus");
var i = document.getElementById("amount").value;
var minus = document.getElementById("minus");
plus.onclick = function(){
    i++;
    document.getElementById("amount").value = i;
}
minus.onclick = function(){
    if (i>1) {
        i--;
        document.getElementById("amount").value = i;
    } else{
        i=1;
        document.getElementById("amount").value = i;
    }
}
		