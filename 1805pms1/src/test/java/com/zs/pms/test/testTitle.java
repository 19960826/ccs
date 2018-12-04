package com.zs.pms.test;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zs.pms.appexecption.AppExecption;
import com.zs.pms.po.PinPo;
import com.zs.pms.po.Title;
import com.zs.pms.service.TitleService;
import com.zs.pms.vo.QueryTitle;

@RunWith(SpringJUnit4ClassRunner.class)//使用spring测试框架
@ContextConfiguration("classpath:applicationcontext.xml")//引入配置文件
public class testTitle {
	
	@Autowired
	
	TitleService ts;
	
	//查询
    @Test
	public void testQuery(){
	      QueryTitle title=new QueryTitle();
	      
	      ts.queryByCon(title);
	      Title ti=new Title();
	      System.out.println(ti.getAuthor());	 
	}
	
	//新增 （事物）
	
    public void testInsert(){
	   Title title=new Title();
	   
	   title.setTitle("你猜猜");
	   title.setContexnt("不知道该怎么办");;
	   title.setAuthor("mimi");
	   title.setCrtime(new Date());
	   PinPo pp=new PinPo();
	   pp.setId(1);
	   title.setChannel(pp);
	   title.setIsremod(1);
	   title.setIshot(1);
	   
	   try {
		ts.insert(title);
	} catch (AppExecption e) {
		// TODO Auto-generated catch block
		//业务异常
		System.out.println(e.getErrMsg());
	}catch(Exception e1){
		e1.printStackTrace();
	}
	   
  }
	
	//修改
	
	public void testUpdate(){
		
		Title title=new Title();
		title.setId(1);
		title.setAuthor("林陆骁");
		title.setContexnt("南初");
		title.setCrtime(new Date());
		title.setIsremod(1);
		title.setIshot(2);
		PinPo pp=new PinPo();
		pp.setId(1);
		title.setChannel(pp);
		
		try {
			ts.update(title);
		} catch (AppExecption e) {
			// TODO Auto-generated catch block
			System.out.println(e.getErrMsg());
		}catch(Exception e1){
			e1.printStackTrace();
		}
	}
	
	//批量删除
	
	public void testDelet(){
		int []id={4,5};
		ts.deleteById(id);
		
	}
	
	//删除一条
	public void testDeletee(){
		
		ts.delete(30);
	}
	
	//总条数
	public void testPageCount()throws AppExecption{
		QueryTitle title=new QueryTitle();
		System.out.println("当前总页数为"+ts.queryCount(title));
		   for(Title t:ts.queryByPage(title, 1)){
				  System.out.println(t.getAuthor()); 
			   }

	}
}
