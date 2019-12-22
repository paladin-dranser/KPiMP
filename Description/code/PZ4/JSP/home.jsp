<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
// Падключаем намі створаны тэг
// uri павінен супадаць з тым, які апісалі ў custom.tld
<%@ taglib uri="PZ4" prefix="m" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<body>
	<h1>
		Hello,
		<%=session.getAttribute("user")%>
	</h1>
    // Дабаўляем html-тэг <img src=> для ўстаўкі лагатыпу,
    // у месцы для крыніцы лагатыпу выклікаем наш тэг з дадатковым
    // атрыбутам isAdmin, і даем яму значэнне роўнае параметру
    // з сесіі isAdmin
	<img src='<m:printUserLogo isAdmin="${isAdmin}"/>' width="64" height="64" />
	<c:if test="${isAdmin}">
	<p><a href="allUsers.jsp">View all users</a></p>
	</c:if>
	<form action="logout" method="post">
		<input type="hidden" name="authAction" value="logout">
		<input type="submit" value="Logout" />
	</form>
</body>
</html>
