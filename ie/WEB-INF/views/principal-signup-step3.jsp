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
                	<form:form action="savePrincipalTemp" id="saveSchool" modelAttribute="dtoUser" method="post">
                    	<div class="small-containor">
                    		<div class="new-started-grey">
                        	<div class="new-started-img">
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/started-step40.png">
                            </div>
                            <div class="new-started-head">
                            	<h3>ADMINISTRATOR SIGNUP</h3>
                                <p>Fill School Contact Information</p>
                            </div>
                        </div>
                        </div>
                        <div class="get-start-new-form">
                        	<div class="getstartForm_teacher">
                	<label class="start-new-label">Contact Information</label>
                	<input type="hidden" value="${schoolDetailTemp.schoolId}" name="schoolId">
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Name*" name="firstName" value="${schoolDetailTemp.principalName}">
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Email*" name="email" id="priEmail" value="${schoolDetailTemp.principalEmail}">
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="password" placeholder="Password*" name="password" id="password" value="${schoolDetailTemp.principalPass}">
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="password" placeholder="Confirm Password*" name="confirmPassword" value="${schoolDetailTemp.principalPass}">
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Mobile" name="mobile" value="${schoolDetailTemp.principalMob}">
									</div>
								</div>
							</div>
						</li>
            			<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Promo Code" name="pCode" id="pCode" value="${schoolDetailTemp.promoCode}">
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<!-- <input type="hidden" name="uCurrDate" id="uCurrDate">
				<input type="hidden" name="isBack" id="isBack" value="N"> -->
                        </div>
                        <div class="back-next-btn">
                        	<ul>
                            	<li><a onclick="backButtonSubmit(${schoolDetailTemp.schoolId})">Back</a></li>
                                <li>
                                <input type="submit" value="Next">
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
		$("#header").sticky({ topSpacing: 0 });
		$.daisyNav();
		$("#login").click(function(e) {
	        $(".login_panel").toggle();
	        e.stopPropagation();
	    });
		
		function emailAlreadyCheck(value){
			var email = value;
			if(email != ""){
				$.ajax({
					url : "<%=request.getContextPath()%>/check/availability/email",
					method : 'POST',
					headers: { 
						'Content-Type':'application/json'
						},
					data : JSON.stringify({"email":email}),
					async:false,
					success : function(result) {
						if(result.response.code == 200){
							emailStatus = true;
						} else if(result.response.code == 409){
							emailStatus = false;
						}
					}
				});
			}else{
				emailStatus = true;
			}
			return emailStatus;
        }
		
		$.validator.addMethod("emailAlreadyExist", function(value, element) {
            return this.optional(element) || emailAlreadyCheck(value);
        }, "Email already exists. Click Here to <a href='<%=request.getContextPath()%>/login'> Login");
		
		
		$.validator.addMethod("pCodeValid", function(value, element) {
            return this.optional(element) || pCodeValid(value);
        }, "Please enter a valid Promo Code.");
		
		$('#saveSchool').validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            //ignore: "",
            rules: {
            	firstName: {
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
                mobile:{
                	/* required: true, */
                	maxlength : 20
                },
                pCode: {
                	pCodeValid: true
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
    
    
    function pCodeValid(){
    	
    	var principalEmail=$("#priEmail").val();
    	var pCode=$("#pCode").val();
    	var flag;
    	if(principalEmail!="" && pCode!=""){
    		
    		if(pCode=='6MONIE'){
    			flag=true;
    		}
    		else{
    		var url='<%=request.getContextPath()%>/checkPromoCode';
    		$.ajax({
    			url:url,
    			method:'POST',
    			async :false,
    			data:{principalEmail:principalEmail,pCode:pCode},
    			cache:false,
    			success:function(response){
    				if(response=="Y"){
    					flag=false;
    				}
    				else
    					{
    					flag=true;
    					}
    				
    			}
    		});
    	}
    	}
    	return flag;
    	
    }
	function backButtonSubmit(tempSchoolId){
		window.location.href = "<%=request.getContextPath()%>/signup-step1?id="+tempSchoolId+"";
	}
</script>


</body>
</html>