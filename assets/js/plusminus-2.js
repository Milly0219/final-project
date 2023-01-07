var plus_2 = document.getElementById("plus-2");
var i_2 = document.getElementById("amount-2").value;
var minus_2 = document.getElementById("minus-2");
plus_2.onclick = function(){
    i_2++;
    document.getElementById("amount-2").value = i_2;
}
minus_2.onclick = function(){
    if (i_2>1) {
        i_2--;
        document.getElementById("amount-2").value = i_2;
    } else{
        i_2=1;
        document.getElementById("amount-1").value = i_2;
    }
}
		