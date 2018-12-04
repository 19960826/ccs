package com.zs.pms.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zs.pms.appexecption.AppExecption;
import com.zs.pms.dao.UserDao;
import com.zs.pms.po.UserPo;
import com.zs.pms.service.UserService;
import com.zs.pms.utils.MD5;
import com.zs.pms.utils.constant;
import com.zs.pms.vo.QueryUser;

@Service

public class UserServiceImpl implements UserService {

	@Autowired
	UserDao udao;
	
	
	@Override
	//登录
	public UserPo chkLogin(QueryUser query) throws AppExecption {
		
		//将明码变成密码
		MD5  md=new MD5();
		//加密后的密码
	    String p=md.getMD5ofStr(query.getPassword());
	    //将密码放到query中
		query.setPassword(p);
          	
		
		List<UserPo>list=udao.queryByCon(query);
		
		if(list==null||list.size()!=1){
		throw new AppExecption("用户名或密码不正确，请重新输入",100);
		}
		
		//获得第一条
	  UserPo up=list.get(0);
	  //关联权限列表返回
	  return udao.queryBYId(up.getId());
	}

	@Override
	//删除多条
	public void deleteById(int[] id) {
		// TODO Auto-generated method stub
		udao.deleteById(id);
	}

	@Override
	@Transactional(rollbackFor=Exception.class) //有异常就提交回滚
	public void update(UserPo po) throws AppExecption{
		
		if(po.getIsenabled()==-1){
			throw new AppExecption("不能修改此用户",1003);
		}
		
		// TODO Auto-generated method stub
		if(po.getPassword()!=null&&(!"".equals(po.getPassword()))&&po.getPassword().length()!=32){
			MD5 md=new MD5();
			po.setPassword(md.getMD5ofStr(po.getPassword()));
		}
		
		udao.update(po);
	}

	@Override
	//按条件查询
	public List<UserPo> queryByCon(QueryUser query) {
		// TODO Auto-generated method stub
		return udao.queryByCon(query);
	}

	@Override
	@Transactional(rollbackFor=Exception.class) //有异常就提交回滚
	public int insert(UserPo user)throws AppExecption {
		// TODO Auto-generated method stub
		if ("admin".equals(user.getLoginname())) {
			throw new AppExecption("登录名不能为admin",1002);
		}
		udao.insert(user);
		return udao.insert(user);
	}


	
	@Override
	//删除一条
	@Transactional(rollbackFor=Exception.class) //有异常就提交回滚
	public void delete(int id) {
		// TODO Auto-generated method stub
		 udao.delete(id);
	}

	@Override
	public UserPo queryById(int id) {
		// TODO Auto-generated method stub
		return udao.queryBYId(id);
	}

	@Override
	//查分页
	public List<UserPo> queryByPage(QueryUser query, int page) throws AppExecption {
		// TODO Auto-generated method stub
		query.setPage(page);
		return udao.queryByPage(query);
	}

	@Override
	//计算总页数
	public int queryCount(QueryUser query) {
		// TODO Auto-generated method stub
		int count=udao.queryCount(query);
		if(count%constant.PAGECOUNT==0){
			 return count/constant.PAGECOUNT;
		}else{
			return count/constant.PAGECOUNT+1;
		}
		
	}

	

}
