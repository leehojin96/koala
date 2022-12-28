<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<style>
section{
	display: bolck;
	margin: 0px auto;
	width: 1250px;
}

#title_wrap{
	margin : auto;
	width: 1250px;
	height: 100px;
	background-color: red;
}

#contents_wrap{
	margin : auto;
	width: 1250px;
	height: 600px;
	background-color: gray;
}

#Comments_wrap{
	margin : auto;
	width: 1250px;
	height: 300px;
	background-color: green;
}

</style>
</head>
<body>
<%@ include file ="header.jsp" %>



<section>

<div id="title_wrap">
	<div>제목</div>
	<div>아이디</div>

</div>

<div id ="contents_wrap">
	내용
</div>

<div id ="Comments_wrap">
댓글
</div>

</section>


<%@ include file="footer.jsp"%>
</body>
</html>