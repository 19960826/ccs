package com.zs.pms.test;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zs.pms.appexecption.AppExecption;
import com.zs.pms.po.TDept;
import com.zs.pms.po.TPermission;
import com.zs.pms.po.UserPo;
import com.zs.pms.service.UserService;
import com.zs.pms.vo.QueryUser;


@RunWith(SpringJUnit4ClassRunner.class)//使用spring测试框架
@ContextConfiguration("classpath:applicationcontext.xml")//引入配置文件
public class testUser {
	
	@Autowired
	
	UserService us;
	
	public void testUser(){
		QueryUser user=new QueryUser();
		user.setLoginname("guany");
		user.setPassword("1234");
		
		
		try {
			UserPo	po=us.chkLogin(user);
			System.out.println(po.getRealname()+" "+po.getDept());
			for(TPermission per:po.getPer()){
			System.out.println(per.getPname());	
			}
		System.out.println("**************************");
			for(TPermission per1:po.getMenu()){
				 System.out.println(per1.getPname());
				 for(TPermission per2:per1.getChildren()){
					 System.out.println("\t"+per2.getPname());
				 }
			}
			
		} catch (AppExecption e) {
			// TODO Auto-generated catch block
			System.out.println(e.getErrMsg());
		}catch(Exception e1){
			e1.printStackTrace();
		}
	}
  
	//删除
   public void testDelete(){
	   int[]id={3001,3002};
	   
	    us.deleteById(id);
	   
   }
   
   
   public void testPage(){
	   QueryUser user=new QueryUser();
		//user.setLoginname("guany");
		//user.setPassword("1234");
	   //user.setIsenabled(-1);
	   user.setPage(2);
	  
	  us.queryByCon(user);
	   
   }
   
   
   public void testPageCount() throws AppExecption{
	   QueryUser user=new QueryUser();
	    System.out.println("当前总页数"+us.queryCount(user));
	   for(UserPo user1:us.queryByPage(user, 1)){
		  System.out.println(user1.getRealname()); 
	   }
   }

   //修改

   public void testUpdate(){
	   UserPo po=new UserPo();
	   po.setId(3084);
	   po.setRealname("小小1");
	   po.setEmail("6661@666.com");
	   po.setBirthday(new Date());
	   TDept dep=new TDept();
	   dep.setId(5);
	   po.setDept(dep);
	   po.setLoginname("c1");
	   po.setPassword("1234");
	   po.setPic("aaa.jsp");
	   po.setSex("男");
	   po.setUpdator(1001);
	   try {
		us.update(po);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   
   }


   //新增 （事物）
   @Test
     public void testInsert(){
	   UserPo po=new UserPo();
	   po.setId(3084);
	   po.setLoginname("hh");
	   po.setPassword("1234");
	   po.setSex("男");
	   po.setEmail("666@666.com");
	   po.setBirthday(new Date());
	   po.setRealname("小小");
	  TDept dep=new TDept();
	   dep.setId(5);
	   po.setDept(dep);
	   po.setPic("aaa.jsp");
	   po.setUpdatime(new Date());
	   po.setUpdator(1001);
	   po.setIsenabled(1);
	   
	   try {
		us.insert(po);
	} catch (AppExecption e) {
		// TODO Auto-generated catch block
		//业务异常
		System.out.println(e.getErrMsg());
	}catch(Exception e1){
		e1.printStackTrace();
	}
	   
   }
}
