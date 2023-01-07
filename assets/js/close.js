function signscc(){
    var email = document.getElementById('email-1').value;  
    var text=document.getElementById('text-1').value;

    if (email==""&& text==""&&password==""){ 
		alert('請輸入相關資訊');
        return false
	}
    
    else{
        confirm("確定送出表單?")
    }
}

