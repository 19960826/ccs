package com.zs.pms.po;

import java.io.Serializable;
import java.util.Date;

public class Title implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String title;
	private String contexnt;
	private String author;
	private Date crtime;
	private  PinPo channel;
	private int isremod;
	private int ishot;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContexnt() {
		return contexnt;
	}
	public void setContexnt(String contexnt) {
		this.contexnt = contexnt;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Date getCrtime() {
		return crtime;
	}
	public void setCrtime(Date crtime) {
		this.crtime = crtime;
	}
	
	public int getIsremod() {
		return isremod;
	}
	public void setIsremod(int isremod) {
		this.isremod = isremod;
	}
	public int getIshot() {
		return ishot;
	}
	public void setIshot(int ishot) {
		this.ishot = ishot;
	}
	public PinPo getChannel() {
		return channel;
	}
	public void setChannel(PinPo channel) {
		this.channel = channel;
	}

}
