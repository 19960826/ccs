package com.zs.pms.logincontorller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zs.pms.appexecption.AppExecption;
import com.zs.pms.po.UserPo;
import com.zs.pms.service.UserService;
import com.zs.pms.vo.QueryUser;

@Controller//控制器
public class FrameController {
	@Autowired
	UserService us;
	
	 @RequestMapping("tologin.do")
	 /*
	  * 去登录页*/
	 public String tologin(){
		 
		 return "login";
	 }
	 
	 @RequestMapping("/login.do")
	/*
	 * 检测登录
	 *query 登录名和密码
	 * code验证码
	 * session产生会话
	 *map回带数据*/
  public String login(QueryUser query,HttpSession session,ModelMap map){
		 
		 //验证码
		 //从session中取得kaptcha生成的验证码
			String ocode=(String) session.getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
		 //验证码不同
			if(!query.getCode().equals(ocode)){
				//页面带回信息
				map.addAttribute("MSG","验证码有误，请重新输入");
				return "login";
			}
		    //验证码相同
			try {
				UserPo user=us.chkLogin(query);
				//存在session
				session.setAttribute("CUSER",user);
				//当前日期
				session.setAttribute("TODAY",com.zs.pms.utils.DateUtil.getStrDate(new Date()));
				return "main";
				
				//业务异常
			} catch (AppExecption e) {
				// TODO Auto-generated catch block
				//页面带回信息
				map.addAttribute("MSG",e.getErrMsg());
				return "login";
			}
			//系统异常
			catch (Exception e1) {
				// TODO: handle exception
				e1.printStackTrace();
				return "error";
			}
		 
		   
		 		 
		 }
	 
	 @RequestMapping("/totop.do")
	 public String toTop(){
		 return "top";
	 }
	 @RequestMapping("/toleft.do")
	 public String toLeft(){
		 return "left";
	 }
	 @RequestMapping("/toright.do")
	 public String toRight(){
		 return "right";
	 }
	 
	 
	 
	 
	 
	 
}
