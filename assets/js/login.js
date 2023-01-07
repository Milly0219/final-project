function loginsucc(){
    var email = document.getElementById('email-1').value;
if(email==''){
	alert('請輸入電子信箱');
	document.getElementsByID('email-1').focus();
	return false;
}else{
	var emailRegxp = /^([\w]+)(.[\w]+)*@([\w]+)(.[\w]{2,3}){1,2}$/;
	if (emailRegxp.test(email) != true){
		alert('電子信箱格式錯誤');
		document.getElementsByID('').focus();
		document.getElementsByID('email-1').select();
		return false;
	}
    else{
        alert('登入成功')
    }
}
}

/*回上一部*/
function inregister(){
	document.getElementById('id02').style.display='block';
	document.getElementById('id01').style.display='none';
}
