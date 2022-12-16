package com.acorn.koala;

import org.json.JSONObject;

public class BooksDto {
	int no;
	int ranking;
	String bookname;
	String authors;
	String publisher;
	String publication_year;
	String isbn13;
	String class_no;
	String class_nm;
	int loan_count;
	String bookImageURL;
	
	


	public BooksDto(JSONObject booksJson){
		this.no = booksJson.getInt("no");
		this.ranking = booksJson.getInt("ranking");
        this.bookname = booksJson.getString("bookname");
        this.authors = booksJson.getString("authors");
        this.publisher = booksJson.getString("publisher");
        this.publication_year = booksJson.getString("publication_year");
        this.isbn13 = booksJson.getString("isbn13");
        this.class_no = booksJson.getString("class_no");
        this.class_nm = booksJson.getString("class_nm");
        this.loan_count = booksJson.getInt("loan_count");
        this.bookImageURL = booksJson.getString("bookImageURL");
    }



	public BooksDto(int no, int ranking, String bookname, String authors, String publisher, String publication_year,
			String isbn13, String class_no, String class_nm, int loan_count, String bookImageURL) {
		super();
		this.no = no;
		this.ranking = ranking;
		this.bookname = bookname;
		this.authors = authors;
		this.publisher = publisher;
		this.publication_year = publication_year;
		this.isbn13 = isbn13;
		this.class_no = class_no;
		this.class_nm = class_nm;
		this.loan_count = loan_count;
		this.bookImageURL = bookImageURL;
	}



	public int getNo() {
		return no;
	}



	public void setNo(int no) {
		this.no = no;
	}



	public int getRanking() {
		return ranking;
	}



	public void setRanking(int ranking) {
		this.ranking = ranking;
	}



	public String getBookname() {
		return bookname;
	}



	public void setBookname(String bookname) {
		this.bookname = bookname;
	}



	public String getAuthors() {
		return authors;
	}



	public void setAuthors(String authors) {
		this.authors = authors;
	}



	public String getPublisher() {
		return publisher;
	}



	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}



	public String getPublication_year() {
		return publication_year;
	}



	public void setPublication_year(String publication_year) {
		this.publication_year = publication_year;
	}



	public String getIsbn13() {
		return isbn13;
	}



	public void setIsbn13(String isbn13) {
		this.isbn13 = isbn13;
	}



	public String getClass_no() {
		return class_no;
	}



	public void setClass_no(String class_no) {
		this.class_no = class_no;
	}



	public String getClass_nm() {
		return class_nm;
	}



	public void setClass_nm(String class_nm) {
		this.class_nm = class_nm;
	}



	public int getLoan_count() {
		return loan_count;
	}



	public void setLoan_count(int loan_count) {
		this.loan_count = loan_count;
	}



	public String getBookImageURL() {
		return bookImageURL;
	}



	public void setBookImageURL(String bookImageURL) {
		this.bookImageURL = bookImageURL;
	}



	@Override
	public String toString() {
		return "BooksDto [no=" + no + ", ranking=" + ranking + ", bookname=" + bookname + ", authors=" + authors
				+ ", publisher=" + publisher + ", publication_year=" + publication_year + ", isbn13=" + isbn13
				+ ", class_no=" + class_no + ", class_nm=" + class_nm + ", loan_count=" + loan_count + ", bookImageURL="
				+ bookImageURL + "]";
	}
	

}
