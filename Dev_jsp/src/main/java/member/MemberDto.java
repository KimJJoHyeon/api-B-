package member;

import java.util.Date;

//DTO는 멤버변수들, 멤버변수들의 대한 GET,SET메소드 선언, 끝
public class MemberDto {
//멤버 테이블의 속성들을 그대로 쓰면됨
	
	private int member_idx;
	private String member_id; // id가 Email형식 이였다.
	private String member_pw;
	private String member_name;
	private String phone_no;
	private int member_auth; //접근권한
	private Date reg_date; // import단축키: ctrl+shift+o;
	
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getPhone_no() {
		return phone_no;
	}
	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}
	public int getMember_auth() {
		return member_auth;
	}
	public void setMember_auth(int member_auth) {
		this.member_auth = member_auth;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

}
