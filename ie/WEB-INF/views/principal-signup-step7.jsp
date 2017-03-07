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
                	<form:form action="addPilotTeacherForm" modelAttribute="dtoUser" id="addPilotTeacherForm" method="post">
                	<input type="hidden" value="${schoolDetailTemp.schoolId}" name="schoolId">
                	<input type="hidden" value="${schoolDetailTempProg}" name="programIds">
                	<input type="hidden" id="submitType" name="submitType">
                	<input type="hidden" value="Pilot Class" name="className">
                    	<div class="small-containor">
                    		<div class="new-started-grey">
                        	<div class="new-started-img">
                        	<c:if test="${schoolDetailTemp.promoCode != 'IEHOME2016'}">
                        	<%-- <img src="<%=request.getContextPath()%>/NewStyles/images/started-step100.png"> --%>
                        	</c:if>
                        	<c:if test="${schoolDetailTemp.promoCode == 'IEHOME2016'}">
                        	<%-- <img src="<%=request.getContextPath()%>/NewStyles/images/started-step4-100.png"> --%>
                        	</c:if>
                            </div>
                            <div class="new-started-head">
                            	<h3>ADMINISTRATOR SIGNUP</h3>
                                <p>Setup Teacher Accounts Here</p>
                            </div>
                        </div>
                        </div>
                        <div class="get-start-new-form">
                        	<div class="getstartForm_teacher">
                	<label class="start-new-label">Contact Information</label>
                	<div class="buttonDivCenter table-head-btns">
	                	<input type="button" value="Want to create an account for yourself" id="pilotButton" onclick="pilotDiv();">
	                	<input type="button" value="Add multiple classes" id="enterClassBtn" onclick="addClassDive();">
                	</div>
                	<div id="pilotDiv">
                    <p class="grey-form-up">Start using the system with IE for teacher credentials</p>
					<ul class="new-start-form">
						<li>
                        	<label class="grey-inner-label">Username</label>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" name="teacherEmail" placeholder="Teacher Email">
									</div>
								</div>
							</div>
						</li>  
                        <li>
                        	<label class="grey-inner-label">Password</label>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" name="password" placeholder="Teacher Password">
									</div>
								</div>
							</div>
						</li>                      
					</ul>
					<div class="getstartForm_captcha" >
				<ul><li>
							<div class="contact-row">
								<span id="capCode" class="captcha-txt noselect">${captchaCode}</span><a class="refresh-captcha" title="Generate new text" onclick="updateCode();"> </a>
								<div class="outer-field-wrap">
									
									<div class="outer-field">
										<input type="text" placeholder="Type same text" name="cCode" id="cCode"/>
									</div>
								</div>
							</div>
						</li>
						
					</ul>
				</div>
					</div>
                    <!-- <p class="grey-form-or">Or</p> -->
                    <div style="display: none;" id="addClassDive">
                    <%-- <p class="grey-form-down"><a id="hereText" onclick="showAddMoreClassCount(this.text);" style="text-decoration: underline;"> </a> <span id="enterRemoveText"></span> number of classes to <span id="addRem"></span> teachers</p> --%>
                    <p class="grey-form-up">Enter number of classes you want to add</p>
                    <ul class="new-start-form" id="addMoreClassOption">
						<li>
                        	<label class="grey-inner-label">Number of Classes</label>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" name="classCount" id="classCount" placeholder="Add class count which you want to add">
									</div>
								</div>
							</div>
						</li>  
                                              
					</ul>
					</div>
				</div>
                        </div>
                        <div class="back-next-btn">
                        	<ul>
                            	<li><a onclick="backButtonSubmit(${schoolDetailTemp.schoolId})">Back</a></li>
                                <li><a href="javascript:;" id="doneOption" onclick="nextOrDone(this.text);">Done</a></li>
                            </ul>
                        </div>
                        
                        <input type="hidden" id="isPilot" name="isPilot">
                        
                        </form:form>
                    </div>
                </div>
            </div>
        </section>
	</div>
	<form action="savePaymentTypeTemp" id="savePaymentTypeTemp"
		method="post">
		<input type="text" name="id" id="id">
	</form>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
<script	src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"	type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
<script type="text/javascript">	
jQuery(document).ready
	(function($){
		$("#header").sticky({ topSpacing: 0 });
		$.daisyNav();
		$("#pilotButton").addClass("table-head-btns-slctd");
			$("#isPilot").val("1");
		$("#login").click(function(e) {
	        $(".login_panel").toggle();
	        e.stopPropagation();
	    });
		$.validator.addMethod('minStrict', function (value, el, param) {
		    return value >= param;
		}, "Number should be greater than zero.");
		
		$.validator.addMethod("cCodeValid", function(value, element) {
            return this.optional(element) || cCodeValid(value);
        }, "Please re-enter given text");
		$.validator.addMethod("emailAlreadyExist", function(value, element) {
            return this.optional(element) || emailAlreadyCheck(value);
        }, "Email already exists. Click Here to <a href='<%=request.getContextPath()%>/login'> Login");
		
		$('#addPilotTeacherForm').validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            //ignore: "",
            rules: {
            	classCount: {
                    required: true,
                    number: true,
                    minStrict: 1,
                    maxlength : 2
                },
                password: {
                    /* required: true, */
            		minlength : 6,
            		maxlength : 20
                },
                teacherEmail:{
                	/* required: true, */
                    email: true
                    //emailAlreadyExist: true
                },
                cCode:{
             		required:true,
             		cCodeValid: true
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
<script type="text/javascript">
    /* $(function(){
      SyntaxHighlighter.all();
    }); */
	
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
    	$("#classCount").val("");
		   $("#doneOption").text("Done");
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
});
   function showAddMoreClassCount(text){
	   if(text == "Enter"){
		   $("#hereText").text("Remove")
		   $("#addMoreClassOption").show();
		   $("#doneOption").text("Next");
		   $("#addRem").text("remove");
	   }
	   else{
		   $("#hereText").text("Enter");
		   $("#addMoreClassOption").hide();
		   $("#doneOption").text("Done");
		   $("#addRem").text("add");
		   $("#classCount").val("");
	   }
	   
   }
   function nextOrDone(val){
	   if(val=="Next"){
		   $("#submitType").val(val);
	  $("#classCount").validate();
		   $("#addPilotTeacherForm").submit();
	    }
	   else{ 
		    $("#submitType").val(val);
		    $("#classCount").val(0);
		   $("#addPilotTeacherForm").submit(); 
	    } 
   }
   
   function backButtonSubmit(tempSchoolId){
   	$("#id").val(tempSchoolId);
   	$("#savePaymentTypeTemp").submit();
   	
	}
   
   function pilotDiv(){
	   
	   $("#pilotButton").addClass("table-head-btns-slctd");
		$("#enterClassBtn").removeClass("table-head-btns-slctd");
	   
	   $("#isPilot").val("1");
	   $("#doneOption").text("Done");
	   $("#pilotDiv").show();
	   $("#addClassDive").hide();
   }
   function addClassDive(){
	   $("#pilotButton").removeClass("table-head-btns-slctd");
		$("#enterClassBtn").addClass("table-head-btns-slctd");
		
	   $("#isPilot").val("0");
	   $("#doneOption").text("Next");
	   $("#pilotDiv").hide();
	   $("#addClassDive").show();
   }
   function cCodeValid(){
   	var cCode = $("#cCode").val();
       		var url='<%=request.getContextPath()%>/checkCaptchaCodeParent';
       		$.ajax({
       			url:url,
       			method:'POST',
       			async :false,
       			data:{cCode:cCode},
       			cache:false,
       			success:function(response){
       				if(response=="Y"){
       					flag=true;
       				}
       				else
       					{
       					flag=false;
       					}
       			}
       		});
       	return flag;
       	
       }
   	function updateCode(){
   		var url='<%=request.getContextPath()%>/getUpdatedCaptcha';
   		$.ajax({
   			url:url,
   			method:'GET',
   			async :false,
   			cache:false,
   			success:function(response){
   				$("#capCode").text(response);
   			}
   		});
   	}
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
</script>

</body>
</html>