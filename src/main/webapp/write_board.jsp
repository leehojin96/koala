<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<style>

@import url('https://fonts.googleapis.com/css?family=Jua:400');

* {
	font-family: Jua;
}
	

section{
	display: bolck;
	margin: 0px auto;
	width: 1250px;
}

table{
	width: 800px;
	border-collapse: collapse;
	margin: auto;
	margin-bottom: 100px;
}
th, td{
	border: 1px solid black;
}
th{
	width: 90px;
}

#cap{
	width: 800px;
	height : 70px;
	margin: auto;
	line-height: 70px;
	
}
#cap h1{
	margin: auto;
}

#title{
	height: 50px;
	width: 800px;
	border: 0px;
	font-size: 20px;
}
#textarea{
	width: 800px;
	margin: 0px;
	border: 0px;
	height: 400px;
}

input[type=file]::file-selector-button {
  width: 60px;
  height: 30px;
  background: #fff;
  border:0px;
  border-right: 1px solid black;
  cursor: pointer;
  margin: auto;
  border-collapse: collapse;
  font-family: Jua;
}

#save{
	width: 100px;
	height: 30px;
	background-color: black;
	color : white;
	border: 1px solid white;
}
#save:hover{
	background-color: white;
	color : black;
	border: 1px solid black;

}

#delete{
	width: 100px;
	height: 30px;
	background-color: black;
	color : white;
	border: 1px solid white;
}
#delete:hover{
	background-color: white;
	color : black;
	border: 1px solid black;

}

</style>
</head>
<body>
<%@ include file ="header.jsp" %>


<section>

<div id ="cap">
	<h1>게시판 글쓰기</h1>
</div>

<table>

	<tr>
		<td colspan="4"> <input type="text" placeholder="제목을 입력해 주세요." id = "title"></td>
		
	</tr>
	
	<tr>
		<th>첨부파일</th> <td> <input type = "file" style = "width: 307px; font-size: 10px; margin: auto; " placeholder="ㅇㅇ">  </td>
		<th>비밀번호</th> <td> <input type = "password" style = "border: 0px; width: 307px; height: 30px; font-size: 15px;"></td>
	</tr>
	
	<tr>
		<td colspan="4" style="text-align: center; height: 30px;">내용</td>
	</tr>
	
	<tr>
		<td colspan="4">
		<textarea id ="textarea"></textarea>
		</td>
	</tr>
	<tr>
		<td colspan="4" style = "text-align: center; border: 0px; padding-top: 20px;">
			<input type = "button" value ="등록" id ="save">
			<input type = "button" value ="취소" id ="delete">
		</td>
	</tr>
	
	
	




</table>


</section>



<%@ include file="footer.jsp"%>
</body>
</html>