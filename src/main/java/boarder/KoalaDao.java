package boarder;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class KoalaDao {
	
	@Autowired
	DataSource ds;
	
	
	public ArrayList<BoarderDTO> selectBoard(){
		
		ArrayList<BoarderDTO> list =new ArrayList<BoarderDTO>();
		
		Connection conn =null;
		PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = " select * from board ";
        
        try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
	        rs = pstmt.executeQuery();
	        
	        while(rs.next()) {
	        	BoarderDTO dto = new BoarderDTO();
	        	dto.setUserID(rs.getString(1));
	        	dto.setTitle(rs.getString(2));
	        	dto.setPassward(rs.getString(3));
	        	dto.setContent(rs.getString(4));
	        	dto.setWdate(rs.getString(5));
	        	list.add(dto);
	        }
	        close(rs,pstmt,conn);
	        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
		
		
		
		return list;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	private void close(AutoCloseable...aaaa) {
		  for(AutoCloseable a : aaaa) {
			  try {
				if(a!=null)a.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		  }
	  }
	
	

}
