package com.prodevans.zeno.config;

public interface CCAvenueConfig 
{

	String merchant_id = "127191";
	
	String access_code_DNS = "AVGK73EJ46AD68KGDA";
	String access_code_IP = "AVEX77FD69CC28XECC";
	
	String working_code_DNS = "D12ABCBE2A86FC4942B6C71B089B5F32";
	String working_code_IP = "6751513E41903CE3BF783FD4FE73B1FC";
	
	
	String Host = "http://myone8.oneeight.co.in/zeno/";
	
	String redirect_url = Host+"/ccavResponseHandler";
	
	String cancel_url = Host+"/ccvCancelResponse";
	
}
