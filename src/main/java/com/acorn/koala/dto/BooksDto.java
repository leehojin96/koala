package com.acorn.koala.dto;

import org.json.JSONObject;

public class BooksDto {
	
	String title;
	String author;
	String cover;
	Object isbn13;
	int priceStandard;
	

	public BooksDto(JSONObject json) {
		this.title = json.getString("title");
		this.author = json.getString("author");
		this.cover = json.getString("cover");
		this.isbn13 = json.get("isbn13");
		this.priceStandard = json.getInt("priceStandard");
	}




	public BooksDto(String title, String author, String cover, Object isbn13, int priceStandard) {
		super();
		this.title = title;
		this.author = author;
		this.cover = cover;
		this.isbn13 = isbn13;
		this.priceStandard = priceStandard;
	}



	public BooksDto() {
		super();
		// TODO Auto-generated constructor stub
	}




	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getAuthor() {
		return author;
	}


	public void setAuthor(String author) {
		this.author = author;
	}


	public String getCover() {
		return cover;
	}


	public void setCover(String cover) {
		this.cover = cover;
	}


	public int getPriceStandard() {
		return priceStandard;
	}


	public void setPriceStandard(int priceStandard) {
		this.priceStandard = priceStandard;
	}





	public Object getIsbn() {
		return isbn13;
	}




	public void setIsbn(Object isbn13) {
		this.isbn13 = isbn13;
	}




	@Override
	public String toString() {
		return "BooksDto [title=" + title + ", author=" + author + ", cover=" + cover + ", isbn13=" + isbn13
				+ ", priceStandard=" + priceStandard + "]";
	}




	




	
	
	
}
