package com.zs.pms.service;

import java.util.List;

import com.zs.pms.appexecption.AppExecption;
import com.zs.pms.po.Title;
import com.zs.pms.vo.QueryTitle;

public interface TitleService {
	
		//新增
		public int insert(Title title)throws AppExecption;
		
		//修改
		public void update(Title title) throws AppExecption;
		
	    //删除一条
		public void delete(int id);	
		
		//批量删除
		public void deleteById(int[] id);
		
		//获得一条
		public Title queryById(int id);
		
		//按条件查询
		public List<Title> queryByCon(QueryTitle query);
		
		//查分页
		public List<Title> queryByPage(QueryTitle query,int page)throws AppExecption;
		
		//获得总页数
		public int queryCount(QueryTitle query);

}
