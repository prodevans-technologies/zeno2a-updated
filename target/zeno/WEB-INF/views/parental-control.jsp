<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html >
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Parental Control</title>
        <%-- Including the css style sheets--%>
<!--        <link
            href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css"
            rel="stylesheet" media="screen">-->
        <link
            href="${pageContext.request.contextPath }/bootstrap/css/bootstrap-datetimepicker.min.css"
            rel="stylesheet" media="screen">

        <%--End of Including--%>

        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta content="oneEight User Portal" name="description">
        <meta content="oneEight User Portal Keywords" name="keywords">


        <!-- link to image for socio -->
        <meta property="og:url" content="-CUSTOMER VALUE-">
        <link rel="shortcut icon" href="favicon.ico">

        <!--  include the all css components -->
        <jsp:include page="component/css.jsp"></jsp:include>

            <style>
                input[type="text"], input[type="text"]:focus {
                    width: 100% !important;
                    padding: 10px;
                    height: 45px;
                    border: 1px solid #bdc3c7;
                    background-color: unset !important;
                    border-radius: unset;
                    border-right: unset;
                    box-shadow: unset;
                }

                label {
                    display: inline-block;
                    max-width: 100%;
                    margin-bottom: 5px;
                    font-weight: 300;
                    height: 50px;
                    padding-top: 10px;
                    text-align: center;
                }

                select {
                    background-image: url(img/varrow2.png);
                    background-size: 29px 29px;
                    background-repeat: no-repeat;
                    background-position: right top;
                    width: 119%;
                    height: 34px;
                    border: none;
                    -moz-appearance: none;
                    -webkit-appearance: none;
                    border-bottom: 2px solid red;
                    margin-left: -15%;
                    margin-top: -2%;


                }

                option:hover {
                    background-color: grey;
                }



                table,th, td {
                    /*  border: 2px solid  black; */
                    align-content: center;

                }
                /** Tab content */
                .tab-content {
                    background: #FAFAFA;
                    padding:unset;
                }

                /*icons and background sizes*/
                .nav-tabs > li.active > a#time-tab-name {
                    color: #716868;
                    padding: 5px 15px 15px 60px;
                    border-bottom: 7px red solid !important;
                    background-image: url('${pageContext.request.contextPath }/img/icons/Time_red.png') !important;
                background-size: 43px !important;
                background-repeat: no-repeat !important;
                font-size: 20px;
            }

            .nav-tabs > li > a#time-tab-name {
                color: #716868;
                padding: 5px 15px 15px 60px;
                border-bottom: 7px #fff solid !important;
                background-image: url('${pageContext.request.contextPath }/img/icons/Time_grey.png') !important;
                background-size: 43px !important;
                background-repeat: no-repeat !important;
                font-size: 20px;
            }
            .nav-tabs > li.active > a#day-tab-name {
                color: #716868;
                padding: 5px 15px 15px 60px;
                border-bottom: 7px red solid !important;
                background-image: url('${pageContext.request.contextPath }/img/icons/Day_red.png') !important;
                background-size: 43px !important;
                background-repeat: no-repeat !important;
                font-size: 20px;
            }

            .nav-tabs > li > a#day-tab-name {
                color: #716868;
                padding: 5px 15px 15px 60px;
                border-bottom: 7px #fff solid !important;
                background-image: url('${pageContext.request.contextPath }/img/icons/Day_grey.png') !important;
                background-size: 43px !important;
                background-repeat: no-repeat !important;
                font-size: 20px;
            }

            .nav-tabs > li.active > a#dates-tab-name {
                color: #716868;
                padding: 5px 15px 15px 60px;
                border-bottom: 7px red solid !important;
                background-image: url('${pageContext.request.contextPath }/img/icons/Dates_red.png') !important;
                background-size: 43px !important;
                background-repeat: no-repeat !important;
                font-size: 20px;
            }

            .nav-tabs > li > a#dates-tab-name {
                color: #716868;
                padding: 5px 15px 15px 60px;
                border-bottom: 7px #fff solid !important;
                background-image: url('${pageContext.request.contextPath }/img/icons/Dates_grey.png') !important;
                background-size: 43px !important;
                background-repeat: no-repeat !important;
                font-size: 20px;
            }


            .time_image {
                padding: 6px 20px 8px 20px;
                background-image: url('/zeno/img/icons/Time_blue.png') !important;
                background-size: 62% !important;
                background-repeat: no-repeat !important;
                margin: 0px -9px 0px 7px ;              
                    
            }
            .date_image {
                padding: 6px 20px 8px 20px;
                background-image: url('/zeno/img/icons/Calendar_blue.png') !important;
                background-size: 62% !important;
                background-repeat: no-repeat !important;
                margin: 0px -9px 0px 7px ;
            }
            .plus_image{
                padding: 18px 18px;
                background-image: url('/zeno/img/icons/Plus_blue_1.png') !important;
                background-size: 28px !important;
                background-repeat: no-repeat !important;
                cursor: pointer;
            }
            .minus_image{
                padding: 18px 18px;
                background-image: url('/zeno/img/icons/Minus_Blue.png') !important;
                background-size: 28px !important;
                background-repeat: no-repeat !important;
                cursor: pointer;
            }
            .input-group-addon {
                padding: unset !important;
                font-size: 14px;
                font-weight: 400;
                line-height: 1;
                color: #555;
                text-align: center;
                background-color: unset !important;
                border-radius: unset !important;
            }
            .nav-tabs > li > a{

                background: #FFF !important ;
                color: #716868;
                padding: 5px 15px 4px;

            }
            .nav-tabs {
                margin-top: 40px;
            }
            #scheduling_tab_popup > li {
                position: relative;
                display: block;
                margin-right: 4%;
                margin-left: 7%;
                min-width: 20%;
            }
/*            #scheduling_tab_popup > li > #time-tab-name {
                margin-right: 7%;
            }
            */
            .border{
                /*border-bottom: 1px solid #ddd;*/
                padding: 15px;
                font-size: 24px;
            }
/*            input[type="checkbox"] + label::before {
                content: '';
                display: block;
                width: 25px;
                height: 25px;
                border: 1.2px solid #010745;
                position: absolute;
                left: 0;
                top: 0;
                opacity: .6;
                -webkit-transition: all .12s, border-color .08s;
                transition: all .12s, border-color .08s;
            }
            #day_selector   input[type="checkbox"] + label {
                display: block;
                position: relative;
                padding-left: 35px;
                margin-bottom: 1px;

                color: #010745;
                cursor: pointer;

                -moz-user-select: none;

                width: 13%;
                padding-top: unset !important;
                float: left;
            }*/
            .ScrollStyle {

                overflow-y: scroll;
                max-height: 350px;
            }
            #ScheduleDetails >.category_box2 {

                min-height: 100px;
                padding: 40px;
                border: 1px solid #bdc3c7;
                margin-top: -1px;
                min-height: 350px;
                margin-left: 2.1%;
                margin-right: 2.1%

            }
           #date-tab > #ScheduleDetails >.category_box2 {

                min-height: 100px;
                padding: 40px;
                border: 1px solid #bdc3c7;
                margin-top: -1px;
                min-height: 400px ! important;
                margin-left: 2.1%;
                margin-right: 2.1%

            }
            #dates-tab > .category_box2 {

                min-height: 100px;
                padding: 40px;
                border: 1px solid #bdc3c7;
                margin-top: -1px;
                min-height: 400px ! important;
/*                margin-left: 2.1%;
                margin-right: 2.1%*/

            }
            
            .custom_box {

                min-height: 100px;
                padding-top: 2.7%;
                border: 2px solid #2980b9;
                margin-top: -1px;
                margin-bottom: 20px;
                /*                    padding-top: 10px;*/
            }
            .control-label
             {
                width:41.6% ! important;
                    
            }
            .control-label2
             {
                width:36.9% ! important;
                    
            }
/*            .btn {
                margin-top: 20px !important;
                margin-bottom: 1px;
                font-size: 22px;
                padding-left: 20px;
                padding-right: 20px;
                padding-top: unset;
                padding-bottom: unset;

            }*/
            .row{
/*                margin-right: unset;
                margin-left: unset;*/
            }
            
            .panel 
            {

                border-radius: unset !important;
                margin-bottom: unset;
                border : unset;
                box-shadow: unset;
            }
            .panel-body{
                min-height: 200px;
                overflow-x: auto;
                padding: unset !important;
            }
            .panel-default > .panel-heading  {
                color: black;
                background-color: #e2e0e080;

                border-radius: unset;

            }
            .panel-default > .panel-heading > a{
                font-size: 30px !important;
            }
            .panel-footer{
                /*border: 2px solid #2980b9;*/
                background: unset;
                padding-right: unset;
            }
            .panel-default > .panel-footer{
                /*background-color: #F44336;*/
                border-top:2px #F44336 solid;
                border-radius: unset;
                padding-right: unset;
            }
            .tab-content , .tab-pane{
                background: unset;
            }
            .nav-tabs.nav-justified > li > a {
                border-radius: unset;
            }

            .largeFont
            {
                font-size: 38px !important;
            }

            .scroll {
                /*                    //width: 200px;*/
                height: 268px;
                background: red;
                overflow: scroll;
            }
            .scroll::-webkit-scrollbar {
                width: 12px;
            }

            .scroll::-webkit-scrollbar-track {
                -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
                border-radius: 10px;
            }

            .scroll::-webkit-scrollbar-thumb {
                border-radius: 10px;
                -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.5); 
            }
           
             /*        Tablet*/
            @media (max-width: 730px) and (min-width:501px)
            {
                .category_box2
                {
                    padding: 15px !important;
                }
                
            }
/*            Mobile*/
            @media (max-width: 500px) and (min-width: 240px)
            {
               .control-label
                {
                    width:100% ! important;
                    text-align: unset !important;
                    
                }
                .control-label2
                {
                    width:100% ! important;
                    text-align: unset !important;
                    margin-left: -7%;
                    
                }
                #Scheduling_type
                {
                    width:118% !important;
                    margin-left: -11% ;
                }
                #st_Select_type
                {
                    margin-left: -3%;
                }
                .sumit_aling{
                 margin-right: 1%;
                }
                .sumit_aling2{
                 margin-right: -9%;
                }
                
                
                #ScheduleDetails >.category_box2 {

                    /*                min-height: 100px;*/
                    padding: 18px;
                    /*                border: 1px solid #bdc3c7;
                                    margin-top: -1px;
                                    min-height: 350px;
                                    margin-left: 2.1%;
                                    margin-right: 2.1%*/

                }
                #date-tab > #ScheduleDetails >.category_box2 {

                    /*                    min-height: 100px;*/
                    padding: 18px;
                    /*                    border: 1px solid #bdc3c7;
                                        margin-top: -1px;
                                        min-height: 400px ! important;
                                        margin-left: 2.1%;
                                        margin-right: 2.1%*/

                }
                #dates-tab > .category_box2 {

                    min-height: 100px;
                    padding: 18px;
                    border: 1px solid #bdc3c7;
                    margin-top: -1px;
                    min-height: 400px ! important;
                                    margin-left: -4.9%;
                                    margin-right: -4.9%

                }
                #scheduling_tab_popup > li {
                    position: relative; 
                    display: block; 
                    margin-right: unset !important;
                    min-width: 20% !important;
                    width: 33%;
                   
                }
                #dates-tab > .category_box2 > .row {

                    /*                    min-height: 100px;*/
                    padding: 0px 15px ;
                    /*                    border: 1px solid #bdc3c7;
                                        margin-top: -1px;
                                        min-height: 400px ! important;
                                        margin-left: 2.1%;
                                        margin-right: 2.1%*/

                }
                .nav-tabs > li.active > a#time-tab-name {
                    color: #716868;
                    padding: 7% 20% 20% 38%;
                    border-bottom: 5px red solid !important;
                    background-image: url('${pageContext.request.contextPath }/img/icons/Time_red.png') !important;
                    background-size: 40% !important;
                    background-repeat: no-repeat !important;
                    font-size: 80% !important;    
                    width: 90%;
                }
                .nav-tabs > li > a#time-tab-name {
                    color: #716868;
                    padding: 7% 20% 20% 38%;
                    border-bottom: 5px #fff solid !important;
                    background-image: url('${pageContext.request.contextPath }/img/icons/Time_grey.png') !important;
                    background-size: 40% !important;
                    background-repeat: no-repeat !important;
                    font-size: 80% !important;     
                    width: 90%;
                }
                .nav-tabs > li.active > a#day-tab-name {
                    color: #716868;
                    padding: 7% 20% 20% 38%;
                    border-bottom: 5px red solid !important;
                    background-image: url('${pageContext.request.contextPath }/img/icons/Day_red.png') !important;
                    background-size: 40% !important;
                    background-repeat: no-repeat !important;
                    font-size: 80% !important;   
                    width: 90%;
                }
                .nav-tabs > li > a#day-tab-name {
                    color: #716868;
                    padding: 7% 20% 20% 38%;
                    border-bottom: 5px #fff solid !important;
                    background-image: url('${pageContext.request.contextPath }/img/icons/Day_grey.png') !important;
                    background-size: 40% !important;
                    background-repeat: no-repeat !important;
                    font-size: 80% !important;   
                    width: 90%;
                }
                .nav-tabs > li.active > a#dates-tab-name {
                    color: #716868;
                    padding: 7% 20% 20% 38%;
                    border-bottom: 5px red solid !important;
                    background-image: url('${pageContext.request.contextPath }/img/icons/Dates_red.png') !important;
                    background-size: 40% !important;
                    background-repeat: no-repeat !important;
                   font-size: 80% !important;   
                    width: 90%;
                }
                .nav-tabs > li > a#dates-tab-name {
                    color: #716868;
                    padding: 7% 20% 20% 38%;
                    border-bottom: 5px #fff solid !important;
                    background-image: url('${pageContext.request.contextPath }/img/icons/Dates_grey.png') !important;
                    background-size: 40% !important;
                    background-repeat: no-repeat !important;
                    font-size: 80% !important;    
                    width: 90%;
                }
                
            }
            
/*            Laptop size*/
            @media ( max-width :1980px) and (min-width:1340px) 
            {
               
                
            }
        </style>
    </head>
    <body class="corporate" style="font-family: 'Raleway', sans-serif;">
        <!-- BEGIN HEADER -->
        <!--        <div class="header">
                    <div class="row">
                        <a class="site-logo" href="#"> <img
                                src="corporate/img/logos/logo.png" alt="oneEight">
                        </a> <a href="javascript:void(0);" class="mobi-toggler"><i
                                class="fa fa-bars"></i></a>
                         BEGIN NAVIGATION 
                        <div class="header-navigation pull-right font-transform-inherit"
                             style="font-size: 12px">
                            <ul>
                                <li class="dropdown active"></li>
                                <li><a href="${pageContext.request.contextPath }/dashboard">HOME</a></li>
                                <li><a
                                        href="${pageContext.request.contextPath }/billingPayment">PAY YOUR BILL</a></li>
                                <li class="active"><a
                                        href="${pageContext.request.contextPath }/control">surfSAFE</a></li>
                                <li><a href="${pageContext.request.contextPath }/service">SERVICE
                                        REQUEST</a></li>
        
                                <li><a href="${pageContext.request.contextPath }/profile">PROFILE</a></li>
                                <li><a href="${pageContext.request.contextPath }/logout">LOGOUT</a></li>
                            </ul> 
                        </div>
                         END NAVIGATION 
                    </div>
                </div>
        
                <div class="col-md-12 firstRow pt-20"
                     style="background-image: url('img/red_long.png');" style="clear: both">
                      <h1 class="paddingLeftTop" >Parental Control</h1> <h1 class="paddingRight" >Hi Vamsi </h1>  
                    <div class="col-md-5" style="padding-left: 3.8%;">
                        <h1>Parental Control</h1>
                    </div>
                    <div class="col-md-7">
                        <h1 style="float: middle">Hi ${uesr_name}</h1>
                    </div>
        
                </div>-->

        <div class=" " style="margin-top: 20px;">
            <!--            <h1 class="largeFont pb-10" style="margin-top: 12%;">With surfSAFE, you are in control</h1>
                        <h3>
                            Your home is your safe space and you deserve to keep it that way. With our Advanced surfSAFE control you can decide what to let in and when. If there are specific websites you want to block, go ahead and add to your Custom setting. Schedule hourly, daily or date-wise, and we'll ensure your chosen categories and URLs remain blocked when you want them to be. Surf Safe, and ensure everyone on your network does too.
                        </h3>-->

            <div class="panel-group">
                <div class="panel panel-default">
                    
                    <!-- Start of the Pop up content-->
<!--                    <div class="form-group col-md-6">
                        <label for="date-time-start" class="col-md-3 control-label">Start Time</label>
                        <div class="input-group date  col-md-7" data-date="" >
                            <input name="dates_start_time" class="form-control form_time" id="date-time-start" size="16" type="text" value=""  required="required" >

                            <span class="input-group-addon"><span class="time_image form_time" data-date-format="hh:ii" data-link-field="date-time-start" data-link-format="hh:ii"></span></span>
                        </div>

                    </div>-->


                    <div class="row">
                        <%--  <form:form action="time-schedule" modelAttribute="ScheduleDetails"   method="post" >
                        <div class="col-md-12 col-sm-12">
                            <div class="col-md-6 col-sm-12 " style="padding-left: 3%;">
                                <div class="form-group col-md-4 col-sm-8  control-label" id="st_Select_type" >Select type</div>
                                <div class="form-group col-md-8 col-sm-8 ">

                                    <select name="select_type" id="Scheduling_type">
                                        <option value="Daily">Daily</option>
                                        <option value="Weekdays">Weekdays</option>
                                        <option value="Weekends">Weekends</option>
                                        <option value="Custom"> Custom</option>
                                        <option value="Non Recurring">Non Recurring</option>
                                    </select> 
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-sm-12" style="margin-left: -6px;" id="sc_date_div">
                            <div class="form-group col-md-6">
                                <label for="date-start" class="col-md-4 control-label">Start Date</label>
                                <div class="input-group date  col-md-8 image_click" data-date="" >
                                    <input name="dates_start_date"  class="form-control form_date" id="date-start" size="16" type="text" value="" required="required" >

                                    <span class="input-group-addon" ><span class="date_image form_date" id="date_start_icon" data-date-format="dd MM yyyy" data-link-field="date-start" data-link-format="yyyy/mm/dd" for="date-start"></span></span>
                                </div> 

                            </div>
                            <div class="form-group col-md-6">
                                <label for="date-end" class="col-md-4 control-label">End Date</label>
                                    <div class="input-group date  col-md-8 image_click" data-date="" >
                                    <input name="dates_end_date" class="form-control form_date" id="date-end" size="16" type="text" value="" required="required" >

                                    <lable class="input-group-addon" for=""><span  class="date_image form_date " id="date_end_icon" data-date-format="dd MM yyyy" data-link-field="date-end" data-link-format="yyyy/mm/dd"></span></lable>
                                </div>

                            </div>
                        </div>
                        <div class="col-md-12 col-sm-12"style="margin-left: -5px;" id="sc_time_div">
                            
                                <div class="form-group col-md-6">
                                    <label for="date-time-start" class="col-md-4 control-label">Start Time</label>
                                    <div class="input-group date  clockpicker col-md-8" data-date="" >
                                        <input name="dates_start_time" class="form-control form_time" id="date-time-start" size="16" type="text" value=""  required="required" >

                                        <span class="input-group-addon"><span  class="time_image form_time" id="time_start_icon" data-date-format="hh:ii" data-link-field="date-time-start" data-link-format="hh:ii"></span></span>
                                    </div>

                                </div>
                          
                            
                                <div class="form-group col-md-6">
                                    <label for="date-time-end" class="col-md-4 control-label">End Time</label>
                                    <div class="input-group date  clockpicker col-md-8" data-date="" >
                                        <input name="dates_end_time" class="form-control form_time" id="date-time-end" size="16" type="text" value=""  required="required" >

                                        <span class="input-group-addon"><span class="time_image form_time" id="time_end_icon" data-date-format="hh:ii" data-link-field="date-time-start" data-link-format="hh:ii"></span></span>
                                    </div>

                                </div>
                        

                        </div>
                        <div class="col-md-12" id="sc_day_div">
                            <div id="day_selector" class="col-md-12 col-md-offset-1 margin-top-10 " >

                                <input type="checkbox" name="days_days_checkbox" class="col-md-2 chk" id="sun" value="sunday" ><label for="sun">SUN</label>

                                <input type="checkbox" name="days_days_checkbox" class="col-md-2 chk" id="mon" value="monday"><label for="mon">MON</label>

                                <input type="checkbox" name="days_days_checkbox" class="col-md-2 chk" id="tue" value="tuesday"><label for="tue">TUE</label> 

                                <input type="checkbox" name="days_days_checkbox" class="col-md-2 chk" id="wed" value="wednesday"><label for="wed">WED</label>

                                <input type="checkbox" name="days_days_checkbox" class="col-md-2 chk" id="thu" value="thursday"><label for="thu">THU</label>

                                <input type="checkbox" name="days_days_checkbox" class="col-md-2 chk" id="fri" value="friday"><label for="fri">FRI</label>

                                <input type="checkbox" name="days_days_checkbox" class="col-md-2 chk" id="sat" value="saturday"><label for="sat">SAT</label>
                            </div>
                        </div>
<!--                        Done botton-->
                        <div class="col-md-12" >            
                            <button id="apply_schedule_done" class="btn billButton" type="submit" data-toggle="modal"  style="margin-left: 27%;float: right">DONE</button>
                        </div>
</form:form> --%>
                        
                        <div  class="container col-md-12" <c:choose><c:when test="${not empty day_msg || not empty date_msg || not empty time_msg}">style="display: block;"</c:when><c:otherwise></c:otherwise> </c:choose>  >
                                
                                    <ul id="scheduling_tab_popup" class="nav nav-tabs  margin-top-10" <c:choose><c:when test="${not empty day_msg || not empty date_msg || not empty time_msg}">style="display: block;"</c:when><c:otherwise></c:otherwise> </c:choose>>
                                <c:choose>
                                    <c:when test="${not empty time_msg }">
                                        <li class="active"><a id="time-tab-name" data-toggle="tab" href="#time-tab">HOURS</a></li>
                                        <li class=" "><a id="day-tab-name" data-toggle="tab" href="#date-tab"  >DAYS</a></li>
                                        <li class=" "><a id="dates-tab-name" data-toggle="tab" href="#dates-tab" >DATES</a></li>


                                    </c:when>
                                    <c:when test="${not empty day_msg }">
                                        <li class=" "><a id="time-tab-name" data-toggle="tab" href="#time-tab">HOURS</a></li>
                                        <li class="active "><a id="day-tab-name" data-toggle="tab" href="#date-tab"  >DAYS</a></li>
                                        <li class=" "><a id="dates-tab-name" data-toggle="tab" href="#dates-tab" >DATES</a></li>

                                    </c:when>
                                    <c:when test="${not empty date_msg }">
                                        <li class=" "><a id="time-tab-name" data-toggle="tab" href="#time-tab">HOURS</a></li>
                                        <li class=" "><a id="day-tab-name" data-toggle="tab" href="#date-tab"  >DAYS</a></li>
                                        <li class="active "><a id="dates-tab-name" data-toggle="tab" href="#dates-tab" >DATES</a></li>

                                    </c:when>
                                    <c:otherwise >
                                        <li class="active"><a id="time-tab-name" data-toggle="tab" href="#time-tab">HOURS</a></li>
                                        <li class=" "><a id="day-tab-name" data-toggle="tab" href="#date-tab"  >DAYS</a></li>
                                        <li class=" "><a id="dates-tab-name" data-toggle="tab" href="#dates-tab" >DATES</a></li>

                                    </c:otherwise>
                                </c:choose>


                            </ul>


                                <div class="tab-content ">       
                             <div id="time-tab" class="tab-pane fade row  in active">

                                  <form:form action="time-schedule" modelAttribute="ScheduleDetails"   method="post" > 
                                        <div class="category_box2">
                                            <p class="font-h4">During a day, when do you want your surfSAFE controls to be active? Choose a time slot.</p>
                                            <div class="row" style="margin-top: 8%; ">
                                                <div class="form-group col-md-6">
                                                    <label for="time-ip-start" class="col-md-3 control-label2"> Start Time</label>
                                                    <div class="input-group date  col-md-7" data-date="" data-date-format="hh:ii" data-link-field="time-ip-start" data-link-format="hh:ii">
                                                        <input name="time_start_time" class="form-control form_time" id="time-ip-start" size="16" type="text" value="" required="required" >
                                                        <span class="input-group-addon"><span class="time_image form_time " id="time-ip-start-icon" data-link-field="time-ip-start" data-link-format="hh:ii" data-date-format="hh:ii" ></span></span>
                                                    </div>

                                                </div>
                                                <div class="form-group col-md-6">
                                                    <label for="time-ip-end" class="col-md-3 control-label2"> End Time</label>
                                                    <div class="input-group date  col-md-7"  data-date=""  >
                                                        <input name="time_end_time"  class="form-control form_time" id="time-ip-end" size="16" type="text"  value="" required="required" >

                                                        <span class="input-group-addon"><span class="time_image form_time" id="time-ip-end-icon" data-date-format="hh:ii" data-link-field="time-ip-end"  data-link-format="hh:ii"></span></span>
                                                    </div>

                                                </div> 
                                            </div>
                                            <div class="panel-footer">

                                                <div class="col-md-10"></div>
<!--                                                <div class="col-md-4 text-right">
                                                    <c:if test="${not empty time_msg }">
                                                        <h4 style="color:red;margin-top: 5%;">
                                                           <c:if test="${fn:contains(time_msg, 'Oops!')}">
                                                            <span class="glyphicon glyphicon-alert"></span>
                                                            </c:if>
                                                            <c:out value="${time_msg }"></c:out>
                                                            </h4>
                                                    </c:if>
                                                </div>-->
                                                <div class="col-md-2 text-right">

                                                    <button id="time_block" class="btn billButton sumit_aling font-h3" type="submit">SUBMIT</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form:form> 	
                       </div>
                                <div id="date-tab" class="tab-pane fade row <c:if test="${not empty day_msg }"> in active</c:if> ">
                                    <form:form action="days-schedule" modelAttribute="ScheduleDetails"  method="post" >
                                        <div class="category_box2">
                                            <p class="font-h4">Should your surfSAFE controls be active only on certain days? Choose days of the week.</p>
                                            <div class="row" style="margin-top: 40px;">
                                                <div class="form-group col-md-6">
                                                    <label for="day-time-start" class="col-md-3 control-label2">Start Time</label>
                                                    <div class="input-group date  col-md-7" data-date="" >
                                                        <input name="days_start_time" class="form-control form_time"  id="day-time-start" size="16" type="text" value="" required="required" >

                                                        <span class="input-group-addon"><span class="time_image form_time" id="day-time-start-icon" data-date-format="hh:ii" data-link-field="day-time-start" data-link-format="hh:ii"></span></span>
                                                    </div>

                                                </div>
                                                <div class="form-group col-md-6">
                                                    <label for="day-time-end" class="col-md-3 control-label2">End Time</label>
                                                    <div class="input-group date  col-md-7" data-date="" >
                                                        <input name="days_end_time" class="form-control form_time" id="day-time-end" size="16" type="text" value="" required="required" >

                                                        <span class="input-group-addon"><span class="time_image form_time" id="day-time-end-icon" data-date-format="hh:ii" data-link-field="day-time-end" data-link-format="hh:ii"></span></span>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="row">
                                                <div id="day_selector" class="col-md-12 col-md-offset-1 margin-top-10" >

                                                    <input type="checkbox" name="days_days_checkbox" class="col-md-2" id="sun" value="sunday"><label for="sun">SUN</label>

                                                    <input type="checkbox" name="days_days_checkbox" class="col-md-2" id="mon" value="monday"><label for="mon">MON</label>

                                                    <input type="checkbox" name="days_days_checkbox" class="col-md-2" id="tue" value="tuesday"><label for="tue">TUE</label> 

                                                    <input type="checkbox" name="days_days_checkbox" class="col-md-2" id="wed" value="wednesday"><label for="wed">WED</label>

                                                    <input type="checkbox" name="days_days_checkbox" class="col-md-2" id="thu" value="thursday"><label for="thu">THU</label>

                                                    <input type="checkbox" name="days_days_checkbox" class="col-md-2" id="fri" value="friday"><label for="fri">FRI</label>

                                                    <input type="checkbox" name="days_days_checkbox" class="col-md-2" id="sat" value="saturday"><label for="sat">SAT</label>
                                                </div>

                                            </div>
                                            <div class="col-md-12">

                                                <div class="col-md-10"></div>
<!--                                                <div class="col-md-4 text-right">
                                                    <c:if test="${not empty day_msg }">
                                                        <h4 style="color:red;margin-top: 5%;">
                                                            <c:if test="${fn:contains(day_msg, 'Oops!')}">
                                    <span class="glyphicon glyphicon-alert"></span>
                                    </c:if>
                                                            <c:out value="${day_msg }"></c:out>
                                                            </h4>
                                                    </c:if>
                                                </div>-->
                                                <div class="col-md-2 sumit_aling text-right">


                                                    <button id="days_block" class="btn billButton sumit_aling2" type="submit">SUBMIT</button>

                                                </div>
                                            </div>
                                        </div>
                                    </form:form> 	
                                </div>
                                <div id="dates-tab" class="tab-pane fade <c:if test="${not empty date_msg }"> in active</c:if> ">
                                        <div class="category_box2 ">

                                            <p class="font-h4">Want to active Advance/Custom surfSAFE for a specific period? Choose Dates. </p>


                                            <div class="row" style="margin-top: 20px;" >
                                            <form:form action="non-recurring-schedule" modelAttribute="ScheduleDetails"  method="post" >
                                                <div class="row">
                                                    <div class="form-group col-md-6">
                                                        <label for="date-time-start" class="col-md-3 control-label2">Start Time</label>
                                                        <div class="input-group date  col-md-7" data-date="" >
                                                            <input name="dates_start_time" class="form-control form_time" id="date-time-start" size="16" type="text" value=""  required="required" >

                                                            <span class="input-group-addon"><span class="time_image form_time" id="date-time-start-icon"data-date-format="hh:ii" data-link-field="date-time-start" data-link-format="hh:ii"></span></span>
                                                        </div>

                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="date-time-end" class="col-md-3 control-label2">End Time</label>
                                                        <div class="input-group date  col-md-7" data-date="" >
                                                            <input  name="dates_end_time" class="form-control form_time" id="date-time-end" size="16" type="text" value=""   required="required" >

                                                            <span class="input-group-addon"><span class="time_image form_time" id="date-time-end-icon" data-date-format="hh:ii" data-link-field="date-time-end" data-link-format="hh:ii"></span></span>
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group col-md-6">
                                                        <label for="date-time-end" class="col-md-3 control-label2">Start Date</label>
                                                        <div class="input-group date  col-md-7" data-date="" >
                                                            <input name="dates_start_date"  class="form-control form_date" id="date-start" size="16" type="text" value="" required="required" >

                                                            <span class="input-group-addon"><span class="date_image form_date" id="date-start-icon"data-date-format="dd MM yyyy" data-link-field="date-start" data-link-format="yyyy/mm/dd"></span></span>
                                                        </div>

                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="date-time-end" class="col-md-3 control-label2">End Date</label>
                                                        <div class="input-group date  col-md-7" data-date="" >
                                                            <input name="dates_end_date" class="form-control form_date" id="date-end" size="16" type="text" value="" required="required" >

                                                            <span class="input-group-addon"><span class="date_image form_date" id="date-end-icon" data-date-format="dd MM yyyy" data-link-field="date-end" data-link-format="yyyy/mm/dd"></span></span>
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="col-md-12 margin-top-10">

                                                    <div class="col-md-10"></div>
                                                    
<!--                                                    <div class="col-md-4 text-right">
                                                        <c:if test="${not empty date_msg }">
                                                            <h4 style="color:red;margin-top: 5%;">
                                                                <c:if test="${fn:contains(date_msg, 'Oops!')}">
                                    <span class="glyphicon glyphicon-alert"></span>
                                    </c:if>
                                                                <c:out value="${date_msg }"></c:out>
                                                                </h4>
                                                        </c:if>
                                                    </div>-->
                                                    <div class="col-md-2 sumit_aling text-right">


                                                        <button id="dates_block" class="btn billButton  sumit_aling2"  type="submit">SUBMIT</button>

                                                    </div>
                                                </div>
                                            </form:form>
                                        </div>

                                    </div>


                                </div>

</div>
                            

                        
                    </div>
                    </div><!-- Col-md-12 -->
                    
                </div>
            </div>



        </div>





        <!-- ======IMPLEMENT BUTTON--END======= -->



        <!--         included pop up 
        <%--<jsp:include page="component/pop-up.jsp"></jsp:include>--%>
        
        <%--<jsp:include page="component/footer.jsp"></jsp:include>--%>
        
             Load javascripts at bottom, this will reduce page load time -->
        <%--<jsp:include page="component/js.jsp"></jsp:include>--%>
            <!--             END BODY 
                        <script>
                            $(document).ready(function () {
                                $('[data-toggle="tooltip"]').tooltip();
                                //    $('current_protectionstatus').title = "hi";
                            });
                        </script>-->


<!--            <div class="pt-30"></div>-->





            <!-- END BODY -->

            <!-- Imports for Date and Time Pickers modules  -->



        <%------SCRIPT  AREA--------%>

        <script type="text/javascript"
                src="${pageContext.request.contextPath}/plugins/jquery.min.js"
        charset="UTF-8"></script>
        <script type="text/javascript"
        src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript"
                src="${pageContext.request.contextPath}/bootstrap/js/bootstrap-datetimepicker.js"
        charset="UTF-8"></script>

        <script type="text/javascript">
//            $('#form_datetime').datetimepicker({
//                language: 'en',
//                format: "dd/mm/yyyy@hh:ii",
//                use24hours: true,
//                weekStart: 1,
//                todayBtn: 1,
//                autoclose: 1,
//                todayHighlight: 1,
//                startView: 2,
//                forceParse: 0,
//                showMeridian: 0
//            });
//            $('.form_date').datetimepicker({
//                language: 'fr',
//                format: "yyyy/mm/dd",
//                startDate: new Date(),
//                weekStart: 1,
//                todayBtn: 1,
//                autoclose: 1,
//                todayHighlight: 1,
//                startView: 2,
//                minView: 2,
//                forceParse: 0
//            });
//            $('.form_time').datetimepicker({
//                //language:  'fr',
//                //startDate: new Date(),
//                format: "hh:ii",
//                weekStart: 1,
//
//                autoclose: 1,
//                todayHighlight: 0,
//                startView: 1,
//                minView: 0,
//                maxView: 1,
//                forceParse: 0
//            });
            $(document).ready(function () {

        //                $("#collapser").click(function(){
        //                    $("#collapse1").toggle();
        //                });
            });
            
//            $('.image_click input').click(function(event){
//           $('#date-start').click();
//        });
//    var input = $('#input-a');     
//    $('#button-a').click(function(e){
//    // Have to stop propagation here
//    e.stopPropagation();
//    input.clockpicker('show')
//            .clockpicker('toggleView', 'minutes');
//});

//function add_schedule(){
//    console.log('add_schedule() called');
//    var choise = $('#Scheduling_type').val();
//    var form = document.getElementById('add-scheduling-form');
//    switch (choise) {
//    case 'Weekdays':
//        form.attributes('action','days-schedule');
////        form.action='days-schedule';
//      break;
//    case 'Weekends':
//       form.action='days-schedule';
//
//      break;
//    case 'Daily':
//       form.action='time-schedule';
//
//    break;
//    case 'Custom':
//       form.action='days-schedule';
//
//    break;
//    case 'Non Recurring':
//       form.action='non-recurring-schedule';
//
//    break;
//    
//   
//    
//  }
//  return true;
//}
            
        </script>
    </body>
</html>