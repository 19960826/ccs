package com.zs.pms.dao;

import java.util.List;

import com.zs.pms.po.TDept;

public interface DeptDao {
	
	//通过上级id获取下拉菜单
	public List<TDept> queryByPid(int pid);

}
