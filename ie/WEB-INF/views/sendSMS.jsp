<%@ taglib prefix="c" 			uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" 		uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" 		uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" 			uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" 			uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sf" 			uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring"      uri="http://www.springframework.org/tags"%>
 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%          response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server

            response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance

            response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
            response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility 
 %>
<!doctype html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport"/>
<meta content="" name="description"/>
<meta content="" name="author"/>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>SMS</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/boston.css">
</head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js" type="text/javascript"></script>

<style>
#frm .btn-o{width:100px !important;}
.class-lft{text-align:left !important; padding:10px 0 !important; float:left;}
.new_Box_data  label {
    font-size: 14px !important;
    font-weight: 100 !important;
    padding: 6px 5px !important;
    text-align: left !important;
    color:#69696e !important;
}
.btnstrtoutr{margin-top:20px}
</style>

<body>
<div class="wrapper">
<%@include file="header.jsp" %>

    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        


        <!--about_us starts-->
        <div class="about_us">
            <div class="content_inner">
            
                <div class="pracProgress_hdr">
                    <h2>Send SMS</h2>
                    <div class="green_line_btm"></div>
                </div>
                
                <div class="col-md-12 p0 pull-left">
  
                </div>
                <!-- image sec -->

                              
                  
                <section class="banner-sec-boston" id="btn-click-two">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 pull-left">
                                    <div class="col-md-6 col-md-offset-3">
                                        <div class="formoutr-boston">
                                            <form class="form-horizontal">
                                                    <div class="col-md-12 p0">
                                                   
                                                    
                                                  <div class="form-group">
                                                        <label for="phone" class="col-sm-2 control-label">Phone</label>
                                                        <div class="col-sm-10">
                                                          <input type="text" class="form-control" id="phone" placeholder="Phone" required="">
                                                        </div>
                                                    </div>
                                                    <br>
                                                     <div class="form-group">
                                                        <label for="phone" class="col-sm-2 control-label">Purpose</label>
                                                        <div class="col-sm-10">
                                                          <input type="text" class="form-control" id="purpose" placeholder="purpose" required="">
                                                        </div>
                                                    </div>
                                                    <br>
                                                     <div class="form-group">
                                                        <label for="phone" class="col-sm-2 control-label">Message</label>
                                                        <div class="col-sm-10">
                                                          <input type="text" class="form-control" id="message" placeholder="message" required="">
                                                        </div>
                                                    </div>
                                                    
                                                     
                                                   
                                                    
                                                    
                                           
                                               
                                                    <div class="col-md-12 center-block pB70 btnstrtoutr">
                                                     <input type="button" value="Submit" class="button-submit-boston center-block" onclick="saveRecommendedData();">
                                                    </div> 
                                                    
                                            </form>
                                        </div>    
                                    </div>
                            </div>
                        </div>
                    </div>

                </section>
            


</div>
</div>

<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp"%>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/dateFormat.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.formatCurrency.all.js"></script>
<script type="text/javascript">
jQuery(document).ready
(function($){
$(".fancybox").fancybox();
});
</script>





<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>

<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/dateFormat.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.formatCurrency.all.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
<script type="text/javascript">





function saveRecommendedData(){

/* 	alert("snding SMS") */
		var phone = $('#phone').val();
		var message = $('#message').val();
		var purpose = $('#purpose').val();
		
		/* alert(phone);
		alert(purpose);
		alert(message); */
		
		$.ajax({
			url : "<%=request.getContextPath()%>/sendMessage",
			type : 'GET',
			data:{phone:phone,message:message,purpose:purpose},
			success : function(response) {
				alert("message sent successfully");
				}
			});
	}
	

</script>
<script type="text/javascript">
$(document).ready(function(){
$('#share_button').click(function(e){
FB.ui({
	  method: 'share',
	  mobile_iframe: true,
	  href: 'http://innerexplorer.org/',
	  description: 'I ve participated to run for #Mindfulness in #BostonMarathon 2017 sponsored by InnerExplorer #26Miles26Schools',
	  caption:'Inner Explorer',
	  hashtag:'#Mindfulness',
	}, function(response){});
});
});



</script>
 <script type="text/javascript">



</script> 
<script type="text/javascript">
    $('#btn-click-1').on("click",function(){
         // $(window).scrollTop(0);
          $('#btn-click-one').show();
          $('#btn-click-two').hide();
          $('#btn-click-three').hide();
          $('.bostonB1').addClass('boston-btn-actv');
          $('.bostonB2').removeClass('boston-btn-actv');
          $('.bostonB3').removeClass('boston-btn-actv');

    });
     $('#btn-click-2').on("click",function(){
         // $(window).scrollTop(0);
          $('#btn-click-one').hide();
          $('#btn-click-two').show();
          $('#btn-click-three').hide();
          $('.bostonB1').removeClass('boston-btn-actv');
          $('.bostonB2').addClass('boston-btn-actv');
          $('.bostonB3').removeClass('boston-btn-actv');
          
    });
      $('#btn-click-3').on("click",function(){
         // $(window).scrollTop(0);
          $('#btn-click-one').hide();
          $('#btn-click-two').hide();
          $('#btn-click-three11').show();
          
          $('#btn-click-three').attr("style", "visibility:visible;");
          $('.bostonB1').removeClass('boston-btn-actv');
          $('.bostonB2').removeClass('boston-btn-actv');
          $('.bostonB3').addClass('boston-btn-actv');
    });
    
</script>


<%--  <script type='text/javascript' src='http://code.jquery.com/jquery-1.10.2.min.js'></script> --%>
<%-- <script type='text/javascript' src='http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js'></script> --%>
<script type='text/javascript' src='<%=request.getContextPath()%>/NewStyles/js/slider-new.js'></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.min.js"></script>
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jqueryui-touch-punch/0.2.3/jquery.ui.touch-punch.min.js"></script>

<script>
  $('#amt').draggable();
</script>
</body> 
</html>
