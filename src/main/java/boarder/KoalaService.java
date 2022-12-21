package boarder;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

public class KoalaService {

	@Autowired
	KoalaDao dao;
	
	public KoalaService() {
		// TODO Auto-generated constructor stub
	}
	public KoalaService(KoalaDao dao) {
		this.dao = dao;
	}
	public ArrayList<BoarderDTO> selectBoard(){
		return dao.selectBoard();
		
	}
}
