<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="member" class="member2.Member" />
<jsp:setProperty name="member" property="*" />
<jsp:useBean id="mdao" class="member2.MemberDAO" />
                    <!--기존의 지정해 두었던 DAO 클래스와 DO 클래스를 사용-->
<%
	// 컨트롤러 요청 action 코드값
	String action = request.getParameter("action");

	// 신규 회원등록
	if(action.equals("new")) {
		if(mdao.addMember(member)) {
%>
		<script type="text/javascript">
		alert('정상적으로 등록 되었습니다. 로그인 하세요!!');opener.window.location.reload();window.close();
		</script>
<%
		}
		else
			out.println("<script>alert('같은 아이디가 존재 합니다!!');history.go(-1);</script>");
	}
	// 로그인
	else if(action.equals("login")) {
		if(mdao.login(member.getUid(),member.getPasswd())) {
			// 로그인 성공시 세션에 "uid" 저장
			session.setAttribute("uid",member.getUid());
			pageContext.forward("index.jsp");
%>
		
<%
		}
		else {
			out.println("<script>alert('아이디나 비밀번호가 틀렸습니다.!!');history.go(-1);</script>");
		}
	} 
	// 로그아웃
	else if(action.equals("logout")) {
		// 세션에 저장된 값 초기화
		session.removeAttribute("uid");
		//session.removeAttribute("suid");
		pageContext.forward("index.jsp");
	}
%>