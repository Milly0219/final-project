var plus_1 = document.getElementById("plus-1");
var i_1 = document.getElementById("amount-1").value;
var minus_1 = document.getElementById("minus-1");
plus_1.onclick = function(){
    i_1++;
    document.getElementById("amount-1").value = i_1;
}
minus_1.onclick = function(){
    if (i_1>1) {
        i_1--;
        document.getElementById("amount-1").value = i_1;
    } else{
        i_1=1;
        document.getElementById("amount-1").value = i_1;
    }
}
		