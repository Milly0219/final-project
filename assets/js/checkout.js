function checkoutsuc(){
    var email=document.getElementById('email-1').value;
    var text=document.getElementById('text-1').value;
    if (email==""&& text==""){ 
		alert('請輸入相關資訊');
        return false;

	}
    
    else{
        
        alert('結帳成功')
        return true;
    }
}

