<%@ tag body-content="scriptless" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

                    <!-- 로그인과 로그아웃을 위한 TAG.  상황에 따라 보여지는 게 다름. -->
<form name="loginform" method="post" action="user_control.jsp">
<c:choose>
<c:when test="${uid != null}">
	<div class = "tagbar" >
	<div id = "aaa" style="text-align:center;">
	<a>Login User: ${uid}  </a>
	</div>
	<input type="hidden" name="action" value="logout">
	<input type="submit" class="lolo" value="로그아웃">
	</div>
</c:when>
<c:when test="${uid == null}">
		<input type="hidden" name="action" value="login">
		:: ID_<input type="text" name="uid" size="10"> PASSWORD_<input type="password" name="passwd" size="10">
		<input type="submit" class="lolo" value="LOGIN">
</c:when>
</c:choose>
</form>