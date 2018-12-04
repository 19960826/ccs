package com.zs.pms.dao;

import java.util.List;

import com.zs.pms.appexecption.AppExecption;
import com.zs.pms.po.Title;
import com.zs.pms.po.UserPo;
import com.zs.pms.vo.QueryTitle;
import com.zs.pms.vo.QueryUser;

public interface TitleDao {
	

	//通过条件查询
	public List<Title> queryByCon(QueryTitle query);
	
	//查分页
	public List<Title> queryByPage(QueryTitle query);
	
    //通过id获得权限
	public Title queryBYId(int id);
	
	//批量删除
	public void deleteById(int[] id);
	
	//修改
	public void update(Title po)throws AppExecption;
	
	//新增
	public int insert(Title po);
	
	//删除
	public void delete(int id);
	
	//查询条数
	public int queryCount(QueryTitle query);

}
