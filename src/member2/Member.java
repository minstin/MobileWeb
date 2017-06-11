package member2;

import java.util.Date;


public class Member {	
	// 회원 이름
	private String name;
	
	// 회원 아이디(로그인용)
	private String uid;
	
	// 로그인 비밀번호
	private String passwd;
	
	// 이메일 주소
	private String email;
	
	// 가입일
	private String spot;
	

	public String getSpot() {
		return spot;
	}

	public void setSpot(String spot) {
		this.spot = spot;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String id) {
		this.uid = id;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
