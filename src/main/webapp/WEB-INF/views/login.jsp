<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file ="header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script>
let password_hide=1;
function typeChange(){
    let password_input = document.querySelector(".password_input")
    let password_img = document.querySelector(".password_img")
    if(password_hide){           
      password_input.type="text";
      password_hide=0;
      password_img.src="https://ifh.cc/g/qyHLKy.png"
    }else{
        password_input.type="password";
        password_hide=1;
        password_img.src="https://ifh.cc/g/HHO2Vl.png"
    }
}

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

<!-- 카카오 스크립트 -->

Kakao.init('cd19a2be4e5a00bdbf0cb07a178907dc'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  console.log(response)
          	
          	var account = response.kakao_account;
        	  
        	let id = response.id;
        	let email = account.email;
        	let nickname= account.profile.nickname;
        	let gender = account.gender;

        	
        	
        	$('#form-kakao-login input[name=id]').val(id);
			$('#form-kakao-login input[name=email]').val(email);
			$('#form-kakao-login input[name=nickname]').val(nickname);
			$('#form-kakao-login input[name=gender]').val(gender);
          	
  			// 사용자 정보가 포함된 폼을 서버로 제출한다.
  			//document.querySelector('#form-kakao-login').submit();
  			
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
  
  
//카카오로그아웃  
 
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }   
</script>




<style>


*{
    margin: 0;
    padding: 0;

}

.wrap_inner{
    width: 100%;
    height: 100%;
    min-width: 955px;
    max-width: 1600px;
    margin: 0 auto;
    font-family:Jua;
}

.section_wrap{
    width: 955px;
    padding: 110px 80px 100px 80px;
    margin: 0 auto;
}


/* main{
    margin-top: 10px;
} */
main .login_wrap {
    width: 100%;
    height: 602px;
    margin: 0 auto;
}
main .login_wrap .login_inner{
    width: 602px;
    height: 570px;
    border: 2px solid green;
    padding: 50px 80px;
    margin: 0 auto;
    box-sizing: border-box;
    border-radius: 20px;
    
}
main .login_wrap .login_inner .login input{
    width: 440px;
    height: 57px;
    border: none;
    border-bottom: 1px solid #cacaca;
    font-size: 16px;
    color: #181818;
    margin-bottom: 25px;
    font-weight: bold;
    outline: none;
}
main .login_wrap .login_inner .login input::placeholder{
    color: #cacaca;
    font-family:Jua;
}
main .login_wrap .login_inner .login .password_wrap {
    position: relative;
}
main .login_wrap .login_inner .login .password_wrap input{
    margin-bottom: 0px;
    
}
main .login_wrap .login_inner .login .password_wrap img{
    width: 29px;
    height: 29px;
    position: absolute;
    top: 13px;
    right: 0px;
}

main .login_wrap .login_inner .checkbox_{
    width: 19px;
    height: 19px;
    accent-color: green;
	margin-top:5px;

    
}
main .login_wrap .login_inner.check_p{
	display: inline-block;
	
}
main .login_wrap .login_inner .loginbtn{
    display: block;
    width: 440px;
    height: 60px;
    border: none;
    color: white;
    background-color: #9C5B36;
    font-weight: bold;
    font-size: 18px;
    border-radius: 5px;
    margin-top:50px;
    cursor:pointer;
}
main .login_wrap .login_inner .idpw{
    display: flex;
    margin-top: 18px;
    margin-bottom: 47px;
    font-size:18px;

}
main .login_wrap .login_inner .idpw ul{
    list-style: none;
    display: flex;
    margin-left: 144px;
    margin-top:3px;
    
}
main .login_wrap .login_inner .idpw a, main .login_wrap .login_inner .idpw span{
    text-decoration: none;
    color: #929292;
    font-size: 16px;
    padding: 0 3px;

    
}


main .login_wrap .login_inner .join_a{
    margin-top: 2px;
    margin-left: 194px;
    color: #4e4e4e;
    font-weight: bold;
    cursor: pointer;
}
main .login_wrap .login_inner .login_btn{
    margin-top: 30px;
}
main .login_wrap .login_inner .login_btn a{
    text-decoration: none;
}

main .login_wrap .login_inner .sns_login{
    margin-top: 40px;
    margin-left: 120px;
    margin-bottom:30px;
}
main .login_wrap .login_inner .sns_login img{
    width: 85px;
    height: 85px;
    margin: 0 10px;
}
main .password_img{
    cursor: pointer;
}
</style>
<body>

	 <div class="wrap_inner">
            <!-- 섹션 wrap -->
            <div class="section_wrap">
                <!-- 로그인 영역 -->
                <main>
                    <div class="login_wrap">
                        <div class="login_inner">
                        
                        
                        <form method="post" action="/koalas/login" name="frm" onsubmit="return check()">
                            <div class="login">
	                                <input type="text" placeholder="Enter ID" name="id" value="${cookie.id.value}" id="id">
	                                
	                                <div class="password_wrap">
	                                    <input type="password" placeholder="Enter PW" class="password_input" name="pw" id="pw">
	                                    <img class="password_img" src="https://ifh.cc/g/Fp3q3x.png" alt="" onclick="typeChange()">
	                                </div>
	                            </div>
	                            <button class="loginbtn">로그인</button>
                             <div class="idpw">
	                                <input type="checkbox" class="checkbox_" name="rememberId" ${empty cookie.id.value ?"":"checked" }>
	                                <p class="check_p">&nbsp;&nbsp;아이디 저장</p>
	                                
                                <ul>
                                    <li><a href="#">아이디 찾기</a></li>
                                    <li><span> | </span></li>
                                    <li><a href="#">비밀번호 찾기</a></li>
                                </ul>
                             </div>
                         </form>
   
                             <div class="sns_login">
                                <a href="#"><img class="naver_btn" src="https://www.greatbooks.co.kr/images/member/ico_login_sns01@2x.png" alt=""></a>
                                <a href="#"><img class="kakao_btn" id="btn-kakao-login" src="https://www.greatbooks.co.kr/images/member/ico_login_sns02@2x.png" alt="" onclick="kakaoLogin()"></a>
                             </div>
                             
                             <a href="#"class="join_a">회원가입</a>
                        </div>
                    </div>
                </main>
               </div>
               </div>
               
               
               <form id="form-kakao-login" method="post" action="kakaoLogin">
               			<input type="hidden" name="id"/>
		    			<input type="hidden" name="email"/>
		    			<input type="hidden" name="nickname"/>
		    			<input type="hidden" name="gender"/>
		    	</form>
                
	<%@ include file ="footer.jsp" %>
</body>
</html>