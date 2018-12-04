package com.zs.pms.querypage;

import com.zs.pms.utils.constant;

public class QueryPage {
	
	private int start;
	private int end;
	private int page;
	public int getStart() {
		return (page-1)*constant.PAGECOUNT+1;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return page*constant.PAGECOUNT;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}

}
