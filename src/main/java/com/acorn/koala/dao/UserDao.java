package com.acorn.koala.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UserDao {
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
	 
	 
	

}
