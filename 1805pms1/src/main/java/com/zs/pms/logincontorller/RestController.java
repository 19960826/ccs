package com.zs.pms.logincontorller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zs.pms.po.UserPo;
import com.zs.pms.service.UserService;

//提供某个用户的信息
@Controller
public class RestController {
	@Autowired
	UserService us;
	@RequestMapping(value="/userinfo/{id}.do")
	//{id}占位实际 /userrfo/3162.do
	@ResponseBody
	public UserPo queryById(@PathVariable("id") int id){
		return us.queryById(id);
	}

}
