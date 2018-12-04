package com.zs.pms.dao;

import java.util.List;

import com.zs.pms.appexecption.AppExecption;
import com.zs.pms.po.UserPo;
import com.zs.pms.vo.QueryUser;


public interface UserDao {
	
	//通过条件查询
	public List<UserPo> queryByCon(QueryUser query);
	
	//查分页
	public List<UserPo> queryByPage(QueryUser query);
	
    //通过id获得权限
	public UserPo queryBYId(int id);
	
	//批量删除
	public void deleteById(int[] id);
	
	//修改
	public void update(UserPo po)throws AppExecption;
	
	//新增
	public int insert(UserPo po);
	
	//删除
	public void delete(int id);
	
	//查询条数
	public int queryCount(QueryUser query);
	

}
