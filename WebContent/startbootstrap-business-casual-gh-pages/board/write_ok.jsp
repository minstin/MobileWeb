<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%> 
  <script language=javascript>
   self.window.alert("�Է��� ���� �����Ͽ����ϴ�.");
   window.close(); 
   location.reload(true);
   </script>
<%
	request.setCharacterEncoding("euc-kr"); //�޾ƿ��� ������ �ѱ۷� ���ڵ��մϴ�.

	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://127.0.0.1:3306/jspdb";
	String id = "jspbook";
	String pass = "1234";



	String name = request.getParameter("name"); //write.jsp���� name�� �Է��� �����Ͱ�
	String password = request.getParameter("password");//write.jsp���� password�� �Է��� �����Ͱ�
	String title = request.getParameter("title"); //write.jsp���� title�� �Է��� �����Ͱ�
	String memo = request.getParameter("memo"); //write.jsp���� memo�� �Է��� �����Ͱ�
	
	try {	
		Connection 	conn = DriverManager.getConnection(jdbc_url,"jspbook","1234");
		
		String sql = "INSERT INTO board(USERNAME,PASSWORD,TITLE,MEMO) VALUES(?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setString(2, password);
		pstmt.setString(3, title);
		pstmt.setString(4, memo);
		
		pstmt.execute();
		pstmt.close();
		
		conn.close();
} catch(SQLException e) {
	out.println( e.toString() );
	} 

%>
