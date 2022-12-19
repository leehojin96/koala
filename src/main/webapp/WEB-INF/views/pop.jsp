<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function check(){
	let id = $("#id").val();
	let pw = $("#pw").val();
	
	if(id == ""){
		alert("아이디를 입력하세요");
		$("#id").focus();
		return false;
	} else if(pw == ""){
		alert("비밀번호를 입력하세요");
		$("#pw").focus();
		return false;
	} else {
		return true;
	}
}

function snslogin(){
	opener.location.href="<c:url value='/login' />";
	self.close();
}
</script>
<style>
	*{
		margin:0;
		padding:0;
	}
	.login_wrap{
		margin:0 auto;
		width:230px;
		height:100px;
	}
	.login_wrap .login form{
		display:flex;
	}
	.login_wrap .login form .input_wrap{
		width:176px;
	}
	.login_wrap .login .loginbtn{
		height:45px; 
	}


	.sns_login .naver_btn{
		width:125px;
		height:45px;
	}
	
	.sns_login img{
		cursor:pointer;	
	}
</style>
</head>
<body>
<div class="login_wrap">
	<div class="login">
		<form method="post" action="<c:url value='/poplogin' />" name="frm" onsubmit="return check()">
			<div class="input_wrap">
				<input type="text" placeholder="ID" name="id" id="id">
				<input type="password" placeholder="PW" name="pw" id="pw">
				<input type="hidden" name="login_type" value="0">
			</div>
			
			<button class="loginbtn">로그인</button>
		</form>
	</div>
	
	<div class="sns_login">
		<img class="naver_btn" src="https://ifh.cc/g/n3XC6n.png" onclick="snslogin()">
		<img src="https://ifh.cc/g/JGDMRw.png" onclick="snslogin()">
	</div>
</div>
</body>
</html>