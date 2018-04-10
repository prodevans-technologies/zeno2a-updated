<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html >

<html lang="en">

    <!-- Head BEGIN -->
    
    <head>
        <meta charset="utf-8">
        <title>myNURON</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta content="nuron User Portal" name="description">
        <meta content="nuron User Portal Keywords" name="keywords">

        <!-- link to image for socio -->
        <meta property="og:url" content="-CUSTOMER VALUE-">
        <link rel="shortcut icon" href="img/icon32.png" type="image/x-icon">
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet"> 
        <!--  include the all css components -->
        <jsp:include page="component/css.jsp"></jsp:include>
          
     </head>
        <body class="corporate">

            <!--  include menubar -->
        <jsp:include page="component/menubar.jsp"></jsp:include>	

            <div class="col-md-12 firstRow pt-20" style="background-image: url('img/red_long.png');">
                <h1 class="paddingLeftTop">FAQ</h1>
            </div>

            <div class="container">
                <div class="col-md-12">
                    <h1 class="h1-font"> Plans</h1>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">How do I choose a plan?</a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <p class="faqp1">We take care of the speed, so all you have to think about is data. Since the network that thinks continuously gauges usage and allocates speed dynamically, the only question you need to ask yourself is how much data you need because with nuron, lag free speed is a guarantee.  </p>
                            	<!--<p class="faqp1">If you are unsure of how much data you typically use, start with a plan with the lowest data limit. If you need more, you can <a class="external" href="${pageContext.request.contextPath }/topup"><b>Top Up</b></a> with ease or migrate to a new plan at the tap of a finger. Once you finish your data for the month, while you will be able to continue surfing, as per FUP rules, your speed will be capped at 512 kbps.</p>-->
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">How do I change my plan?</a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p class="faqp1">Current plan too limited? Upgrade with ease <a class="external" href="${pageContext.request.contextPath }/service"><b>here</b></a>.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Can I get a low speed, low rental plan?</a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p class="faqp1">Your nuron plan is based solely on data consumption. The network that thinks constantly allocates the best speed, depending on what you are doing. If you want to switch to a lower rental, simply choose a smaller data package <a class="external" href="${pageContext.request.contextPath }/service"><b>here</b></a>.</p>
                            </div>
                        </div>
                    </div>
					<div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
                                Can I upgrade my plan in the middle of a month? How will it affect my bill?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p class="faqp1">Sure you can! Your new plan will be activated within 24 hours of payment. To understand how it will affect your bill, let us suppose that you are upgrading to a higher data limit. On the day you decide to change your plan, our system will check your account balance (or the quantity of data you have left in your original prepaid plan). Say, you have half your monthly data limit left (as per your original plan). This will be credited to your new plan, and so you will only pay the difference.</p>
                        		<p class="faqp1">For example, if your original plan is 250 GB for Rs 699 starting on the 23rd of December and on the 1st of Jan, you wish to upgrade to the 500 GB plan for Rs 1399. If you have used half your data limit (125 GB), you will pay only Rs 1399 — (Rs 699 — 349.50), or Rs 1049.50. Not a penny or byte wasted!</p>
                        	</div>
                    	</div>
                	</div>
					<div class="panel panel-default">
                    	<div class="panel-heading">
                        	<h4 class="panel-title">
                            	<a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFive">
                                	Is there a fee for changing plans?
                            	</a>
                        	</h4>
                    	</div>
                    	<div id="collapseFive" class="panel-collapse collapse">
                        	<div class="panel-body">
                            	<p class="faqp1">Not at all! All you have to pay is the difference between your old plan and the new, when opting for a higher data limit. Please refer to the above question. </p>
                        	</div>
                    	</div>
                	</div>
			<!--<div class="panel panel-default">
	                    <div class="panel-heading">
	                        <h4 class="panel-title">
	                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSix">
	                           I have finished my data for the month. How do I top up?
	                            </a>
	                        </h4>
	                    </div>
	                    <div id="collapseSix" class="panel-collapse collapse">
	                        <div class="panel-body">
	                            <p class="faqp1">Get your Top Up on the go <a class="external" href="${pageContext.request.contextPath }/topup"><b>here</b></a>. It’s easy, quick and takes effect instantly.</p>
							</div>
	                    </div>
                	</div>-->
<!--  
                    <h1 class="h1-font">Billing </h1>
                    
	                <div class="panel panel-default">
	                    <div class="panel-heading">
	                        <h4 class="panel-title">
	                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven">
	                           What is my billing cycle?
	                            </a>
	                        </h4>
	                    </div>
	                    <div id="collapseSeven" class="panel-collapse collapse">
	                        <div class="panel-body">
	                            <p class="faqp1">All our plans are prepaid and your 28 day billing cycle begins within 24 hours of the day you pay for your nuron plan. </p>
	
	                        </div>
	                    </div>
	                </div>
	                <div class="panel panel-default">
	                    <div class="panel-heading">
	                        <h4 class="panel-title">
	                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseEight">
	                            How do I choose a plan? </a>
	                        </h4>
	                    </div>
	                    <div id="collapseEight" class="panel-collapse collapse">
	                        <div class="panel-body">
	                            <p class="faqp1">With our speed agnostic plans, the only question you need to ask your self is how much data you need — because with nuron, lag free speed is a guarantee. If you are unsure of how much data you typically use, start with our Basic Package. If you need more, you can Top Up with ease or migrate to a new plan at the tap of a finger. Once you finish your data for the month, while you will be able to continue surfing, as per FUP rules, your speed will be capped at 512 kbps. </p>    
	                        </div>
	                    </div>
	                </div>
	
	                <div class="panel panel-default">
	                    <div class="panel-heading">
	                        <h4 class="panel-title">
	                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseNine">
	                            How do I change my plan? </a>
	                        </h4>
	                    </div>
	                    <div id="collapseNine" class="panel-collapse collapse">
	                        <div class="panel-body">
	                            <p class="faqp1">Current plan too limited? Upgrade with ease <a class="external" href="${pageContext.request.contextPath }/service" target="_blank"><b>here</b></a>. Once we receive your request, our customer care executive will be in touch with you in 2 to 3 business days. </p>
	                        </div>
	                    </div>
	                </div>
	                <div class="panel panel-default">
	                    <div class="panel-heading">
	                        <h4 class="panel-title">
	                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTen">
	                            Can I get a low speed, low rental plan? </a>
	                        </h4>
	                    </div>
	                    <div id="collapseTen" class="panel-collapse collapse">
	                        <div class="panel-body">
	                            <p class="faqp1">Your nuron plan is based solely on data consumption. Our thinking network constantly allocates the best speed, depending on what you are doing. If you want to switch to a lower rental, simply choose a smaller data package <a class="external" href="${pageContext.request.contextPath }/zeno" target="_blank"><b>here</b></a>. </p>    
	                        </div>
	                    </div>
	                </div>
	                <div class="panel panel-default">
	                    <div class="panel-heading">
	                        <h4 class="panel-title">
	                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseEleven">
	                            Is there a fee for changing plans?</a>
	                        </h4>
	                    </div>
	                    <div id="collapseEleven" class="panel-collapse collapse">
	                        <div class="panel-body">
	                            <p class="faqp1">Not at all! </p>
	                        </div>
	                    </div>
	                </div>
	                <div class="panel panel-default">
	                    <div class="panel-heading">
	                        <h4 class="panel-title">
	                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwelve">
	                            Can I upgrade my plan in the middle of a month? </a>
	                        </h4>
	                    </div>
	                    <div id="collapseTwelve" class="panel-collapse collapse">
	                        <div class="panel-body">
	                            <p class="faqp1">While you can change plans at any time, the new plan will only take effect at the beginning of the next billing cycle. </p>
	                        </div>
	                    </div>
	                </div>
	                <div class="panel panel-default">
	                    <div class="panel-heading">
	                        <h4 class="panel-title">
	                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThirteen">
	                            I have finished my data for the month. How do I top up? </a>
	                        </h4>
	                    </div>
	                    <div id="collapseThirteen" class="panel-collapse collapse">
	                        <div class="panel-body">
	                            <p class="faqp1">Get your Top Up on the go <a class="external" href="${pageContext.request.contextPath }/zeno" target="_blank"><b>here</b></a>. It’s easy, quick and takes effect instantly. </p>
	                        </div>
	                    </div>
	                </div>
	              	<div class="panel panel-default">
	                    <div class="panel-heading">
	                        <h4 class="panel-title">
	                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFourteen">
	                            Can I carry forward my GB?</a>
	                        </h4>
	                    </div>
	                    <div id="collapseFourteen" class="panel-collapse collapse">
	                        <div class="panel-body">
	                            <p class="faqp1">If you opt for a plan with a bigger unused GB, your unused GB from the current month will be automatically adjusted against the new plan. If you are moving to a smaller data package, then your used data will be calculated — if it is more than the limit on your new plan, the FUP will take effect immediately.  </p>
	                        
	                        </div>
	                    </div>
	                </div>
-->
                <h1 class="h1-font">Billing </h1>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFifteen">
                            What is my billing cycle?</a>
                        </h4>
                    </div>
                    <div id="collapseFifteen" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p class="faqp1">All our plans are on a 30 day post usage, post paid cycle. This means that you will be billed every 30 days, starting on the 1st of every month. </p>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSixteen">
                            How do I pay my bill? </a>
                        </h4>
                    </div>
                    <div id="collapseSixteen" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p class="faqp1">Paying online is super simple. Pay by card or net banking through a safe and secure payment gateway. To pay online,<a class="external" href="${pageContext.request.contextPath }/payBill"><b>click here</b></a>. </p>
                        </div>
                    </div>
                </div>

                <h1 class="h1-font">New connection </h1>                       

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSeaventeen">
                            What is the cost of a new connection?</a>
                        </h4>
                    </div>
                    <div id="collapseSeaventeen" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p class="faqp1">Call +91 90196 02602 or send us a query <a class="external" href="${pageContext.request.contextPath }/service"><b>here</b></a> and we’ will get in touch with you shortly.</p>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseEighteen">
                            What documents do I need to sign up for nuronHOME (our residential plans)?</a>
                        </h4>
                    </div>
                    <div id="collapseEighteen" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p class="faqp1">Govt issued ID Proof<br/>
												Address Proof: Landline Bill or Rental Agreement<br/>
												Passport size photo<br/>
                            </p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseNinteen">
                            My connection has been activated in the middle of the month. How will this affect my bill or billing cycle?</a>
                        </h4>
                    </div>
                    <div id="collapseNinteen" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p class="faqp1">It doesn’t matter when your connection is activated. Since all our plans are prepaid, your billing cycle runs for 28 days from the day your plan/connection is activated — whether it is the 1st of the month or the 15th.</p>    
                        </div>
                    </div>
                </div>
                
                <h1 class="h1-font">Network </h1>   
                
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwenty">
                            What do you mean by the network that thinks?</a>
                        </h4>
                    </div>
                    <div id="collapseTwenty" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p class="faqp1">There is a reason we call nuron the network that thinks our power packed analytics engine continuously gauges the perfect speed you need for the applications you use in real time. The fact is that not every user in your home requires the same speed all the time because not every user is using the same application at the same time. The nuron network detects usage at an individual level and allocates speed accordingly to individual users — lower for an email, higher for streaming a video or a video conference. What that means is that no matter what you are doing online, you will be doing it lag free. That’s the power of the network that thinks</p>   
                        </div>
                    </div>
                </div>
                
                <h1 class="h1-font">Complaints, Shifting and Deactivation </h1>
                
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwentyone">
                            What do I do if my connection/nuronCUBE isn't working?</a>
                        </h4>
                    </div>
                    <div id="collapseTwentyone" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p class="faqp1">Simple. Just give us a call at +91 90196 02602 and we’ll get on the job ASAP</p>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwentytwo">
                            I am moving to a different neighbourhood. How do I shift my nuron connection?</a>
                        </h4>
                    </div>
                    <div id="collapseTwentytwo" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p class="faqp1">Raise a <a class="external" href="${pageContext.request.contextPath }/service"><b>Service Request</b></a> or call customer care at +91 90196 02602 for instant support.</p>    
                        </div>
                    </div>
                </div>
                
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwentythree">
                            How do I terminate my nuron connection?</a>
                        </h4>
                    </div>
                    <div id="collapseTwentythree" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p class="faqp1">Click <a class="external" href="${pageContext.request.contextPath }/service"><b>Service Request</b></a> and opt for Termination. Our executives will contact you shortly. </p>    
                        </div>
                    </div>
                </div>
                
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwentyfour">
                            Can I use my existing (non nuron) connection with the nuronCUBE?</a>
                        </h4>
                    </div>
                    <div id="collapseTwentyfour" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p class="faqp1">Sorry! The nuronCUBE is configured to work exclusively with the nuron network to ensure security and quality of service.</p>    
                        </div>
                    </div>
                </div>
                
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwentyfive">
                            Are there any shifting/deactivation charges?</a>
                        </h4>
                    </div>
                    <div id="collapseTwentyfive" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p class="faqp1">To know more about service fees, please call customer care at +91 90196 02602 for instant support.</p>    
                        </div>
                    </div>
                </div>
                
                
                
                
                 <h1 class="h1-font">nuronCUBE</h1>
                
                 <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwentysix">
                           What is the nuronCUBE?</a>
                        </h4>
                    </div>
                    <div id="collapseTwentysix" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p class="faqp1">The nuronCUBE is the nerve centre of your nuron internet experience. It is a hotspot router and entertainment platform, all in one sleek, intelligent box. It is loaded with the nuStore (a continuously curated app market), a music and video player, and a rich selection of live TV channels, on demand video streaming and gaming services along with a browser so you can surf on your television. With two USB ports and Bluetooth capabilities, you can connect external hard disks, keyboard, mouse and more.</p>    
                        </div>
                    </div>
                </div>
                 <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwentyseven">
                            I already have a router. Why should I switch to the nuronCUBE? </a>
                        </h4>
                    </div>
                    <div id="collapseTwentyseven" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p class="faqp1">The nuronCUBE is much more than a router. It is the gateway to the best internet experience ever, with its own app store (nuStore), internet TV, 20,000+ on demand videos and 100+ games. By just plugging your TV into the nuronCUBE’s HDMI port, you can turn it into a smart TV. Add a keyboard or mouse with bluetooth or USB, and surf on the big screen. And, it connects to 8 wifi devices simultaneously. Can your old router do that?</p>    
                        	<p class="faqp1">If you want more time to think about the nuronCUBE, you can still enjoy all the standard features of the nuron network with your existing router like usage analytics, surfSAFE and more.</p>
                        </div>
                    </div>
                </div>
                 <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwentyeight">
                            Can I watch nuronCUBE’s live channels on my TV?</a>
                        </h4>
                    </div>
                    <div id="collapseTwentyeight" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p class="faqp1">Sure! Connect with nuronCUBE and turn your TV into a smart TV. Whether you want to stream a movie or write an email, do it on the biggest screen you own. You can also connect a mouse or a keyboard with Bluetooth or USB and an external hard disk. Who needs a desktop anymore!</p>    
                        </div>
                    </div>
                </div>
                 <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwentynine">
                            What is the nuSTORE? Can I download apps on the nuronCUBE?</a>
                        </h4>
                    </div>
                    <div id="collapseTwentynine" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p class="faqp1">Available on the nuronCUBE, the nuSTORE is where you can download the coolest apps like Youtube, TED, Gmail, Facebook and more. Our team of app curators continuously refreshes the nuSTORE, giving you the best range of apps to enjoy. And if there’s something more that you’re after, with our lag free network, you can download unlimited apps on all your wifi enabled devices.</p>    
                        </div>
                    </div>
                </div>
                 <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThirty">
                            How many devices can I use with the nuronCUBE?</a>
                        </h4>
                    </div>
                    <div id="collapseThirty" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p class="faqp1">Use upto 8 wifi enabled devices (laptop, tablet, phone etc.), and that’s not all. Turn your TV into a smart TV — just plug it into the nuronCUBE’s HDMI port.</p>    
                        </div>
                    </div>
                </div>
                 <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThirtyone">
                            Are there any shifting/deactivation charges?</a>
                        </h4>
                    </div>
                    <div id="collapseThirtyone" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p class="faqp1">To know more about service fees, please call customer care at +91 90196 02602 for instant support.</p>    
                        </div>
                    </div>
                </div>
                
                <!--
                 <h1 class="h1-font">surfSAFE</h1>
                
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThirtytwo">
                            With surfSAFE, you're in control</a>
                        </h4>
                    </div>
                    <div id="collapseThirtytwo" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p class="faqp1">Your home is your safe space and you deserve to keep it that way. With our Advanced surfSAFE controls, you can decide what to let in and when. If there are specific websites you want to block, go ahead and add to your Custom setting. Schedule hourly, daily or date wise, and we'll ensure your chosen categories and URLs remain blocked when you want them to be. surfSAFE, and ensure everyone on your network does too!</p>    
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThirtythree">
                            Advanced</a>
                        </h4>
                    </div>
                    <div id="collapseThirtythree" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p class="faqp1">Choose content categories that you don’t want to view on your network and hit BLOCK to keep related websites out.</p>    
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThirtyfour">
                            Custom</a>
                        </h4>
                    </div>
                    <div id="collapseThirtyfour" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p class="faqp1">Key in specific URLs you want to block to curate your network. </p>    
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThirtyfive">
                            Schedule </a>
                        </h4>
                    </div>
                    <div id="collapseThirtyfive" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p class="faqp">HOURS</p>
                            <p class="faqp1">During a day, when do you want your surfSAFE controls to be active? Choose a time slot.</p> 
                            <p class="faqp">DAYS</p>
                            <p class="faqp1">Should your surfSAFE controls be active only on certain days? Choose days of the week.</p>
                            <p class="faqp">DATES</p>
                            <p class="faqp1">Want to activate Advanced/Custom surfSAFE for a specific period? Choose dates.</p>   
                        </div>
                    </div>
                </div>-->
            </div>
        </div>  
        <style>
			table {
			    font-family: arial, sans-serif;
			    border-collapse: collapse;
			    width: 100%;
			}
			
			td, th {
			    border: 1px solid #dddddd;
			    text-align: left;
			    padding: 8px;
			}
			
			tr:nth-child(even) {
			    background-color: #dddddd;
			}

            /*FAQ*/

            .faqheader
            {
                font-family: 'Roboto', sans-serif;
                color: #fff;
                font-weight: 100;
                background-size:100% auto;
                background-repeat: no-repeat;
                background-size: cover;
                text-align: left;
            }

            .faaqheaderpadding
            {
                padding-top: 20px;
                padding-bottom: 20px;
                padding-left: 42px;
            }

            .faqrow
            {
                padding-bottom: 50px;
                padding-top: 50px;
            }

            .faqp
            {
                font-family: 'Roboto', sans-serif;
                color: #000000;
                font-size: 19px;
                font-weight: 300;
                line-height:1.4;
                padding: 10px 0 0;
                margin: 0px 0px 0px 0px;
            }

            .faqh
            {
                font-family: 'Roboto', sans-serif;
                color: #000000;
                font-size: 30px;
                font-weight: 300;
                line-height: 20px;
                padding: 10px 0 0 0;
            }

            .faqp1
            {
                font-family: 'Roboto', sans-serif;
                color: #000000;
                font-size: 15px;
                font-weight: 300;
                line-height: 1.4;
                padding: 0px 0 0 0px;
                margin: 0 0 0 0;
            }
            /*End faq*/
            .faqHeader {
                font-size: 27px;
                margin: 20px;
            }

            .panel-heading [data-toggle="collapse"]:after {
                /* background-image: url(images/varrow2.png);*/
                font-family: 'Roboto', sans-serif;
                font-weight: 300;
                /* content: "\e191"; */ /* "play" icon */
                content: url(img/vadd.png);
                float: right;
                color: #F58723;
                font-size: 18px;
                line-height: 22px;
                margin-top: unset;
                /* rotate "play" icon from > (right arrow) to down arrow */
                -webkit-transform: rotate(-45deg);
                -moz-transform: rotate(-45deg);
                -ms-transform: rotate(-45deg);
                -o-transform: rotate(-45deg);
                transform: rotate(-45deg);
            }

            .panel-heading [data-toggle="collapse"].collapsed:after {
                /* rotate "play" icon from > (right arrow) to ^ (up arrow) */
                /*content: url(images/vadd.png);*/
                -webkit-transform: rotate(90deg);
                -moz-transform: rotate(90deg);
                -ms-transform: rotate(90deg);
                -o-transform: rotate(90deg);
                transform: rotate(90deg);
                color: #454444;
            }
            .panel-heading > .panel-title > a
            {
                white-space: unset ! important;
              
            }
        </style>              
        

        <%--     <jsp:include page="component/pop-up.jsp"></jsp:include> --%>
        <jsp:include page="component/footer.jsp"></jsp:include>

        <!-- Load javascripts at bottom, this will reduce page load time -->
        <jsp:include page="component/js.jsp"></jsp:include>

        <!-- END PAGE LEVEL JAVASCRIPTS -->
    </body>
    <!-- END BODY -->
</html>