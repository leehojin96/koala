<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	header{
		width:1250px;
		height:159px;
		margin:0 auto; 
		padding-bottom:30px;
		border-bottom: 1px solid green;
	}
	.header_wrap{
		display:flex;
	}
	.header_logo{
		width:222px;
		height:82px;
		/*border:1px solid black; */
		margin-top:77px;
		
		
	}
	.header_logo img{
		width:222px;
		height:82px;
		
		
	}
	.header_login {
		width:1026px;
		height:45px;
		/*border:1px solid black; */
	}
	
	header .header_sl {
		width:1026px;
		height:80px;
		/*border:1px solid black; */
		margin-top:30px;
		display:flex;
	}

	header .header_section .header_login{
		text-align:right;
	}
	
	header .header_section .header_login .home_icon{
		width:12px;
		height:12px;
		margin-right:5px;

	}
	
	header .header_section .header_login span{
		margin-left:4px;
		margin-right:4px;
		line-height:40px;
		color:gray;
		font-size:11px;
		font-weight:bold;
	}
	
	header .header_section .header_login span a{
		text-decoration: none;
		font-size:15px;
		color:gray;
		font-family:Jua;
		font-weight:lighter;
	}

	header .header_section .header_sl .searchbar{
		width:240px;
		height:45px;
		margin:10px 0 0 220px;
		display:flex;
		border: 2px solid lightgray;
		border-radius: 20px;
		padding-left:20px;
		padding-top:10px;
		
	}
	header .header_section .header_sl .searchbar input{
		height:37px;
		width:170px;
		border: none;
        outline: 0;
 		font-size:15px;
 		padding-left:10px;
	}
	header .header_section .header_sl .list{
		width:730px;
	}
	header .header_section .header_sl .searchbar img{
		height:37px;
		weight:37px;
		padding-left:10px;
	}

	header .menu{
		margin-top:15px;
	}
	header .header_sl .menu ul{
            list-style: none;
   
    }
	header .menu .menu_wrap .mainmenu .submenu{
            display: none;
    }
	header .menu .menu_wrap .mainmenu:hover .submenu{
            display:block;
    }
	header .menu .menu_wrap{
            margin-left: 20px;
            display: flex;
    }
	header .menu .menu_wrap .mainmenu{
            text-align: center;
            height: 50px;
            line-height: 50px;
    }
	header .menu .menu_wrap .mainmenu a{
            text-decoration: none;
            color: black;
            display: block;
            width: 100px;
            font-weight:lighter;
            font-size:18px;
            padding: 0 10px;
            font-family:Jua;
    }
</style>
</head>
<body>
<header>
		<div class="header_wrap">
			<div class="header_logo" >
				<a href="#"><img src="logo"></a>
			</div>
			
			<div class="header_section">
				<div class="header_login">
						<span><a href="#"><img src="https://www.data4library.kr/resources/img/background/g_home_icon.gif" class="home_icon">home</a> </span>
						<span>|</span>
						<span><a href="#">로그인</a></span>
						<span>|</span>
						<span><a href="#">회원가입 </a></span>
						<span>|</span>
						<span><a href="#">고객센터</a></span>
				</div>
				
				<div class="header_sl">
					
						<div class="menu">
				            <ul class="menu_wrap">
				                <li class="mainmenu"><a href="#">메뉴1</a>
				                    <ul class="submenu">
				                        <li><a href="#">서브메뉴1</a></li>
				                        <li><a href="#">서브메뉴2</a></li>
				                    </ul>
				                </li>
				              
				                <li class="mainmenu"><a href="#">메뉴2</a>
				                    <ul class="submenu">
				                        <li><a href="#">서브메뉴1</a></li>
				                        <li><a href="#">서브메뉴2</a></li>
				                    </ul>
				                </li>
				               
				                <li class="mainmenu"><a href="#">메뉴3</a>
				                    <ul class="submenu">
				                        <li><a href="#">서브메뉴1</a></li>
				                        <li><a href="#">서브메뉴2</a></li>
				                    </ul>
				                </li>
				                
				                <li class="mainmenu"><a href="#">메뉴4</a>
				                    <ul class="submenu">
				                        <li><a href="#">서브메뉴1</a></li>
				                        <li><a href="#">서브메뉴2</a></li>
				                    </ul>
				                </li>
				            </ul>
       					</div>
					
					
					<div class="searchbar">
						<input type="text">
						<a href="#"><img src="https://thumb.ac-illust.com/61/61843482164d65671d718c86101fa2a7_t.jpeg"></a>
					</div>
				</div>
			</div>
		</div>
	</header>
	
</body>
</html>