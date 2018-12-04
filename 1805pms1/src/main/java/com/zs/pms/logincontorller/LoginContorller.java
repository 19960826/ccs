package com.zs.pms.logincontorller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.ws.rs.DELETE;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zs.pms.appexecption.AppExecption;
import com.zs.pms.po.TDept;
import com.zs.pms.po.UserPo;
import com.zs.pms.service.DeptService;
import com.zs.pms.service.UserService;
import com.zs.pms.userbean.UserBean;
import com.zs.pms.vo.QueryUser;

@Controller
public class LoginContorller {
	
	@Autowired
	private UserService us;
	@Autowired
	private DeptService ds;
	
	@RequestMapping("/user/list.do")//二级url
	public String list(QueryUser query,ModelMap map,String page){
		
		//没有页数
		if(page==null||"".equals(page)){
			//page默认为一
			page="1";
	    }
		try {
			//带回分页数据
			map.addAttribute("LIST",us.queryByPage(query,Integer.parseInt(page)));
			//带回总页数
			map.addAttribute("PAGECOUNT",us.queryCount(query));
			//带回当前页数
			map.addAttribute("PAGE",page);
			//回带查询条件
			map.addAttribute("QUERY",query);
			
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (AppExecption e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "user/list";
		
	}
	
	@RequestMapping("/user/toadd.do")
	public String toadd(ModelMap map){
		//获取一级部门
		List<TDept> list1=ds.queryByPid(0);
		
		//把数据带回页面
		map.addAttribute("DLIST",list1);
		//获取二级部门
		List<TDept> list2=ds.queryByPid(list1.get(0).getId());
		
		//把数据带回页面
		map.addAttribute("PLIST",list2);
		return "user/add";
	}
	
	@RequestMapping("/user/getdept.do")
	@ResponseBody //update.jsp
	public List<TDept> getDept(int pid){
		List<TDept> dp=ds.queryByPid(pid);
		return dp;
	}
	
	@RequestMapping("/user/add.do")
	public String add(UserPo user,ModelMap map,HttpSession session){
		//获得session中的用户信息
		UserPo userPo=(UserPo)session.getAttribute("CUSER");
		//在添加页面中存入为存在的数据
		   user.setCreator(userPo.getId());
		   user.setIsenabled(1);
		 try {
			  //调用新增方法
			us.insert(user);
			//调到指定路径 不需要传参
			return "redirect:list.do";
		} catch (AppExecption e) {
			// TODO Auto-generated catch block
			//出现错误信息将错误提示显示在页面
			map.addAttribute("MSG",e.getErrMsg());
		}
		  //返回到添加页面
		  return this.toadd(map);
	}
	
	//删除一条
	@RequestMapping("/user/delete.do")
	public String delete(int id){
		
		us.delete(id);
		return "redirect:list.do";
	
	}
	//删除多条
	@RequestMapping("/user/deletes.do")
	 public String deletes(int[]ids){
		 us.deleteById(ids);
		 return "redirect:list.do";
	 }
	
	
	//修改 获取部门信息
   @RequestMapping("/user/get.do")
   public String get(ModelMap map,int id){
	 UserPo po=  us.queryById(id);
	 map.addAttribute("user",po);
	 //获取一级部门
	 List<TDept> d1=ds.queryByPid(0);
	 //带回到页面
	 map.addAttribute("list",d1);
	 //获取二级部门
	 List<TDept> d2=ds.queryByPid(po.getDept().getPid());
	 map.addAttribute("plist",d2);
	 
	 return "user/update";
	   
   }
   
   @RequestMapping("/user/update.do")
   public String update(UserPo user,ModelMap map,HttpSession session){
	   //获取session的用户信息
	   UserPo userPo=(UserPo)session.getAttribute("CUSER");
		user.setUpdator(userPo.getId());
	   
		//调用修改的方法
		try {
			us.update(user);
		return "redirect:list.do";
		} catch (AppExecption e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.addAttribute("MSG",e.getErrMsg());
			
			return get(map,user.getId());
		}
		
   }
	
  
	

}
