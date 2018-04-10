<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
    
<head>
<meta charset="utf-8">
<title>myNURON</title>
<link rel="shortcut icon" href="img/icon32.png" type="image/x-icon">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta content="nuron User Portal" name="description">
<meta content="nuron User Portal Keywords" name="keywords">

<!-- link to image for socio -->
<meta property="og:url" content="-CUSTOMER VALUE-">

<!-- Fonts START -->
<link href="https://fonts.googleapis.com/css?family=Raleway:300" rel="stylesheet">
	
<!--  include the all css components -->
<jsp:include page="component/css.jsp"></jsp:include>

<style type="text/css">
h1{
	margin:unset;
}
.font-h3
{
	font-size: 20px;
}
.col-md-3
{
	padding: 0px;
}
.col-md-6, col-sm-8
{
	padding-left: 1px;
	padding-right:1px;
}
.mainBlock41
{
	width :92%;
	max-height:260px;
	min-height:250px;
	color:white;
	padding:4%;
	padding-top:10px;
	background-color: #FFB819;
	text-align: center;
	margin:auto;
	margin-top:5%;
	-webkit-box-shadow: 2px 4px 8px 0px rgba(127,140,141,1);
	-moz-box-shadow: 2px 4px 8px 0px rgba(127,140,141,1);
	box-shadow: 2px 4px 8px 0px rgba(127,140,141,1);
}
.circle-Font
{
	min-height:90px;
	max-width:90px;
	border: 3px solid white;
	border-radius: 50%;
	font-size: 58px;
	font-weight: bold;
	text-align: center;
	margin-left: 8%;
	
}
.fs-44
{
	font-size: 44px;
}
#floating-button1
{
	background: #d20080 !important;
}

@media (max-width : 990px) 
{
	.paddingLeftMobile
	{
		padding-left: 40px;
	}
	.col-md-6
	{
		padding-left: 0px;
		padding-right: 5%;
		margin-left: -5%;
	}
	.col-md-4
	{
		padding-left: 7% !important;
		padding-right: 7% !important;
	}
	
}


/* TABLET LANDSCAPE / DESKTOP */
@media (max-width:1340px) and (min-width:991px)
{	
	
	.fs-44
	{
		font-size: 38px !important;
	}
	h1
	{
		font-size: 32px !important;
	}
}
.fcolor
{
	color: #e20074;
        font-weight: bold;
}
.fcolor1
{
	color:darkmagenta;
         font-weight: bold;
}
.fcolor2
{
	color:#6d6d6d;
         font-weight: bold;
}
</style>

</head>
<body class="corporate" style="font-family: Raleway;">

<!--  include menubar -->
<jsp:include page="component/menubar.jsp"></jsp:include>	

<!--  <div class="col-md-12 firstRow pt-20" style="background-image: url('corporate/img/backb.png');">
    <h1 class="paddingLeftTop">Get more out of oneEight</h1>
</div>
	-->
	<div class="row firstRow pt-20"
         style="background-image: url('${pageContext.request.contextPath }/corporate/img/backb.png');" style="clear: both">
        <!--  <h1 class="paddingLeftTop" >Parental Control</h1> <h1 class="paddingRight" >Hi Vamsi </h1>  -->
        <div class="col-md-5 col-sm-5" style="padding-left: 4.9%;">
            <h1>Get more out of nuron</h1>
        </div>
        <div class="row firstRow pt-20" style="padding-right: 5%;margin-bottom: -20px;margin-top: -10px;text-align:right;">
         <!--   <b style="float: right">${user.getActname()}<br/>${user.getActid()}</b><br/>
          <!--   <h4 style="float: middle">A/C Name : ${user.getActname()}</h4>
            <h4 style="float: middle">A/C ID : ${user.getActid()}</h4> -->
        </div>

    </div>	
<div class="container">
		
		<div class="col-md-12 col-xs-12" style="text-align:center">
			<h1>Your plan</h1>
		</div>
</div>

<div class="col-md-12  ">
	<div class="container" style="margin-bottom: 4.5%;">
		<div class="col-md-2 ">
		</div>
		<div class=" col-md-4">
			<div class="mainBlock41" style="background-color: #fff;">
                            <h1 class="pb-50"><span class="fcolor">${ brcdesc }</span></h1>
                            <h1 class="fs-44"><span class="fcolor1">&#8377;${amount} </span></h1>
                            <h3 class="pb-10"><span class="fcolor">per month</span></h3>
			</div>
		</div>
		
		<% String s=(String)session.getAttribute("brcdesc");%>
		
				<%
				if((s.equals("nuHYD 250") || s.equals("nuHYD 400") || s.equals("nuBLR 150") || s.equals("nuBLR 225") || s.equals("nuBLR 325") )) 
			{
			%>
			<div class="col-md-4">
			<div class="mainBlock41" style="background-color: #fff;">
                            <h1 class="fs-44"><span class="fcolor">${FUP1} GB</span></h1>
                            <h3 class="pb-40"><span class="fcolor1">data</span></h3>
                            <h3><span class="fcolor">512 Kbps</span></h3>
                            <h3><span class="fcolor1">Post FUP speed</span></h3>
			</div>
		</div>
			<%
			}
			 else { %>
			
			<div class="col-md-4">
			<div class="mainBlock41" style="background-color: #fff;">
				<h1 class="fs-44"><span class="fcolor">${FUP} GB</span></h1>
				<h3 class="pb-40"><span class="fcolor">data</span></h3>
				<h3><span class="fcolor1">2 mbps</span></h3>
				<h3><span class="fcolor2">Post FUP speed</span></h3>
			</div>
		</div>
		<%} %>
				
	</div>
</div>






	<jsp:include page="component/pop-up.jsp"></jsp:include>
	<div style="margin:3%;"></div>
	<jsp:include page="component/footer.jsp"></jsp:include>
	
	
	<!-- Load javascripts at bottom, this will reduce page load time -->
	<jsp:include page="component/js.jsp"></jsp:include>
	<!-- END BODY -->
</body>

</html>