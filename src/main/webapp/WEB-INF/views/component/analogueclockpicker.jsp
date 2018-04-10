<%-- 
    Document   : timepicker
    Created on : Dec 21, 2017, 12:01:19 PM
    Author     : abhinish-pda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<!--        creating problem in the page-->
<!--        <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/clockpicker.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/jquery.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/clockpicker.js"></script>
        
    </head>
    <body>
<!--        <div class="input-group clockpicker">
            <input type="text" class="form-control" value="09:30">
            <span class="input-group-addon">
                <span class="glyphicon glyphicon-time"></span>
            </span>
        </div>-->
        <script type="text/javascript">
            
       var cstart_date=$('#date-time-start').clockpicker({
            placement: 'top',
            align: 'left',
//            donetext: 'Done'
            autoclose: true,
            'default': 'now'
        });
        $('#date-time-start-icon').click(function(event){
            event.stopPropagation();
            cstart_date.clockpicker('show');
            setInterval(function(){cstart_date.clockpicker('hide');}, 5000);
            console.log('clicked');
        });
        
        var cstart_time=$('#time-ip-start').clockpicker({
            placement: 'top',
            align: 'left',
//            donetext: 'Done'
            autoclose: true,
            'default': 'now'
        });
        $('#time-ip-start-icon').click(function(event){
            event.stopPropagation();
            cstart_time.clockpicker('show');
            setInterval(function(){cstart_time.clockpicker('hide');}, 5000);
            console.log('clicked');
        });
        
        var cstart_day=$('#day-time-start').clockpicker({
            placement: 'top',
            align: 'left',
//            donetext: 'Done'
            autoclose: true,
            'default': 'now'
        });
        $('#day-time-start-icon').click(function(event){
            event.stopPropagation();
            cstart_day.clockpicker('show');
            setInterval(function(){cstart_day.clockpicker('hide');}, 5000);
            console.log('clicked');
        });
        
        
        
        
       var cend_date = $('#date-time-end').clockpicker({
            placement: 'top',
            align: 'left',
//            donetext: 'Done'
            autoclose: true,
            'default': 'now'
        });
         $('#date-time-end-icon').click(function(event2){
            event2.stopPropagation();
            cend_date.clockpicker('show');
            setInterval(function(){cend_date.clockpicker('hide');}, 5000);
            console.log('clicked');
        });
        
        var cend_time= $('#time-ip-end').clockpicker({
            placement: 'top',
            align: 'left',
//            donetext: 'Done'
            autoclose: true,
            'default': 'now'
        });
        $('#time-ip-end-icon').click(function(event2){
            event2.stopPropagation();
            cend_time.clockpicker('show');
            setInterval(function(){cend_time.clockpicker('hide');}, 5000);
            console.log('clicked');
        });
        
        var cend_day= $('#day-time-end').clockpicker({
            placement: 'top',
            align: 'left',
//            donetext: 'Done'
            autoclose: true,
            'default': 'now'
        });
        $('#day-time-end-icon').click(function(event2){
            event2.stopPropagation();
            cend_day.clockpicker('show');
            setInterval(function(){cend_day.clockpicker('hide');}, 5000);
            console.log('clicked');
        });
        </script>
        
        
    </body>
</html>
