package com.acorn.koala;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BooksViewController {
	
	@Autowired
	ApiPopularBooks2 apiPopularBooks;
	
	@RequestMapping(value="/BestsellerList",method=RequestMethod.GET)
	public String  bestsellerListView() {
		return "bestsellerList"; // views/books.jsp 이동
	}
	
	
	@ResponseBody
	@RequestMapping(value="/books/BestsellerList",method=RequestMethod.GET)
	public HashMap<String, Object>  bestsellerListViewData(int start,int categoryId) {
		
		System.out.println("start="+start);
		System.out.println("query="+categoryId);
		String result = apiPopularBooks.getBestsellerList(start,categoryId);
		
		HashMap<String, Object> map = apiPopularBooks.fromJSONtoItems(result);
		System.out.println();
		
		return map;
	}
	
	@RequestMapping(value="/ItemNewAll ",method=RequestMethod.GET)
	public String  itemNewAllView() {
		return "itemNewAll"; // views/itemNewAll.jsp 이동
	}
	
	
	@ResponseBody
	@RequestMapping(value="/books/ItemNewAll",method=RequestMethod.GET)
	public HashMap<String, Object>  itemNewAllData(int start,int categoryId) {
		
		System.out.println("start="+start);
		System.out.println("query="+categoryId);
		String result = apiPopularBooks.getItemNewAll(start,categoryId);
		
		HashMap<String, Object> map = apiPopularBooks.fromJSONtoItems(result);
		System.out.println();
		
		return map;
	}
	
	
	/*
	
	@RequestMapping(value="/Search",method=RequestMethod.GET)
	public String  booksSearch(Model m) {
		return "search";
	}
	
	@ResponseBody
	@RequestMapping(value="/books/BooksSearch",method=RequestMethod.GET)
	public ArrayList<BooksDto> getSearch(String query,int start) {
		
		String result = apiPopularBooks.getSearch(start,query);
		
		ArrayList<BooksDto> list = apiPopularBooks.fromJSONtoItems(result);
		      
		
		return list;
	}

*/
}
