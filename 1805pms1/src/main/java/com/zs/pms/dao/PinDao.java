package com.zs.pms.dao;

import java.util.List;

import com.zs.pms.appexecption.AppExecption;
import com.zs.pms.vo.QueryPinda;
import com.zs.pms.dao.PinDao;
import com.zs.pms.po.PinPo;

public interface PinDao {

	//通过条件查询
	public List<PinPo> queryByCon(QueryPinda query);
	
	//查分页
	public List<PinPo> queryByPage(QueryPinda query);
	
    //通过id获得权限
	public PinPo queryBYId(int id);
	
	//批量删除
	public void deleteById(int[] id);
	
	//修改
	public void update(PinPo po)throws AppExecption;
	
	//新增
	public int insert(PinPo po);
	
	//删除
	public void delete(int id);
	
	//查询条数
	public int queryCount(QueryPinda query);


}
