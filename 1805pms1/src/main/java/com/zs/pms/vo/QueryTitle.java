package com.zs.pms.vo;

import com.zs.pms.querypage.QueryPage;

public class QueryTitle extends QueryPage {
	
   private String title;
   private String author;
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
}
