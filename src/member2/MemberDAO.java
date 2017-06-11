package member2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import util2.*;

public class MemberDAO {
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	Logger logger = LoggerFactory.getLogger(MemberDAO.class);

	public boolean addMember(Member member) {
		conn = DBManager.getConnection();
		String sql = "insert into travel(name, uid, passwd, email, spot) values(?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getName());
			pstmt.setString(2, member.getUid());
			pstmt.setString(3, member.getPasswd());
			pstmt.setString(4, member.getEmail());
			pstmt.setString(5, member.getSpot());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			logger.info("Error Code : {}",e.getErrorCode());
			return false;
		}
		finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return true;
	}
	

	public boolean login(String uid, String passwd) {
		conn = DBManager.getConnection();
		String sql = "select uid, passwd from travel where uid = ? and passwd=?";
		Member mb = new Member();
		boolean result = false;
		
		try {
			pstmt = conn.prepareStatement(sql); 
			pstmt.setString(1, uid); 
			pstmt.setString(2, passwd); 
			rs = pstmt.executeQuery(); 

			while(rs.next()) { 
				mb.setUid(rs.getString("uid")); 
				mb.setPasswd(rs.getString("passwd")); 
				
				if(uid.equals(mb.getUid()) && passwd.equals(mb.getPasswd())) { 
					result = true; 
					break; 
				} 
			}
			
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
}