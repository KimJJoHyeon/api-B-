package member;
//DAO는 DB에 접근해서 여라가지 작업을 하는 것
//1. db에 연결
//2.
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jdbc.DBConnection;

public class MemberDao {

		public Connection getConnection(){
			Connection conn=null;
			
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver"); // 드라이버 로딩   db사 마다 정해져있어서 똑같이해야함  
				conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","1234"); //db사 마다 정해져있어서 똑같이해야함b 
				System.out.println("DB 연결 성공");
				
			} catch (ClassNotFoundException | SQLException e) {
				System.out.println("DB 연결 실패");
			} 
			
			return conn;
		}
		
	public int joinMember(MemberDto dto) {
		int result = 0; // 0: 회원정보 입력 실패
		String sql ="insert into member_tb values(member_seq.nextval,?,?,?,?,0,sysdate)";
		
		
		//try catch resouces구문으로 간단하게 구현할 수 있다.
		try(Connection conn = getConnection();
    	//SQL문 작성
    	PreparedStatement pstmt = conn.prepareStatement(sql)){
    	pstmt.setString(1,dto.getMember_id());//1:첫번째 ?를 의미함
    	pstmt.setString(2,dto.getMember_pw());
    	pstmt.setString(3,dto.getMember_name());
    	pstmt.setString(4,dto.getPhone_no());
    	
    	pstmt.executeUpdate();
    	result=1;//1: 회원정보 입력 성공
		}catch (Exception e) {
			e.printStackTrace();
		}
    	//out.println("<h3>정상적으로 회원가입이 이루어졌습니다</h3>");
		return result;
	}
	public int Login(String mem_id, String mem_pw) {
		int result = 0;
		String sql = "select count(*) from member_tb where member_id=? and member_pw=?";
		
	try(Connection conn = DBConnection.getConnection();
		   PreparedStatement pstmt = conn.prepareStatement(sql)){
		
		   pstmt.setString(1, mem_id);
		   pstmt.setString(2, mem_pw);
		   ResultSet rs = pstmt.executeQuery();
		   
		   if(rs.next())  result = rs.getInt(1);//1: 로그인 성공(1일 경우)
		  
		   rs.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		return result;
	}
	public MemberDto getMemberInfo(String id , MemberDto dto) {
			String sql = "select member_id, member_pw, member_name, phone_no from member_tb where member_id=?";
			try(
			    Connection conn = DBConnection.getConnection();
			  	PreparedStatement pstmt = conn.prepareStatement(sql)){
			    pstmt.setString(1, id);
			    ResultSet rs = pstmt.executeQuery();
			    //결과값은 한 행이 되므로 처음행은 BOF이므로 1개의 행을 넘겨야함
			    rs.next();
		    
	    //1. ResultSet으로 가져오는 방법 첫번째 
		    dto.setMember_id(rs.getString("member_id"));
		    dto.setMember_pw(rs.getString("member_pw"));
		    dto.setMember_name(rs.getString("member_name"));
		    dto.setPhone_no(rs.getString("phone_no"));
	    
	    //2. ResultSet으로 가져오는 방법 두번째 순서로 가져오기
		    /*dto.setMember_id(rs.getString(1));
		    dto.setMember_pw(rs.getString(2));
		    dto.setMember_name(rs.getString(3));
		    dto.setPhone_no(rs.getString(4));*/
	    
		   rs.close();
		   
	}catch (Exception e) {
		e.printStackTrace();
	}
	    return dto;
	}
	public int UpdateMemberInfo(MemberDto dto) {
		int result = 0;
		//System.out.println(dto.getMember_pw());
		String sql ="update member_tb SET member_id =? ,  member_pw=? , member_name=? , phone_no=? where member_id=? ";
		try(
		Connection conn = DBConnection.getConnection();
	    PreparedStatement pstmt = conn.prepareStatement(sql)){
	    
	    
	    pstmt.setString(1,dto.getMember_id());//1:첫번째 ?를 의미함
		pstmt.setString(2,dto.getMember_pw());
		pstmt.setString(3,dto.getMember_name());
		pstmt.setString(4,dto.getPhone_no());
		pstmt.setString(5,dto.getMember_id());
		
	    pstmt.executeUpdate();
	    result = 1; //1: 회원정보 수정 성공
	    
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
