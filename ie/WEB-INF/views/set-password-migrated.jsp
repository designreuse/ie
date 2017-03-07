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
<title>Inner Explorer </title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
</head>

<body>
	<div class="wrapper">
		<%@include file="header.jsp" %>
		<section class="makeDonateSct">
			<div class="container">
         <div class="pracProgress_hdr">
            <h2>Welcome to New Beta Platform</h2>
            <div class="green_line_btm"></div>
                <div class="daily_msg">
		               	<h3><span><img src="<%=request.getContextPath()%>/NewStyles/images/msg-icon.png"></span>Message of the Day<div class="clr"></div></h3>
		                <p>We invite you to start using the new beta platform. We value your input in making the new platform simpler and useful for daily use. By moving to Compass, as a token of our appreciation, we will provide a LIFETIME subscription to Inner Explorer for all existing teachers. In order to qualify for this offer, you must complete the migration process by April 30, 2016.</p>
		           </div>
            </div>
				<div class="clr"></div>
                	<div class="prac-prog-con">
                					<div class="Login-wrap">
					<div class="reset-inner width700">
					<form class="forget-form" action="<%=request.getContextPath()%>/reset-password-migrated" method="post">
					<input name="userId" type="hidden" value="${user.userId}">
						<div class="new-platform-outer">
						<div class="new-platform-round">
							Step 1
						</div>
						<div class="getstartForm new-platform-form" > 
							<label>Reset Password</label>
							<ul >
							<li>
								<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="password" placeholder="Password" name="password" id="password">
									</div>
								</div>
								</div>
								</li>
								<li>
									<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="password" placeholder="Confirm Password" name="confirmpassword" id="confirmPassword">
										</div>
									</div>
									</div>
								</li>
							</ul>
						</div>
						</div>
						<c:if test="${user.roleMaster.roleMasterId eq 2}">
						<div class="new-platform-outer">
						<div class="new-platform-round">
							Step 2
						</div>
						<div class="getstartForm new-platform-form mtop30 ">
								<label>Reset your practice track</label>
							<ul>
							<li>
								<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field  width50prcnt">
										<input type="number" id="progressCount" value="1" placeholder="Set Progress" name="progress" maxlength="3">
										
									</div>
									<a onclick="submitProgress();" class="submit-btn fr">Start from the Beginning</a>
								</div>
							</div>
							</li>
							</ul>
						</div>
						<select id="classId" name="classId" style="display:none;"></select>
						<input type="hidden" readonly="readonly" id="email" name="email" />
						</div>
						</c:if>
						
						<div class="loginTop mtop20">
							<input type="submit" class="submit-btn" value="CONTINUE">
						</div>
						</form>
					</div>
				</div>
                    </div>
                </div>
			</div>
		</section>
	</div>
	<div id="teacherProgressBox" style="display:none">
		<form action="" id="teacherProgressForm">
			<label></label> <label></label> <input type="button" title="Save"
				value="Save" onclick="submitProgress();" class="startBtn" />
		</form>
	</div>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script type="text/javascript">	
function setTeacherProgress(){
	$("#email").val('${user.email}');
		var options = '';
		var url='<%=request.getContextPath()%>/superadmin/getTeacherProgress/${user.userId}';
		$.ajax({
			url:url,
			method:'GET',
			async :false,
			cache:false,
			success:function(response){
				$.each(response,function(key,value){
					if(typeof value.progressCount === "undefined"){
						options += '<option id="0" value="'+key+'">'+value.className+'</option>';
					}
					else
					{
						options += '<option id="'+value.progressCount+'" value="'+key+'">'+value.className+'</option>';
					}
				});
				$("#classId").html(options);
				$("#classId").trigger("change");
				}
		});
	}
	function submitProgress(){
		$("#progressCount").val(1);
	}
	jQuery(document).ready
	(function($){
		$.daisyNav();
		$('.forget-form').validate({
	        errorElement: 'span', //default input error message container
	        errorClass: 'help-block', // default input error message class
	        focusInvalid: false, // do not focus the last invalid input
	        ignore: "",
	        rules: {
	        	 password: {
	                required: true,
	         		minlength : 6,
	         		maxlength : 20
	             },
	             confirmpassword: {
	                 equalTo: "#password"
	             }
	        },

	        invalidHandler: function(event, validator) { //display error alert on form submit   
	        },

	        highlight: function(element) { // hightlight error inputs
	            $(element)
	                .closest('.outer-field').addClass('has-error'); // set error class to the control group
	            $(element)
	                .closest('.fullrow').addClass('has-error'); // set error class to the control group
	        },

	        success: function(label) {
	            label.closest('.outer-field').removeClass('has-error');
	            label.remove();
	        },

	        errorPlacement: function(error, element) {
	            if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
	                error.insertAfter($('#register_tnc_error'));
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
		setTeacherProgress();
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
</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
  <script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
    });
  </script>
</body>
</html>
