<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>  
			                    <!-- �Խ����� ���� ������ �� �ִ� ���-->
<%
	//�����ͺ��̽��� ����
	request.setCharacterEncoding("euc-kr");
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://127.0.0.1:3306/jspdb";
	String id = "jspbook";
	String pass = "1234";

	String password = null;
	//��й�ȣ�� �� ��ȣ�� �޴´�
	int idx = Integer.parseInt(request.getParameter("idx"));
	String passw = request.getParameter("password");
	
	try{
				
		Connection 	conn = DriverManager.getConnection(jdbc_url,"jspbook","1234");
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT PASSWORD FROM board WHERE NUM=" + idx; //������ ��й�ȣ�� ���Ѵ�
		ResultSet rs = stmt.executeQuery(sql);
		
		 if(rs.next()){
				password = rs.getString(1);
		 }
		 
		 if(password.equals(passw)) {
			   			
			sql = "DELETE FROM board WHERE NUM=" + idx;	
			stmt.executeUpdate(sql);	 
%>
  			<script language=javascript>
   				self.window.alert("�ش� ���� �����Ͽ����ϴ�.");
				window.close(); 
  			</script>

<%
		rs.close();
		stmt.close();
		conn.close();
		
		 } else { 
%>
			<script language=javascript>
			 self.window.alert("��й�ȣ�� Ʋ�Ƚ��ϴ�.");
				location.href="javascript:history.back()";
			</script>
<%		
		 }
 	} catch(SQLException e) {
		out.println( e.toString() );
	} 

%>
