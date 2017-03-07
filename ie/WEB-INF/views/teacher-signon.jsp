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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
</head>
<body>
<div class="wrapper">
<%@include file="header.jsp" %> 
    <!--inner_wrapper starts-->
    <div class="inner_wrapper">
     <!--about_us starts-->
     <div class="sign-on">
     <div class="content_inner">
     <div class="signon_title_hdr">
     <h2>Start Inner Explorer Experience</h2>
     <div class="white_line_btm"></div>
     </div>
     <div class="signon-head">
     	<h3>Bringing peace to the world through mindful awareness one classroom at a time</h3>
     </div>
     <div class="form-mainfull">
     <div class="signon-form">
     	<div class="signon-main">
     	<form:form id="signupForm" name="signupForm" action="teacherSignup" modelAttribute="dtoTeacherSignOn" method="POST">
        	<div class="signon-up full-width">
            		<label>Start your Experience <a href="javascript:;" data-toggle="tooltip" title="Fill out a simple form to start Inner Explorer today."><img src="<%=request.getContextPath()%>/NewStyles/images/qus.png"></a>
            		</label>
            </div>
            <div class="signon-up">
                <div class="sign-on-2"><div class="outer-field-signon">
					<form:input path="name"  type="text" placeholder="Name"/>
				</div></div>
            </div>
            <div class="signon-up">
                <div class="sign-on-2"><div class="outer-field-signon">
					<form:input path="email"  type="text" placeholder="Email Address"/>
				</div></div>
            </div>
            <div class="signon-up">
                <div class="sign-on-2"><div class="outer-field-signon">
					<form:input path="password"  type="password" placeholder="Password" id="password"/>
				</div></div>
            </div>
            <div class="signon-up">
                <div class="sign-on-2"><div class="outer-field-signon">
					<input type="password" name="confirmPassword"  id ="confirmPassword" placeholder="Confirm Password"/>
				</div></div>
            </div>
            <div class="signon-up">
                <input type="submit" class="blueBtn" onclick="" value="Launch Program">
            </div>
            </form:form>
        </div>
     </div>
     </div>
     </div>
     </div>
     <!--about_us ends-->
    </div>
    <!--inner_wrapper ends-->
</div>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script> 
<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrapcdn.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script> 
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script> 
<script	src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"	type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript">	
jQuery(document).ready
	(function($){
		$("#header").sticky({ topSpacing: 0 });
		 $("#login").click(function(e) {
		        $(".login_panel").toggle();
		        e.stopPropagation();
		    });
		    $(document).click(function(e) {
		        if (!$(e.target).is('.login_panel, .login_panel *')) {
		            $(".login_panel").hide();
		        }
		    });
		 $('[data-toggle="tooltip"]').tooltip();
		$.daisyNav();
		$.validator.addMethod("emailAlreadyExist", function(value, element) {
            return this.optional(element) || emailAlreadyCheck(value);
        }, "Email already exists. Click Here to <a href='<%=request.getContextPath()%>/login'> Login");
		$('#signupForm').validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            //ignore: "",
            rules: {
                email: {
                    required: true,
                    email: true,
                    emailAlreadyExist: true
                },
                name: {
                    required: true,
                    maxlength : 20
                },
                password: {
                    required: true,
            		minlength : 6,
            		maxlength : 20
                },
                confirmPassword: {
                    equalTo: "#password"
                }
            },


            invalidHandler: function(event, validator) { //display error alert on form submit   
            },

            highlight: function(element) { // hightlight error inputs
                $(element)
                    .closest('.outer-field-signon').addClass('has-error'); // set error class to the control group
            },
            
            success: function(label) {
                label.closest('.outer-field-signon').removeClass('has-error');
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
	 function emailAlreadyCheck(value){
			//var email = $("#email").val().trim();
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
<script type="text/javascript">
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
function getProgId(progId){
	$("#progId").val(progId);
	 $.each($('[id^=overlay_]'),function(i,ele){
			$(ele).removeClass('overlay_setup_signon_active');
		});
	 $('#overlay_'+progId).addClass("overlay_setup_signon_active");
}	
</script>
</body>
</html>
	