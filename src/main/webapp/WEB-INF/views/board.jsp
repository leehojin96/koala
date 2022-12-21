<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="boarder.BoarderDTO" %>
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
	border-top: 1px solid black;
	
}
th{
	margin-top: 20px;
	//border: 1px solid black;
	height: 40px;
	
}

caption{
	font-size: 30px;
	margin: 30px 0px 30px 0px;
}


</style>
</head>
<body>
<%@ include file ="header.jsp" %>




<section>



<table>
	<caption>공지사항</caption>
	
	<tr>
		<th style="width: 150px;">아이디</th>
		<th style="width: 400px;">제목</th>
		<th style="width: 100px;" >첨부파일</th>
		<th style="width: 150px;">날짜</th>
	</tr>
	
<%
String path = request.getContextPath();
ArrayList<BoarderDTO> list = (ArrayList<BoarderDTO>) request.getAttribute("list");
 

%>
<c:forEach var="str" items = "${list}">
	<tr>
		<td>${ list.userID}</td>

	</tr>

</c:forEach>
	
	
	
	

</table>


</section>







<%@ include file="footer.jsp"%>
</body>
</html>