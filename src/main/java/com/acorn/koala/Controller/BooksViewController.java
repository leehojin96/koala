package com.acorn.koala.Controller;

import java.util.ArrayList;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.acorn.koala.dao.ApiBooks;
import com.acorn.koala.dto.BooksDetailDto;
import com.acorn.koala.dto.BooksDetailDto;

@Controller
public class BooksViewController {

	@Autowired
	ApiBooks apiBooks;

	// 베스트셀러 뷰
	@RequestMapping(value = "/Bestseller", method = RequestMethod.GET)
	public String bestsellerView() {
		return "bestseller"; // views/books.jsp 이동
	}

	// 베스트셀러 리스트
	@ResponseBody
	@RequestMapping(value = "/books/Bestseller", method = RequestMethod.GET)
	public HashMap<String, Object> getbestsellerListView(int start, int categoryId) {

		String result = apiBooks.getBestseller(start, categoryId);

		HashMap<String, Object> map = apiBooks.fromJSONtoItems(result);
		System.out.println();

		return map;
	}

	// 신간도서 뷰
	@RequestMapping(value = "/ItemNewAll ", method = RequestMethod.GET)
	public String itemNewAllView() {
		return "itemNewAll"; // views/itemNewAll.jsp 이동
	}

	// 신간도서 리스트
	@ResponseBody
	@RequestMapping(value = "/books/ItemNewAll", method = RequestMethod.GET)
	public HashMap<String, Object> getItemNewAllData(int start, int categoryId) {

		String result = apiBooks.getItemNewAll(start, categoryId);

		HashMap<String, Object> map = apiBooks.fromJSONtoItems(result);
		System.out.println();

		return map;
	}

	// 신간 인기 도서 뷰
	@RequestMapping(value = "/ItemNewSpecial", method = RequestMethod.GET)
	public String itemNewSpecialView() {
		return "itemNewSpecial"; // views/itemNewAll.jsp 이동
	}

	// 신간 인기 도서 리스트
	@ResponseBody
	@RequestMapping(value = "/books/ItemNewSpecial", method = RequestMethod.GET)
	public HashMap<String, Object> getItemNewSpecial(int start, int categoryId) {

		String result = apiBooks.getItemNewSpecial(start, categoryId);

		HashMap<String, Object> map = apiBooks.fromJSONtoItems(result);
		System.out.println();

		return map;
	}

	// 검색 도서 뷰
	@RequestMapping(value = "/Search", method = RequestMethod.GET)
	public String booksSearchView(String query, Model m) {

		return "booksSearch"; // view 이름
	}

	// 검색 도서 리스트
	@ResponseBody
	@RequestMapping(value = "/books/Search", method = RequestMethod.GET)
	public HashMap<String, Object> getSearch(int start, int categoryId, String query) {

		String result = apiBooks.getSearch(start, categoryId, query);

		HashMap<String, Object> map = apiBooks.fromJSONtoItems(result);

		return map;
	}

	// 도서 디테일 뷰
	@RequestMapping(value = "/books/Detail", method = RequestMethod.GET)
	public String booksDetailView(String isbn13, Model m) {
		
		String result = apiBooks.getDetail(isbn13);
		
		BooksDetailDto booksDetail = apiBooks.fromJSONtoItems2(result);
		
		m.addAttribute("title", booksDetail.getTitle());
		m.addAttribute("link", booksDetail.getLink());
		m.addAttribute("author", booksDetail.getAuthor());
		m.addAttribute("pubDate", booksDetail.getPubDate());
		m.addAttribute("description", booksDetail.getDescription());
		m.addAttribute("priceSales", booksDetail.getPriceSales());
		m.addAttribute("priceStandard", booksDetail.getPriceStandard());
		m.addAttribute("mileage", booksDetail.getMileage());
		m.addAttribute("cover", booksDetail.getCover());
		m.addAttribute("categoryId", booksDetail.getCategoryId());
		m.addAttribute("categoryName", booksDetail.getCategoryName());
		m.addAttribute("publisher", booksDetail.getPublisher());
		
		
		return "detail"; // view 이름
	}

	

}