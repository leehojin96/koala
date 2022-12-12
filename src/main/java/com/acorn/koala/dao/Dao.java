package com.acorn.koala.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Dao {
	 @Autowired
	  DataSource ds;
	 
	 
	 public int login(String id, String pw){
		 String sql="select pw from koala_member_tbl where id=?";
		 Connection con = null;
		 PreparedStatement pst = null;
		 ResultSet rs = null;
		 try {
			 con=ds.getConnection();
			 pst = con.prepareStatement(sql);
			 pst.setString(1, id);
			 rs=pst.executeQuery();

			 if(rs.next()) {
				 if(rs.getString(1).equals(pw)) {
						return 1;
					}else {
						return 0;
					}
				}
				return -1;
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -2;
		 
	 }
	 
	 
	 public int kakaoidCheck(String id) {
		 String sql="select * from koala_kakao_tbl where id=?";
		 Connection con = null;
		 PreparedStatement pst = null;
		 ResultSet rs = null;
		 
		 try {
			con=ds.getConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1, id);
			rs=pst.executeQuery();
			
			if(rs.next()) {
				return 1;
			} else {
				return 0;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 
		return -1;
		 
	 }
	 
	 public void KakaoJoin(String id, String email, String nickname, String gender) {
		 String sql="insert into koala_kakao_tbl values(?,?,?,?)";
		 Connection con = null;
		 PreparedStatement pst = null;
		 ResultSet rs = null;
		 
		 try {
			con=ds.getConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1, id);
			pst.setString(2, email);
			pst.setString(3, nickname);
			pst.setString(4, gender);
			
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 }
}
