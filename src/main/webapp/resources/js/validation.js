function CheckSignUp() {

	var username = document.getElementById("username");
	var id = document.getElementById("id");
	var passwd = document.getElementById("passwd");
	var passcheck = document.getElementById("passcheck");
	var email = document.getElementById("email");
	
	// 닉네임 체크
	if (username.value.length < 2 || username.value.length > 12) {
		alert("[닉네임]\n최소 2자에서 최대 12자까지 입력하세요");
		username.select();
		username.focus();
		return false;
	}
	// id 체크
	if (id.value.length < 5) {
		alert("[아이디]\n최소 5자 이상 입력하세요");
		id.select();
		id.focus();
		return false;
	}
	
	// 비밀번호 확인
	if (passwd.value.length < 7 || passwd.value.length > 15) {
		alert("[비밀번호]\n비밀번호는 최소 7자 이상 15자 이하로 설정해주세요.");
		passwd.select();
		passwd.focus();
		return false;
	}else if(!check(/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[~?!@#$%^&*_-]).{8,}$/, passwd,
		"특수문자, 숫자, 문자가 모두 포함되어야 합니다.")){
			return false;
		}

	// 비밀번호 재확인 체크
	if (passcheck.value!=passwd.value) {
		alert("[비밀번호 확인]\n비밀번호가 일치하지 않습니다.");
		passcheck.select();
		passcheck.focus();
		return false;
	}
	
	if(email.value.length != 0 && !check(/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i, email, 
	"[이메일]\n이메일 양식이 올바르지 않습니다."
	)){
		return false;
	}
	
	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}

	 document.checkSign.submit();
}
function CheckWrite(){
	var category = document.getElementById("category");
	var title = document.getElementById("title");
	var script = document.getElementById("script");
	
	if(category.value.length < 1){
		alert("게시판을 선택해주세요.");
		return false;
	}
	
	if (title.value.length < 1) {
		alert("제목을 입력하세요.");
		title.select();
		title.focus();
		return false;
	} else if (title.value.length > 20) {
		alert("제목은 20글자 아래로 입력해주세요.");
		title.select();
		title.focus();
		return false;
	}
	
	if (script.value.length < 1) {
		alert("내용을 입력하세요.");
		script.select();
		script.focus();
		return false;
	} else if (script.value.length > 300) {
		alert("내용은 300글자 아래로 입력해주세요.");
		script.select();
		script.focus();
		return false;
	}
	
	document.checkwrite.submit();

}

