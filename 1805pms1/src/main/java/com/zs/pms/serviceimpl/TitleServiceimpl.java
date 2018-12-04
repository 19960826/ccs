package com.zs.pms.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zs.pms.appexecption.AppExecption;
import com.zs.pms.dao.TitleDao;
import com.zs.pms.po.Title;
import com.zs.pms.service.TitleService;
import com.zs.pms.utils.constant;
import com.zs.pms.vo.QueryTitle;

@Service
public class TitleServiceimpl implements TitleService {
	
	@Autowired
	TitleDao td;

	@Override
	//新增
	@Transactional(rollbackFor=Exception.class) //有异常就提交回滚
	public int insert(Title title) throws AppExecption {
		// TODO Auto-generated method stub
		
		return td.insert(title);
	}

	@Override
	//修改
	@Transactional(rollbackFor=Exception.class) //有异常就提交回滚
	public void update(Title title) throws AppExecption {
		// TODO Auto-generated method stub
          td.update(title); 
	}

	@Override
	//删除一条
     public void delete(int id) {
		// TODO Auto-generated method stub
          td.delete(id);
	}

	@Override
	//批量删除
	public void deleteById(int[] id) {
		// TODO Auto-generated method stub
       td.deleteById(id);
	}

	@Override
	//根据id获得权限
	public Title queryById(int id) {
		// TODO Auto-generated method stub
		return td.queryBYId(id);
	}

	@Override
	//根据条件查询
	public List<Title> queryByCon(QueryTitle query) {
		// TODO Auto-generated method stub
		return td.queryByCon(query);
	}

	@Override
	//分页查询
	public List<Title> queryByPage(QueryTitle query, int page) throws AppExecption {
		// TODO Auto-generated method stub
		query.setPage(page);
		return td.queryByPage(query);
	}

	@Override
	//查询总条数
	public int queryCount(QueryTitle query) {
		// TODO Auto-generated method stub
		int count=td.queryCount(query);
		if(count%constant.PAGECOUNT==0){
			 return count/constant.PAGECOUNT;
		}else{
			return count/constant.PAGECOUNT+1;
		}
		
	}

}
