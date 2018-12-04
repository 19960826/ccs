package com.zs.pms.po;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class TPermission implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int id;
	private String pname;
	private int pid;
	private String url;
	private int lev;
	private int isleaf;
	private String npic;
	private int sort;
	
	private List<TPermission> children=new ArrayList<>();
	
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getLev() {
		return lev;
	}
	public void setLev(int lev) {
		this.lev = lev;
	}
	public int getIsleaf() {
		return isleaf;
	}
	public void setIsleaf(int isleaf) {
		this.isleaf = isleaf;
	}
	public String getNpic() {
		return npic;
	}
	public void setNpic(String npic) {
		this.npic = npic;
	}
	@Override
	public String toString() {
		return "TPermission [id=" + id + ", pname=" + pname + ", pid=" + pid + ", url=" + url + ", lev=" + lev
				+ ", isleaf=" + isleaf + ", npic=" + npic + ", sort=" + sort + "]";
	}
	public List<TPermission> getChildren() {
		return children;
	}
	public void setChildren(List<TPermission> children) {
		this.children = children;
	}
	

}
