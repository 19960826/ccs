package com.zs.pms.appexecption;

public class AppExecption extends Exception {
	// 程序自定义异常类与异常信息
	private String errMsg;// 异常信息
	private int errCode;// 异常编码

	public String getErrMsg() {
		return errMsg;
	}

	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}

	public int getErrCode() {
		return errCode;
	}

	public void setErrCode(int errCode) {
		this.errCode = errCode;
	}

	// 创建有参构造函数用来给异常信息，异常编码赋值
	public AppExecption(String errMsg, int errCode) {
		this.errMsg = errMsg;
		this.errCode = errCode;
	}
}
