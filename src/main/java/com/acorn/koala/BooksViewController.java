package com.acorn.koala;

import java.util.ArrayList;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BooksViewController {
	
	@Autowired
	ApiPopularBooks apiPopularBooks;
	
	
	@ResponseBody
	@RequestMapping(value="/books",method=RequestMethod.GET)
	public ArrayList<BooksDto>  popularbooks() {
		
		String result = apiPopularBooks.getList();
		
		ArrayList<BooksDto> list = apiPopularBooks.fromJSONtoItems(result);
		
		
		return list;
	}


}
