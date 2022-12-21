package boarder;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoarderController {
	
	@Autowired
	KoalaDao dao;
	
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String board(Model m) {
		
		
		KoalaService s = new KoalaService(dao);
		ArrayList<BoarderDTO> list = s.selectBoard();
	
		System.out.println(list);
		System.out.println("abc");
		
		
		m.addAttribute("list",list);
		
				
		return "board";
	}

}
