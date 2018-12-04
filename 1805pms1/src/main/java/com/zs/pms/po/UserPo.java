package com.zs.pms.po;

import java.io.Serializable;
import java.security.KeyStore.PrivateKeyEntry;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.zs.pms.utils.DateUtil;

public class UserPo implements  Serializable{

	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int id;
	private String loginname;;
    private String password;
	private String sex;
	private Date birthday;
	private String birthdayTxt;
	private int isenabled;
	private String isenabledTxt;
	private String email;
	private TDept dept;//关联字段 一对一
	private String realname;
	private int creator;
	private Date creatime;
	private int updator;
	private Date updatime;
	private String updatimeTxt;
	private String pic;
	
	private  List<TPermission> per;
	private List<TPermission> menu=new ArrayList<>();
		
	//整理菜单
    public List<TPermission> getMenu(){
    	menu.clear();
    	for(TPermission per1:per){
    		//清空
    		per1.getChildren().clear();
    		//一级菜单s
    		if(per1.getPid()==0){
    			//二级菜单
    			for(TPermission per2:per){
    				if (per1.getId()==per2.getPid()) {
						per1.getChildren().add(per2);
					}
    			}
    			//将装载好的一级菜单放到菜单中
    			menu.add(per1);		
    		}
    	}
		return menu;
    }
	
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLoginname() {
		return loginname;
	}
	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public TDept getDept() {
		return dept;
	}
	public void setDept(TDept dept) {
		this.dept = dept;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public int getCreator() {
		return creator;
	}
	public void setCreator(int creator) {
		this.creator = creator;
	}
	public Date getCreatime() {
		return creatime;
	}
	public void setCreatime(Date creatime) {
		this.creatime = creatime;
	}
	public int getUpdator() {
		return updator;
	}
	public void setUpdator(int updator) {
		this.updator = updator;
	}
	public Date getUpdatime() {
		return updatime;
	}
	public void setUpdatime(Date updatime) {
		this.updatime = updatime;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public List<TPermission> getPer() {
		return per;
	}
	public void setPer(List<TPermission> per) {
		this.per = per;
	}
	@Override
	public String toString() {
		return "UserPo [id=" + id + ", loginname=" + loginname + ", password=" + password + ", sex=" + sex
				+ ", birthday=" + birthday + ", email=" + email + ", dept=" + dept + ", realname=" + realname
				+ ", creator=" + creator + ", creatime=" + creatime + ", updator=" + updator + ", updatime=" + updatime
				+ ", pic=" + pic + ", per=" + per + "]";
	}

	public int getIsenabled() {
		return isenabled;
	}

	public void setIsenabled(int isenabled) {
		this.isenabled = isenabled;
	}

	public String getIsenabledTxt() {
		if (isenabled==1) {
			return "可用";
		}else{
			return "不可用";

		}
	}

	public void setIsenabledTxt(String isenabledTxt) {
		this.isenabledTxt = isenabledTxt;
	}

	public void setMenu(List<TPermission> menu) {
		this.menu = menu;
	}

	public String getBirthdayTxt() {
		
		
		return DateUtil.getStrDate(birthday);
	}

	public void setBirthdayTxt(String birthdayTxt) {
		this.birthdayTxt = birthdayTxt;
	}

	public String getUpdatimeTxt() {
		
		return DateUtil.getStrDate(updatime);
	}

	public void setUpdatimeTxt(String updatimeTxt) {
		this.updatimeTxt = updatimeTxt;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
