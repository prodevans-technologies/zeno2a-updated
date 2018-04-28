<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page import="com.prodevans.zeno.dao.impl.PaymentResponseDAOImpl"%>
<%@page import="com.prodevans.zeno.dao.impl.PaymentDAOImpl"%>
<%@page import="com.prodevans.zeno.pojo.PaymentDetails"%>
<%@page import="com.prodevans.zeno.config.CCAvenueConfig"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URL"%>

<%@page import="org.apache.xmlrpc.client.XmlRpcClient"%>
<%@page import="org.apache.xmlrpc.client.XmlRpcClientConfigImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.io.*,java.util.*,com.ccavenue.security.*" %>
<html>
        <meta charset="utf-8">
        <title>oneEight</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta content="oneEight User Portal" name="description">
        <meta content="oneEight User Portal Keywords" name="keywords">


        <!-- link to image for socio -->
        <meta property="og:url" content="-CUSTOMER VALUE-">
        <link rel="shortcut icon" href="favicon.ico">


        <!--  include the all css components -->
        <jsp:include page="../component/css.jsp"></jsp:include>


</head>
<style type="text/css">

.row
{
	margin: unset;
}
.mainBlock3
{
	max-height: 105% !important;
	min-height: 105% !important;
	margin-top: 7% !important;
	margin-bottom: 7% !important;
}

.col-md-7, .col-md-6, .col-sm-6  
{
	padding-left: 1px !important;
	padding-right: 1px !important;
}

.pt-20M
{
	padding-top: 10px;
}
.pt-20I
{
	padding-top: 10px;
}
@media ( max-width : 680px) 
{
  	.mainBlock3
  	{
  		width: 90% !important;
  		min-height: 80% !important;
  	}
  	.pt-20M
	{
		padding-top: 1px;
	}
	.pt-20I
	{
		padding-top: 30px;
	}
	.col-xs-12, .col-md-8  
	{
    	 padding-left: 1px !important;
    	 padding-right: 1px !important;
  	}
}
@media (max-width:900px) and (min-width:680px)
{	
	.col-xs-12, .col-md-8  
	{
    	 padding-left: 1px !important;
  	}
  	.mainBlock3
  	{
  		width: 90% !important;
  		min-height: 140% !important;
  	} 	
}

.firstRow
{
     background-image: url('img/blue_small.png');
     padding-left: 4.8% !important;
     min-height: 116px;
     background-size: cover;
}
.col-md-1
{
	padding-left: 1px !important;
}

</style>

<body class="corporate">

<jsp:include page="../component/menubar.jsp"></jsp:include>
        
<%
		String workingKey_DNS = CCAvenueConfig.working_code_DNS;		//32 Bit Alphanumeric Working Key should be entered here so that data can be decrypted.
		
		
		String encResp= request.getParameter("encResp");		
		AesCryptUtil aesUtil=new AesCryptUtil(workingKey_DNS);
		String decResp = aesUtil.decrypt(encResp);
		StringTokenizer tokenizer = new StringTokenizer(decResp, "&");
		Hashtable hs=new Hashtable();
		String pair=null, pname=null, pvalue=null;
		while (tokenizer.hasMoreTokens()) {
			pair = (String)tokenizer.nextToken();
			if(pair!=null) {
				StringTokenizer strTok=new StringTokenizer(pair, "=");
				pname=""; pvalue="";
				if(strTok.hasMoreTokens()) {
					pname=(String)strTok.nextToken();
					if(strTok.hasMoreTokens())
						pvalue=(String)strTok.nextToken();
					hs.put(pname, URLDecoder.decode(pvalue));
				}
			}
		}
		PaymentResponseDAOImpl prdi=new PaymentResponseDAOImpl();
	    HashMap<String, String> responseFromCCAvenue= new HashMap<>();
		
	    Enumeration enumeration = hs.keys();
		while(enumeration.hasMoreElements())
		{
			pname=""+enumeration.nextElement();
			pvalue=""+ hs.get(pname);
			responseFromCCAvenue.put(pname, pvalue);
		}
		
	
		
		PaymentDetails pd=(PaymentDetails)session.getAttribute("data");
		boolean success=false;
		if(responseFromCCAvenue.get("order_status").equals("Success"))
		{
			
			Vector<Object> params = new Vector<>();
			
			params.add(pd.getActno());
			params.add(pd.getTrans_amount());
			params.add(pd.getTrans_type());
			params.add(new Date());
			params.add(pd.getCurrency());
			params.add(pd.getInstrumentid());
			params.add(pd.getInstrument_detail());
			params.add(pd.getTrans_descr());
			params.add(pd.getInvoiceNo());

			String receipt_content = "Dear Customer,\nGreeting from Nuron!\nWe wish to confirm receipt of Rs. "+responseFromCCAvenue.get("amount")+" via Online Payment towards Nuron A/C No. ROL0000011 \n In case of any queries, feel free to contact us at +91 9019602602\nYou may also use the https://mynuron.co.in/login portal \n Regards,\n Nuron";
			
			Vector<Object> params_receipt_to_customer = new Vector<>();
			params_receipt_to_customer.add(receipt_content);
			params_receipt_to_customer.add("Payment Receipt");
			params_receipt_to_customer.add(responseFromCCAvenue.get("billing_email"));
			params_receipt_to_customer.add(1);
			
			
			String server_url = "http://52.172.205.76/unifyv3/xmlRPC.do";
			URL serverUrl = new URL(server_url);
			// Create an object to represent our server.
			XmlRpcClient server = new XmlRpcClient();
			XmlRpcClientConfigImpl conf = new XmlRpcClientConfigImpl();
			conf.setBasicUserName("oneeight");
			conf.setBasicPassword("!oneight@#");
			conf.setServerURL(serverUrl);
			
			server.setConfig(conf);
			Object o=(Object) server.execute("unify.addTransaction",params);
			int Transaction_id=(int)o;
			pd.setTransaction_id(Transaction_id);
			
			boolean sendmail_result =(Boolean)server.execute("unify.sendMail",params_receipt_to_customer);
			
			success=true;
			
			
			
			//Split Payment code starts here....
			
			double amount = Double.parseDouble(responseFromCCAvenue.get("amount"));
			double merchant_amount = amount * 0.7;
			double sub_user_amount = amount * 0.3;
			
			JSONObject splitPaymentObject = new JSONObject();
			
			JSONObject subAccId_1 = new JSONObject();
			subAccId_1.put("splitAmount", "913020045348957");
			subAccId_1.put("subAccId", merchant_amount+"");
			
			JSONObject subAccId_2 = new JSONObject();
			subAccId_2.put("splitAmount", sub_user_amount+"");
			subAccId_2.put("subAccId", "915020053620294");
			
			JSONArray split_data_list = new JSONArray();
			split_data_list.put(subAccId_1);
			split_data_list.put(subAccId_2);
			
			
			splitPaymentObject.put("reference_no", responseFromCCAvenue.get("tracking_id") );
			splitPaymentObject.put("split_tdr_charge_type", "S");
			splitPaymentObject.put("merComm", "0");
			splitPaymentObject.put("split_data_list", split_data_list);
			
			
			String encRequest = aesUtil.encrypt(splitPaymentObject.toString());
			
			System.out.println("Without encryption : "+splitPaymentObject);
			System.out.println("With encryption : "+encRequest);
			
			String workingKey_IP = CCAvenueConfig.working_code_IP;
			String accessCode_IP= CCAvenueConfig.access_code_IP;		//Put in the Access Code in quotes provided by CCAVENUES.
			
			%>

			<form id="nonseamless" method="post" name="redirect" action="https://login.ccavenue.com/apis/servlet/DoWebTrans"/> 
				<input type="hidden" id="enc_request" name="enc_request" value="<%= encRequest %>">
				<input type="hidden" name="access_code" id="access_code" value="<%= accessCode_IP %>">
				<input type="hidden" name="request_type" id="request_type" value="JSON">
				<input type="hidden" name="response_type" id="response_type" value="JSON">
				<input type="hidden" name="command" id="command" value="createSplitPayout"/><!-- Command	: -->
				<input type="hidden" name="version" id="version" value="1.2"/><!-- Command	: -->
				
				<script language='javascript'>document.redirect.submit();</script>
			</form>
			
			<% 
			
			pd.setSplitPayoutResult(true);
			pd.setStatus_message(responseFromCCAvenue.get("status_message"));
			
			session.setAttribute("pd", pd);
			response.sendRedirect(CCAvenueConfig.Host+"/spliPayoutResponse");
			
			/* 
			String split_payout_Resp= request.getParameter("enc_resp");		
			AesCryptUtil aesUtil_split_payout=new AesCryptUtil(workingKey_IP);//working key
			String decResp_split_payout = aesUtil_split_payout.decrypt(split_payout_Resp);
			
			//System.out.println("Split Payout Response : "+decResp_split_payout);
			
			String split_payout_status =request.getParameter("status");
			
			System.out.println("split_payout_status : "+split_payout_status);
			
			System.out.println("split_payout_Resp : "+split_payout_Resp);
			
			success = true;
			
			System.out.println("success : "+success); */
		}
		else
		{
			pd.setSplitPayoutResult(false);
			pd.setStatus_message(responseFromCCAvenue.get("status_message"));
			
			session.setAttribute("pd", pd);
			response.sendRedirect(CCAvenueConfig.Host+"/spliPayoutResponse");

		}

		%>
	
        <jsp:include page="../component/pop-up.jsp"></jsp:include>
            
        <jsp:include page="../component/footer.jsp"></jsp:include>    
            
            
            <!-- Load javascripts at bottom, this will reduce page load time -->
        <jsp:include page="../component/js.jsp"></jsp:include>
        <!-- END BODY -->
    </body>
</html>