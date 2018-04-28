<%@page import="com.prodevans.zeno.pojo.PaymentDetails"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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

<c:choose>
<c:when test = "${pd.isSplitPayoutResult()}">

<div class="col-md-4 col-sm-12  firstRow pt-20">
	<h1 style="color: white; ">Bill payment</h1>
</div>

<div class="col-md-8 col-sm-12 " style="background-color: #ecf0f1;min-height: 116px;">
	<div class="col-md-12 col-xs-11 pt-20M ">
		<div class="col-xs-10">
			<h1 style="color: black;" class="currentBillFontforiPhone5">
	        Your transaction was successful</h1>
	    </div>
	    <div class="col-xs-2"> 
	        <img class="paymentImageSize pt-20I" alt="Check Image" src="corporate/img/check.png">
		</div>	
	</div>
</div>

<div class="container ">
        <div class="col-md-4">
        </div>
        <div class="col-md-8 col-xs-12">
            <div class="mainBlock3" style="background-color: #2980b9;">
                <h3 class="pb-40">Payment Summary</h3>
                <h2 class="pb-40">Your payment of &#8377;. <c:out value="${pd.getTrans_amount() }"></c:out>/- was successful</h2>
                <h5>TRANSACTION ID</h5>
                <h3><c:out value="${pd.getTransaction_id() }"></c:out></h3>
                
                <form action="viewReceipt" method="post">
	            	<input type="hidden" value="<c:out value="${pd.getTransaction_id() }"></c:out>" name="trans_id">
	            	<button class="btn billButton" type="submit">VIEW RECEIPT</button>
	            </form>
            </div>
        </div>
</div>
	
</c:when>    
<c:otherwise>


<div class="col-md-4 col-sm-12  firstRow pt-20">
	<h1 style="color: white; ">Bill payment</h1>
</div>

<div class="col-md-8 col-sm-12 " style="background-color: #ecf0f1;min-height: 116px;">
	<div class="col-md-12 col-xs-11 pt-20M ">
		<div class="col-xs-10">
			<h1 style="color: black;" class="currentBillFontforiPhone5">
	        Your transaction was unsuccessful</h1>
	    </div>
	    <div class="col-xs-2"> 
	        <img class="paymentImageSize pt-20I" alt="Check Image" src="corporate/img/cross1.png">
		</div>	
	</div>
</div>

<div class="container ">
        <div class="col-md-4">
        </div>
        <div class="col-md-8 col-xs-12">
            <div class="mainBlock3" style="background-color: #2980b9;">
                <h3 class="pb-40">Payment Summary</h3>
                <h2 class="pb-40">Your payment of &#8377;. <c:out value="${pd.getTrans_amount() }"></c:out>/- was unsuccessful</h2>
                <h5>REASON</h5>
                <h3><c:out value="${pd.getStatus_message() }"></c:out></h3>
            </div>
        </div>
</div>
	
	</c:otherwise>
</c:choose>
	
	
        <jsp:include page="../component/pop-up.jsp"></jsp:include>
            
        <jsp:include page="../component/footer.jsp"></jsp:include>    
            
            
            <!-- Load javascripts at bottom, this will reduce page load time -->
        <jsp:include page="../component/js.jsp"></jsp:include>
        <!-- END BODY -->
    </body>
</html>