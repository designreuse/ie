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
                	<form:form  method="post" modelAttribute="dtoUser" enctype="multipart/form-data" action="saveSignupPaymentTempMTY" id="saveSignupForm" class="register-form" >
		 <input type="hidden" value="${schoolDetailTemp.schoolId}" name="schoolId" id="schoolId">
		
		<div class="small-containor">
                    		<div class="new-started-grey">
                        	<div class="new-started-img">
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/started-step60.png">
                            </div>
                            <div class="new-started-head">
                            	<h3>ADMINISTRATOR SIGNUP</h3>
                                <p>Review Subscription Option</p>
                            </div>
                        </div>
                        </div>
		
		<div class="get-start-new-form">
			<div class="containerSmall">
				<form:hidden path="subscriptionPlanId"/> 
					</div>
					<div id="form3">
					 <div class="section_makpaymnt">
							<div id="tab2" align="center">
						<div class="containerSmall">
             				<div class="getstartForm">
				                <div class="check-select-out">
				                	<div class="check-select ">
				                    <c:if test="${schoolDetailTemp.paymentTypeId == 1}">
				                    	<p>Annual subscription to start Innerexplorer in your school is $${principalSubAmtYrly}</p>
				                    </c:if>
				                    </div>
				                </div>
                                
                                        <div class="contact-row contact-row-center" style="display: none;">
                                            <div class="outer-field-wrap">
                                                <div class="outer-field">
                                                    <input type="text" name="contriAmount" id="contriAmount" placeholder="Add additional amount (optional)" />
                                                </div>
                                            </div>
                                        </div>
                            </div>
                            
                            <div class="make-card contact-row-center">
                                <p>Payment Via</p>
                               <ul>
		                		<li><img src="<%=request.getContextPath()%>/NewStyles/images/paypal.png" alt="paypal"/></li>
		                        <li><img src="<%=request.getContextPath()%>/NewStyles/images/visa-card.jpg" alt="visa card"/></li>
								<li><img src="<%=request.getContextPath()%>/NewStyles/images/master-card.jpg" alt="master card"/></li>
								<li><img src="<%=request.getContextPath()%>/NewStyles/images/discover-card.jpg" alt="discover card"/></li>
								 <li><img src="<%=request.getContextPath()%>/NewStyles/images/express-card.jpg" alt="express card"/></li>
								<li><img src="<%=request.getContextPath()%>/NewStyles/images/eCheck.png" alt="echeck"/></li> 
                    		</ul>
                            </div>
                            </div>
						</div>
						</div>
					</div>
				</div>
				<div class="back-next-btn">
                        	<ul>
                            	<li><a onclick="backButtonSubmit(${schoolDetailTemp.schoolId})">Back</a></li>
                                <li>
                                <a onclick="proceedToStepFour(${schoolDetailTemp.paymentTypeId})">Next</a>
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
	<form action="savePrincipalTemp" id="savePrincipalTemp" method="post">
		<input type="text" name="id" id="id">
	</form>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%-- <%@include file="footer.jsp" %> --%>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
<script src="<%=request.getContextPath()%>/js/countries.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/dateFormat.js"></script>
<script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/tab.js" ></script>
<script type="text/javascript">
jQuery(document).ready
	(function($){
		$.format = DateFormat.format;
		 $("#login").click(function(e) {
		        $(".login_panel").toggle();
		        e.stopPropagation();
		    });

		    $(document).click(function(e) {
		        if (!$(e.target).is('.login_panel, .login_panel *')) {
		            $(".login_panel").hide();
		        }
		    });
		    
		$.daisyNav();
	});
	
</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
<script type="text/javascript">

function proceedToStepFour(paymentType){
	//alert('Taman');
	var minContri;
	if(paymentType == 0){
		minContri = '${principalSubAmtMntly}';
	}
	else if(paymentType == 1){
		minContri = '${principalSubAmtYrly}';
	}
	var selectedProg = $('#selectedPrograms').val();
	if(selectedProg != ''){
		if($("#saveSignupForm").valid()){
			var contriAmount = $("#contriAmount").val();
			var doubleVal = "0";
			 if(contriAmount == ''){
				 $("#contriAmount").val(doubleVal);
			} 
			 
			 /* var otherAmount=$("#contriAmount").val();
         		var otherAmount1= Number(otherAmount).toFixed(2); */
         		 $("#contriAmount").val(minContri);
			 
			 $("#saveSignupForm").submit();
			return true;
		}else{
			return false;
		}
	}else{
		alert("Please select a program first.");
		return false;
	} 
}
/*     $(function(){
      SyntaxHighlighter.all();
    }); */
	jQuery(document).ready
	(function($){
		/* $(".fancybox").fancybox(); */
		$.daisyNav();
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
    $(document).ready(function() {   
    	$("#latitude").val('0.0');
    	$("#longitude").val('0.0');
    	$("#zipCode").blur(function(event) {
    		$.ajax({
    			url : "http://zip.getziptastic.com/v2/US/"+$(this).val(),
    			success : function(result) {
    				$("#state_short").val(result.state_short);
    				$("#state").val(result.state);
    			}
    		});
    	});
    	getMyHTMLElement('tab1').style.display = 'none';
    	$('#progDetail').hide();
    	$('#ourProg').hide();
    	
    	$('#orOption').hide();
    	$('#schoolInfo').hide();
		$('#schoolSetupInfo').hide();
		$('#proceedStepTwo').hide();
    	$('#searchResult').hide();
    	$('#selectedPrograms').val('1,');
    	$('#submitButton').hide();
                $('.register-form').show();
	                $.validator.addMethod("schoolAlreadyExist", function(value, element) {
	                    return this.optional(element) || schoolAlreadyCheck(value);
	                }, "School already registered.");
                    $.validator.addMethod("emailAlreadyExist", function(value, element) {
                        return this.optional(element) || emailAlreadyCheck(value);
                    }, "Email already exists.");
                    $.validator.addMethod("nameRegex", function(value, element) {
                        return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
                    }, "Field must contain letters only.");
                    $.validator.addMethod("specialChar", function(value, element) {
                        return this.optional(element) || /^[a-zA-Z0-9- ]+$/i.test(value);
                    }, "Remove special characters.");
        			jQuery.validator.addMethod("notEqual", function(value, element) {
        				var status = true;
        				$('[id^=teacherEmail_]').each( function( index, el ){
        					if(($( el ).val() == value || $("#email").val() == value) && $( el ).attr("id") != $(element).attr("id") ){
        						status = false;
        					}
        				});
        				  return this.optional(element) || status;
        				}, "Please use unique email address.");
                    
                    $('.register-form').validate({
                        errorElement: 'span', //default input error message container
                        errorClass: 'help-block', // default input error message class
                        focusInvalid: false, // do not focus the last invalid input
                        //ignore: "",
                        rules: {
                        	schoolName:{
                        		required: true,
                        		schoolAlreadyExist: true,
                        		minlength : 3,
                        		maxlength : 80
                        	},
                        	schoolNameSearch:{
                        		schoolAlreadyExist: true
                        	},
                        	phone:{
                        		required: true,
                        		minlength : 10,
                        		maxlength : 30
                        		//digits	: true
                        	},
                        	acnDetail:{
                        		required: true,
                        		maxlength : 12
                        	},
                            address: {
                                required: true,
                                maxlength :100
                            },
                            zipCode:{
                        		required: true,
                        		maxlength : 20
                            },
                            suburb: {
                                required: true,
                                maxlength : 20
                            },
                            state: {
                                required: true,
                                maxlength : 20
                            },
                            country: {
                                required: true
                            },
                            title: {
                                required: true,
                                maxlength : 5
                            },
                            firstName: {
                                required: true,
                                //nameRegex:true,
                                maxlength : 20
                            },
                            lastName: {
                                /* required: true, */
                               // nameRegex:true,
                                maxlength : 20
                            },
                            dob: {
                                required: true,
                            },

                            email: {
                                required: true, 
                                email: true,
                                emailAlreadyExist: true
                            },

                            password: {
                               required: true,
                        		minlength : 6,
                        		maxlength : 20
                            },
                            confirmPassword: {
                                equalTo: "#password"
                            },
                            ownerMobile:{
                        		required: true,
                        		minlength : 10,
                        		maxlength : 30
                        		//digits	: true
                        	},
                        	ownerPhone:{
                        		required: true,
                        		minlength : 10,
                        		maxlength : 30
                        		//digits	: true
                        	},
                        	check:{
                        		required:true
                        		
                        	},
                        	image:{
                        		required:false
                        	}

                        },


                        invalidHandler: function(event, validator) { //display error alert on form submit   
                        },

                        highlight: function(element) { // hightlight error inputs
                            $(element)
                                .closest('.outer-field').addClass('has-error'); // set error class to the control group
                            $(element).next('.fancybox').next('.fancybox').addClass('has-error');
                        },
                        
                        success: function(label) {
                            label.closest('.outer-field').removeClass('has-error');
                            label.next('.fancybox').next('.fancybox').removeClass('has-error');
                            label.remove();
                        },

                        errorPlacement: function(error, element) {
                            if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
                                error.insertAfter(element.next('.fancybox').next('.fancybox'));
                            } else if (element.closest('.input-icon').size() === 1) {
                                error.insertAfter(element.closest('.input-icon'));
                            } else {
                                error.insertAfter(element);
                            }
                        },

                        submitHandler: function(form) {
                            form.submit();
                        }
                    });
                 

    });
    
    function skipClasses(){
    	var schoolId = $("#schoolId").val();
    	window.location.href="<%=request.getContextPath()%>/signupTempSuccess?schoolId="+schoolId;
    }
  
</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
  <script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
    });
    
    function backButtonSubmit(tempSchoolId){
    	$("#id").val(tempSchoolId);
    	$("#savePrincipalTemp").submit();
    	
	}
  </script>

</body>
</html>