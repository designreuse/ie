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
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>School Campaign</title>
    <c:if test="${companyName eq '1'}">
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<c:if test="${companyName eq '2'}">
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>

<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"> -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery-ui.css">
</head>

<body>
<div class="wrapper">
    <%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        
        <!--inner_header starts-->
        <%-- <div class="inner_header"> <img src="<%=request.getContextPath()%>/NewStyles/images/browse-donation-header.jpg"  alt=""/> </div> --%>
        
        <!--about_us starts-->
        <div class="about_us">
            <div class="content_inner">
                <div class="pracProgress_hdr">
                    <h2>Contribution</h2>
                    <div class="green_line_btm"></div>
                </div>
                
                <!--school campaign start-->
                <div class="school_campaign">
                    <div class="make_schol_contrb">
                        <div class="techForm">
                            <label>Make School Contribution</label>
                            <div class="msc_inputbox">
                                <div class="contact-row">
                                    <div class="outer-field-wrap">
                                        <div class="outer-field">
                                            <input type="number" placeholder="$" id="amount" min="0">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="button" onclick="addContribution();" value="Contribute" class="startBtn fl orange_contrbte"/>
                        </div>
                    </div>
                </div>
                <!--school campaign end--> 
            </div>
        </div>
        <!--about_us ends--> 
        
        <!--inner_header ends--> 
        
    </div>
    <!--inner_wrapper ends--> 
</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>

<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
<%-- <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script> --%>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery-ui.js"></script>
<script type="text/javascript">
$(function() {
    $( "#startDatepicker" ).datepicker({
        defaultDate: "+1w",
        changeMonth: true,
        numberOfMonths: 3,
        onClose: function( selectedDate ) {
          $( "#endDatepicker" ).datepicker( "option", "minDate", selectedDate );
        }
      });
      $( "#endDatepicker" ).datepicker({
        defaultDate: "+1w",
        changeMonth: true,
        numberOfMonths: 3,
        onClose: function( selectedDate ) {
          $( "#startDatepicker" ).datepicker( "option", "maxDate", selectedDate );
        }
      });
  });
   function copyImageName(){
	   var fullPath  = $("#imagePath").val();
	   if (fullPath) {
	         var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
	         var filename = fullPath.substring(startIndex);
	         if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
	                 filename = filename.substring(1);
	         }
	         $("#disableImagePath").val(filename);
	}
   }
   
    $(function(){
      SyntaxHighlighter.all();
    });
	
	$("#flexiselDemo3").flexisel({
        visibleItems: 5,
        animationSpeed: 1000,
        autoPlay: true,
        autoPlaySpeed: 3000,            
        pauseOnHover: true,
        enableResponsiveBreakpoints: true,
        responsiveBreakpoints: { 
            portrait: { 
                changePoint:480,
                visibleItems: 1
            }, 
            landscape: { 
                changePoint:640,
                visibleItems: 2
            },
            tablet: { 
                changePoint:768,
                visibleItems: 3
            }
        }
    });
    $(window).load(function(){
		
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
	  
	  
	  
});

    
</script> 

<script type="text/javascript">
function addContribution(){
	
	//var totalCampaignAmount = "${totalCampaignAmount}";
	var url='<%=request.getContextPath()%>/teacher/addSchoolContribution111';
   	var amount = $("#amount").val();
   	
   	//var assisAmount = $("#assisAmount").val();
   	if(amount==""){
		alert("Please enter an amount");
		return false;
	}
   	if(amount < 100){
   		alert("To create campaign please contribute minimum $100 from your side.");
		return false;
   	}
/* 	else if(Number(amount)>Number(assisAmount)){
		alert("Amount should not greater than required amount.");
		return false;
	} */
    $.ajax({
    	
          url:url,
          method:'POST',
          async :false,
          data:{amount:amount},
          success:function(response){
                 //if(response=="success"){
                	// alert(response);
                	 
                	/*  var resultPer1 = (response * 100/ totalCampaignAmount).toFixed()+"%";
                	 var resultPer2 = (100-(response * 100/ totalCampaignAmount).toFixed())+"%";
                	 if(((response * 100/ totalCampaignAmount).toFixed()) > 100){
                		 resultPer1 = "99%";
                		 resultPer2 = "0%";
                		 $('div#donorContributedAmountOverload').width("1%");
                		 $('div#donorContributedAmountOverload').addClass("xtra_padding");
                	 }
                	 $('div#contributeSchool').width(resultPer1);
                	 $('div#contributeSchool').addClass("xtra_padding");
                	 $('div#needAssistance').width(resultPer2);
                	 $('div#needAssistance').addClass("xtra_padding");
                	 
                	 var pendingAmount = totalCampaignAmount-response;
                	 
                	 $("#contriAmount").html("$ "+response)
                	 $("#assisAmount").val(pendingAmount)
                	 
                	 $("#schoolContribution").val(response); */
                	 $("#amount").val('');
                	 return true;
          		/* }else{
          			
          		} */
          }
    });
	
	
}
</script>
</body>
</html>
