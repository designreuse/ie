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
<title>Get Started</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css"	id="style_components" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="wrapper">
		<%@include file="header.jsp"%>
		<section class="makeDonateSct">
			<div class="containerSmall">
        <div class="pracProgress_hdr">
                    <h2>Get Started</h2>
                    <div class="green_line_btm"></div>
                </div>
			</div>
		</section>
        <section class="get-started-new-sec">
        	<div class="container">
            	<div class="new-started-step">
                	<div class="containerSmall">
                	<form:form action="savePaymentTypeTemp" modelAttribute="dtoUser" method="post" name="paymentTypeFrom" id="paymentTypeFrom">
                    	<div class="small-containor">
                    		<div class="new-started-grey">
                        	<div class="new-started-img">
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/started-step60.png">
                            </div>
                            <div class="new-started-head">
                            	<h3>ADMINISTRATOR SIGNUP</h3>
                                <p>Select a Subscription option</p>
                            </div>
                        </div>
                        </div>
                        <div class="get-start-new-form">
                        	<div class="getstartForm_started">
                	<label class="start-new-label">Launch Options</label>
					<ul>
						<li id="first" onclick="selectPaymentType(0);">
                        	<div class="launch-img">
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/zero.jpg">
                            	<h4 class="uper-hd-lft">$${principalSubAmtMntly}/<span>month</span></h4>                            	
                            	 <div id="zeroSelectDiv" ></div>
                            </div>
                            <div class="launch-text subsc_bull">
                            		<h4>'Pay as you go' Plan</h4>
                            		<h4>Unlimited access to all classrooms in School</h4>
                            		<h4>No hidden charges</h4>
                            		<h4>Option to ‘pause’ your subscription during summer</h4>
                            		<h4>Automatic updates</h4>
                            </div>
                            <div class="launch-btn">
                            	<a href="javascript:;" onclick="selectPaymentType(0);">Select</a>
                            </div>
						</li>
                        <li id="second" onclick="selectPaymentType(1);">
                        	<div class="launch-img">
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/launch-img-2.jpg">
                            	<h4 class="uper-hd-rght">$${principalSubAmtYrly}/<span>year</span></h4>
                            	<div id="paymentSelectDiv"></div>
                            </div>
                            <div class="launch-text subsc_bull">
                            	<h4>'Pre-Pay for year and save' Plan</h4>
                            	<!-- <h4>Save 50% subscription fee, before August 12, 2016</h4> -->
                            	<h4>Unlimited access to all classrooms in School</h4>
                            	<h4>No hidden charges</h4>
                            	<h4>Automatic updates</h4>
                            </div>
                            <div class="launch-btn">
                            	<a href="javascript:;" onclick="selectPaymentType(1);">Select</a>
                            </div>
						</li>
					</ul>
				</div>
				<input type="hidden" value="${schoolDetailTemp.schoolId}" name="schoolId">
                            <input type="hidden" name="paymentType" id="paymentType" value="">
                             <input type="hidden" name="pCode" id="pCode" value="${pCode}">
                        </div>
                        <div class="back-next-btn">
                        	<ul>
                            	<li><a onclick="backButtonSubmit(${schoolDetailTemp.schoolId})">Back</a></li>
                                <li>
                                <input type="button" value="Next" onclick="submitpaymentTypeFrom();">
                                <!-- <a href="javascript:;">Next</a> -->
                                </li>
                            </ul>
                        </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </section>
	</div>
	<form action="saveSchoolTemp" id="saveSchoolTemp" method="post">
		<input type="text" name="id" id="id">
	</form>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
<script	src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"	type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/dateFormat.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript">	
jQuery(document).ready
	(function($){
		$.format = DateFormat.format;
		var selectedPaymentType = '${schoolDetailTemp.paymentTypeId}';
		if(selectedPaymentType == ""){
    		$("#paymentType").val("");
		}
		else if(selectedPaymentType == 0){
    		$('#second').removeClass('active');
    		$('#first').addClass('active');
    		var zeroSelectImg='<img alt="" src="<%=request.getContextPath()%>/NewStyles/images/tick-mark.png" id="zeroSelect">';
    		$("#zeroSelectDiv").html(zeroSelectImg);
    		$("#paymentSelectDiv").html('');
    		$("#paymentSelect").prop('src','');
    		$("#zeroSelectDiv").addClass('launch-tick-mark');
    		$("#paymentSelectDiv").removeClass('launch-tick-mark');
    		$("#paymentType").val(selectedPaymentType);
    	}
    	else if(selectedPaymentType == 1){
    		$('#first').removeClass('active');
    		$('#second').addClass('active');
    		$("#zeroSelect").prop('src','');
    		$("#zeroSelectDiv").html('');
    		var paymentSelectImg='<img alt="" src="<%=request.getContextPath()%>/NewStyles/images/tick-mark.png" id="paymentSelect">';
    		$("#paymentSelectDiv").html(paymentSelectImg);
    		$("#paymentSelectDiv").addClass('launch-tick-mark');
    		$("#zeroSelectDiv").removeClass('launch-tick-mark');
    		$("#paymentType").val(selectedPaymentType);
    	}
		$("#header").sticky({ topSpacing: 0 });
		$.daisyNav();
		$("#login").click(function(e) {
	        $(".login_panel").toggle();
	        e.stopPropagation();
	    });
		$('#saveSchool').validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            //ignore: "",
            rules: {
            	name: {
                    required: true,
                },
                address: {
                    required: true,
                },
                state: {
                    required: true,
                },
                zipCode: {
                    required: true,
                }
            },
            invalidHandler: function(event, validator) { //display error alert on form submit   
            },

            highlight: function(element) { // hightlight error inputs
                $(element)
                    .closest('.outer-field-wrap').addClass('has-error'); // set error class to the control group
            },
            
            success: function(label) {
                label.closest('.outer-field-wrap').removeClass('has-error');
                label.closest('.outer-field-wrap ').removeClass('has-error');
                label.remove();
            },

            errorPlacement: function(error, element) {
                    error.insertAfter(element);
            },

            submitHandler: function(form) {
                form.submit();
            }
        });
	});
</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
<script type="text/javascript">
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
    function selectPaymentType(selectedPaymentType){
    	if(selectedPaymentType == 0){
    		$('#second').removeClass('active');
    		$('#first').addClass('active');
    		
    		var zeroSelectImg='<img alt="" src="<%=request.getContextPath()%>/NewStyles/images/tick-mark.png" id="zeroSelect">';
    		$("#zeroSelectDiv").html(zeroSelectImg);
    		$("#paymentSelectDiv").html('');
    		$("#paymentSelect").prop('src','');
    		$("#zeroSelectDiv").addClass('launch-tick-mark');
    		$("#paymentSelectDiv").removeClass('launch-tick-mark');
    	}
    	else{
    		$('#first').removeClass('active');
    		$('#second').addClass('active');
    		$("#zeroSelect").prop('src','');
    		$("#zeroSelectDiv").html('');
    		var paymentSelectImg='<img alt="" src="<%=request.getContextPath()%>/NewStyles/images/tick-mark.png" id="paymentSelect">';
    		$("#paymentSelectDiv").html(paymentSelectImg);
    		
    		$("#paymentSelectDiv").addClass('launch-tick-mark');
    		$("#zeroSelectDiv").removeClass('launch-tick-mark');
    		
    	}
    	$("#paymentType").val(selectedPaymentType);
    	
    }
	
    function backButtonSubmit(tempSchoolId){
    	$("#id").val(tempSchoolId);
    	$("#saveSchoolTemp").submit();
	}
    
    function submitpaymentTypeFrom(){
    	var paymentType=$("#paymentType").val();
    	if(paymentType!=""){
    		$("#paymentTypeFrom").submit();
    	}
    	else
    		{
    		alert("Please select any option.")
    		}
    }
    
</script>


</body>
</html>