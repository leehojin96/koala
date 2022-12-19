<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form>


<input type ="radio" value = "임영빈" onclick=""> 임영빈 <br>

<c:forEach var= "list" items="${list }">

${list.booknum} 
${list.ranking}
${list.bookname} 
${list.authors} <br>


</c:forEach>


</form>
</body>
</html>