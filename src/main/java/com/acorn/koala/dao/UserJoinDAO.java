package com.acorn.koala.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.acorn.koala.dto.UserDTO;






@Repository("userDAO")

//@Component
public class UserJoinDAO {
	
	//@Autowired
	//DataSource driver; 
	
	private final String driver = "oracle.jdbc.driver.OracleDriver";
	private final String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private final String user = "System";
	private final String password = "1234";
	
	public Boolean join(UserDTO userDTO) {
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, user, password);

			StringBuilder sql = new StringBuilder(); //
			sql.append("INSERT INTO tbl_user2");
			sql.append("	(userID, userPassword, userName, email, phoneNumber, birth, addr1, addr2, addr3)");
			sql.append("	VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
			
			PreparedStatement pst = con.prepareStatement(sql.toString());
			pst.setString(1, userDTO.getUserID());
			pst.setString(2, userDTO.getUserPassword());
			pst.setString(3, userDTO.getUserName());
			pst.setString(4, userDTO.getEmail());
			pst.setString(5, userDTO.getPhoneNumber());
			pst.setString(6, userDTO.getBirth());
			pst.setString(7, userDTO.getAddr1());
			pst.setString(8, userDTO.getAddr2());
			pst.setString(9, userDTO.getAddr3());
			
			int count = pst.executeUpdate();
			return count == 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	public int verifyUserID(UserDTO userDTO) {
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, user, password);

			StringBuilder sql = new StringBuilder();
			sql.append("SELECT COUNT(userID) userID FROM tbl_user2");
			sql.append("	WHERE userID = ?");
			
			PreparedStatement pst = con.prepareStatement(sql.toString());
			pst.setString(1, userDTO.getUserID());
			
			ResultSet rs = pst.executeQuery();
			
			while (rs.next()) {
				if (rs.getInt("userID") > 0) {
					return 1;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}
	
	public int verifyUserEmail(UserDTO userDTO) {
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, user, password);

			StringBuilder sql = new StringBuilder();
			sql.append("SELECT COUNT(email) email FROM tbl_user2");
			sql.append("	WHERE email = ?");
			
			PreparedStatement pst = con.prepareStatement(sql.toString());
			pst.setString(1, userDTO.getEmail());
			
			ResultSet rs = pst.executeQuery();
			
			while (rs.next()) {
				if (rs.getInt("email") > 0) {
					return 1;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}
	
	public int verifyUserPhoneNumber(UserDTO userDTO) {
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, user, password);

			StringBuilder sql = new StringBuilder();
			sql.append("SELECT COUNT(phoneNumber) phoneNumber FROM tbl_user2");
			sql.append("	WHERE phoneNumber = ?");
			
			PreparedStatement pst = con.prepareStatement(sql.toString());
			pst.setString(1, userDTO.getPhoneNumber());
			
			ResultSet rs = pst.executeQuery();
			
			while (rs.next()) {
				if (rs.getInt("phoneNumber") > 0) {
					return 1;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}
	
	public String verifyUserID(String userID) {
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, user, password);
			
			String sql = "SELECT COUNT(userID) count FROM tbl_user2 WHERE userID = ?";
			
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, userID);
			
			ResultSet rs = pst.executeQuery();
			
			while (rs.next()) {
				return rs.getString("count");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "";
	}
	
	public String verifyUserPassword(UserDTO userDTO) {
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, user, password);
			
			String sql = "SELECT COUNT(userID) count FROM tbl_user2 WHERE userID = ? AND userPassword = ?";
			
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, userDTO.getUserID());
			pst.setString(2, userDTO.getUserPassword());
			
			ResultSet rs = pst.executeQuery();
			
			while (rs.next()) {
				System.out.println(rs.getString("count"));
				return rs.getString("count");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "";
	}
	
	
 
	public void deleteUser(UserDTO userDTO) {
		Connection con = null;
		PreparedStatement pst =null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			
			String sql = " DELETE FROM tbl_user2 WHERE userID = ? AND userPassword = ?";
			pst = con.prepareStatement(sql);
			pst.setString(1, userDTO.getUserID());
			pst.setString(2, userDTO.getUserPassword());
			
			pst.executeUpdate();
			
		}  catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pst.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		}
	}
	
	public UserDTO listUser(String userID) {
		System.out.println("DAO-서비스에서 listUser 호출해서 도착");
		UserDTO user1= null;
		try {
			
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, user, password);
			
			String sql = " SELECT userID, userName, email, phoneNumber FROM tbl_user2 WHERE userID = ? ";
			
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, userID);
				
			ResultSet rs = pst.executeQuery();
			
			
			if(rs.next()) {
				
				// 객체생성한 후 setter 
				user1 = new UserDTO();
				user1.setUserID(rs.getString("userID"));
				user1.setUserName(rs.getString("userName"));
				user1.setEmail(rs.getString("email"));
				user1.setPhoneNumber(rs.getString("phoneNumber"));				
				//System.out.println("userName");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
				return user1;
	}
	
	
//	public static void main(String[] args) {
//		UserDAO dao = new UserDAO();
//		UserDTO u = new UserDTO();
//		 u.setUserID("est4");		
//		 
		 //UserDTO  result  =dao.listUser(u);		 
		 //System.out.println( "dddd=" +  result);
		
	//}
	
}