package com.acorn.koala.boarder;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BoarderController2 {
	
	@Autowired
	KoalaDao dao;
	
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String board(Model m) {	
		KoalaService s = new KoalaService(dao);
		ArrayList<BoarderDTO> list = s.selectBoard();
		//System.out.println(list);
		//System.out.println("abc");
		m.addAttribute("list",list);			
		return "board";
	}
	
	@RequestMapping(value = "/writeBoard", method = RequestMethod.GET)
	public String writeBoard() {
		return "write_board";	
		
	}
	
	@RequestMapping(value = "/insertContent", method = RequestMethod.POST)
	public String insertContent(String w_number, String userID, String title, String passward,String content,String writeday) {
		
		
		
		KoalaService s = new KoalaService(dao);
		BoarderDTO dto = new BoarderDTO(w_number,userID,title,passward,content,writeday);
		s.insertContent(dto);
		
		return "redirect:/board";
		
	}
	
	
	
	
	
	
	
	
	@ResponseBody
	@RequestMapping(value = "/add_comments", method = RequestMethod.POST)
	public ArrayList<CommentsDTO> add_comments(String userID, String w_number, String comments) {
		
		
		KoalaService s = new KoalaService(dao);
		//String str = comments;
		
		//댓글 insert
		if(comments!=null) {
		CommentsDTO dto = new CommentsDTO(userID,w_number,comments);
		s.add_comments(dto);

		//댓글 저장하기
		ArrayList<CommentsDTO> list = s.show_comments(w_number);
		System.out.println(list);
		
		return list;
		}else {
			ArrayList<CommentsDTO> list = s.show_comments(w_number);
			System.out.println(list);
			
			return list;
			
			
		}
		
	}
	
	
	
	
	
	
	
	
	
	

	@RequestMapping(value = "/showDetail", method = RequestMethod.GET)
	public String showDetail(HttpServletRequest httpServletRequest, Model m) {
		
		String w_number = httpServletRequest.getParameter("w_number");
		KoalaService s = new KoalaService(dao);
		String[] list = s.showDetail(w_number);
		m.addAttribute("list",list);
		
		
		//////////////////////////////////////////////////
		
		ArrayList<BoarderDTO> list2 = s.selectBoard();
		m.addAttribute("list2",list2);
		
		return "showDetail";
	}
	
	
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index( Model m) {
		KoalaService s = new KoalaService(dao);
		
		ArrayList<BoarderDTO> list2 = s.selectBoard();
		m.addAttribute("list2",list2);
		
		return "index";
	}
	
	
	

}
