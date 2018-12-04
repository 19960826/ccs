package com.zs.pms.service;

import java.util.List;

import com.zs.pms.po.PinPo;
import com.zs.pms.vo.QueryPinda;
import com.zs.pms.appexecption.AppExecption;


public interface PindaService {
       
	//新增
	public int insert(PinPo title)throws AppExecption;
	
	//修改
	public void update(PinPo title) throws AppExecption;
	
    //删除一条
	public void delete(int id);	
	
	//批量删除
	public void deleteById(int[] id);
	
	//获得一条
	public PinPo queryById(int id);
	
	//按条件查询
	public List<PinPo> queryByCon(QueryPinda query);
	
	//查分页
	public List<PinPo> queryByPage(QueryPinda query,int page)throws AppExecption;
	
	//获得总页数
	public int queryCount(QueryPinda query);
}
