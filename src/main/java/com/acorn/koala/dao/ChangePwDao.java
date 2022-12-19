package com.acorn.koala.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ChangePwDao {

	@Autowired
	  DataSource ds;
	
	
	public void pwChange(String npw, String id) {
		String sql="update koala_member_tbl set pw=? where id=? ";
		 Connection con = null;
		 PreparedStatement pst = null;

		 
		 try {
			con=ds.getConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1, npw);
			pst.setString(2, id);
			
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
