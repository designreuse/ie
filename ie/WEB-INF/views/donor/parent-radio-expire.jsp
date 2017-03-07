<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%          response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server

            response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance

            response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
            response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility 
 %>

 
 <!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Home Edition Radio</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css"> --%>
</head>

<body>
	<div class="wrapper">
	   <%@include file="header.jsp" %>
	  <!--<section class="slider-inner">
			<img src="images/browse-donation-header.jpg" alt="Slider" />
		</section>-->

		<section class="makeDonateSct mtop-5">
			<div class="containerSmall">
		<form:form name="parentSignup" id="parentSignup" class="register-form" modelAttribute="dtoUser" action="donor/parentRadioUpgrade" method="POST" enctype="multipart/form-data">	
        
         <div class="pracProgress_hdr">
            <h2>Inner Explorer Radio</h2>
            <div class="green_line_btm"></div>
            
				<div class="teach_dash_update margin-btm-zero margin-top-zero"><h3 class="teachr_dsh bdr-btm-none">Experience IE driven practice session</h3>
               		</div>
				<div class="clr"></div>
        
                
           
				
				<div class="get-start-new-form" style="margin-top:0">
                        	<div class="getstartForm_started">
					<ul>
						<li id="first" onclick="showPayment(1);">
                        	<div class="launch-img">
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/parent1.jpg">
                            	 <div id="zeroSelectDiv" ></div>
                            </div>
                            <div class="launch-text launch-text-cntr ">
                            Experience Inner Explorer Program for 3 months.  $${parentAmountThreeYear} (one time fee)
                            </div>
                            <div class="launch-btn">
                            	<a href="javascript:;" onclick="showPayment(1);">Select</a>
                            </div>
                            
                           
                            
						</li>
                        <li id="second" onclick="showPayment(2);">
                        	<div class="launch-img">
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/parent2.jpg">
                            	<div id="paymentSelectDiv"></div>
                            </div>
                            <div class="launch-text launch-text-cntr">
                            	 Experience & Share Inner Explorer Program at Home. $${parentAmount} (billed annually)
                            </div>
                            <div class="launch-btn">
                            	<a href="javascript:;" onclick="showPayment(2);">Select</a>
                            </div>
						</li>
					</ul>
				</div>
                        </div>
			
            </div>
      
                <div class="btns-outer mtop10">
				<input type="hidden" name="parentType" id="parentType"/>
				<input type="hidden" name="parentAmount" id="parentAmount" value="${parentAmount}"/>
					<!-- <input type="submit" value="START PRACTICE" class="submit-btn fl" /> -->
				</div> 
				
				</form:form>
				</div>
    </section>
				
</div>
	<footer>
		<div class="container">
			<div class="footerLeft">
				<p>Copyright © 2015 Inner Explorer</p>
			</div>
			<div class="footerRight">
				<ul>
					<li><a href="javascript:;">Privacy Policy</a></li>
					<li><a href="javascript:;">Terms & Conditions</a></li>
				</ul>
			</div>
		</div>
	</footer>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>  
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script> 
   
   <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
   <script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$.daisyNav();
		
		$("#zipCode").blur(function(event) {
    		$.ajax({
    			url : "http://zip.getziptastic.com/v2/US/"+$(this).val(),
    			success : function(result) {
    				$("#state_short").val(result.state_short);
    				//$("#city").val(result.city);
    			}
    		});
    	});
		
		$("#payment_options").hide();
		$("#parentType").val(1);
		var parentAmountThreeMonth='${parentAmountThreeYear}';
		$("#parentAmount").val(parentAmountThreeMonth);
		
	});

	
	</script>
	
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
   <script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>

   <script type="text/javascript">
    
 function showPayment(selectValue) {
		
		
		
		
		if(selectValue == 1){
			$('#second').removeClass('active');
    		$('#first').addClass('active');
    		
    		var zeroSelectImg='<img alt="" src="<%=request.getContextPath()%>/NewStyles/images/tick-mark.png" id="zeroSelect">';
    		$("#zeroSelectDiv").html(zeroSelectImg);
    		$("#paymentSelectDiv").html('');
    		$("#paymentSelect").prop('src','');
    		$("#zeroSelectDiv").addClass('launch-tick-mark');
    		$("#paymentSelectDiv").removeClass('launch-tick-mark');
    		$("#parentType").val(1);
    		var parentAmountThreeMonth='${parentAmountThreeYear}';
    		$("#parentAmount").val(parentAmountThreeMonth);
    		
    		$("#parentSignup").submit();
    		
    	}
    	else if(selectValue == 2){
    		$('#first').removeClass('active');
    		$('#second').addClass('active');
    		$("#zeroSelect").prop('src','');
    		$("#zeroSelectDiv").html('');
    		var paymentSelectImg='<img alt="" src="<%=request.getContextPath()%>/NewStyles/images/tick-mark.png" id="paymentSelect">';
    		$("#paymentSelectDiv").html(paymentSelectImg);
    		
    		$("#paymentSelectDiv").addClass('launch-tick-mark');
    		$("#zeroSelectDiv").removeClass('launch-tick-mark');
    		$("#parentType").val(2);
    		var parentAmount='${parentAmount}';
    		$("#parentAmount").val(parentAmount);
    		$("#parentSignup").submit();
    		
    	}
		
		
      
	}
</script>

</body>
</html>
