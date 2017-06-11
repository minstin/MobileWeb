<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New User</title>
</head>
<body>
<H2>회원가입</H2>
<HR>
<form method="post" action="user_control.jsp?action=new">
<table>
	<tr><td>이름</td><td><input type="text" name="name" size="10" required></td></tr>
	<tr><td>아이디</td><td><input type="text" name="uid" size="10" required></td></tr>
	<tr><td>이메일</td><td><input type="email" name="email" size="10"></td></tr>
	<tr><td>비밀번호</td><td><input type="password" name="passwd" size="10" required> 
	<tr><td>관심여행지</td><td><select name ="spot">
	<option value="japan">일본</option>
	<option value="asia">동남아</option>
	<option value="china">중국</option>
	</select>
	<input type="submit" value="회원등록"></td></tr>
</table> 
</form>
</body>
</html> 