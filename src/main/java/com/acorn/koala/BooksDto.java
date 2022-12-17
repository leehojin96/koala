package com.acorn.koala;

import org.json.JSONObject;

public class BooksDto {
	
	String title;
	String author;
	String coverLargeUrl;
	int priceStandard;
	

	public BooksDto(JSONObject json) {
		this.title = json.getString("title");
		this.author = json.getString("author");
		this.coverLargeUrl = json.getString("coverLargeUrl");
		this.priceStandard = json.getInt("priceStandard");
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
	public String getCoverLargeUrl() {
		return coverLargeUrl;
	}
	public void setCoverLargeUrl(String coverLargeUrl) {
		this.coverLargeUrl = coverLargeUrl;
	}
	public int getPriceStandard() {
		return priceStandard;
	}
	public void setPriceStandard(int priceStandard) {
		this.priceStandard = priceStandard;
	}
	public BooksDto(String title, String author, String coverLargeUrl, int priceStandard) {
		super();
		this.title = title;
		this.author = author;
		this.coverLargeUrl = coverLargeUrl;
		this.priceStandard = priceStandard;
	}
	@Override
	public String toString() {
		return "BooksDto [title=" + title + ", author=" + author + ", coverLargeUrl=" + coverLargeUrl
				+ ", priceStandard=" + priceStandard + "]";
	}
	
	
}
