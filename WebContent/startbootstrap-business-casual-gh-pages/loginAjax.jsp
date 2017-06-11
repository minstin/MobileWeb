<?xml version="1.0" encoding="UTF-8" ?> 
      
<%@ page import="java.util.*" %> 
<%@ page import="member2.Member" %> 
<%@ page import="member2.MemberDAO" %> 
<%@ page contentType="text/xml" pageEncoding="UTF-8" %> 
<% 
	request.setCharacterEncoding("utf-8"); 

 	String userID = request.getParameter("userID");
 	String pwd = request.getParameter("pwd"); 
 	boolean chk = true; 
 	MemberDAO userDAO = new MemberDAO(); 

 	chk = userDAO.login(userID, pwd); 
 	if(chk == false) { 
%> 
		<state>false</state> 
<% 
	} else { 
%> 
		<state>true</state>  
<%		 
	} 
%> 
