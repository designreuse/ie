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

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport"/>
<meta content="" name="description"/>
<meta content="" name="author"/>

<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Campaign</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
</head>

<body>
	<div class="wrapper">
		<%@include file="header.jsp" %>
		<section class="slider-inner">
			<img src="<%=request.getContextPath()%>/NewStyles/images/browse-donation-header.jpg" alt="Slider" />
		</section>

		<section class="makeDonateSct mtop-5">
			<div class="containerSmall">
				
				
				<form:form role="form" action="saveCampaign" enctype="multipart/form-data" class="register-form" modelAttribute="dtoCampaign" method="post">
				<h2>Create Campaign </h2>
				<div class="bluetehDsh"></div>
				<p class="make-para">Please fill out out the form below to add a Campaign Details</p>
				<div class="clr"></div>
				
				<div class="getstartForm">
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input  type="text" path="title" placeholder="Enter Heading" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="getstart-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" id="disableImagePath" disabled placeholder="Add Picture" />
									</div>
								</div>
							</div>
							<div class="photoIcon"><div class="cam_upload"><form:input required="required" path="image" type="file" id="imagePath" onchange="copyImageName();"/></div></div>
						</li>
						
						<%-- <li>
							<div class="getstart-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Add Video" />
									</div>
								</div>
							</div>
							<div class="videoIcon"><a href="#" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/icon10.png" alt="Image" /></a></div>
						</li> --%>
						<li>
							<div class="getstart-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" disabled placeholder="Add Video" />
									</div>
								</div>
							</div>
							<div class="videoIcon"><div class="video_upload"><input type="file" /></div></div>
						</li>
					</ul>
					
					<div class="AreaContact">
						<form:textarea path="description" placeholder="Enter Description" required="required"></form:textarea>
					</div>
				</div>
				
				<div class="btns-outer mtop10">
					<input type="submit" value="PUBLISH CAMPAIGN" class="submit-btn fl" />
				</div>
				
				</form:form>
				
				
				
				
				
			</div>
		</section>
	</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %>
  <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
   <script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$.daisyNav();
	});
	</script>
	
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
   <script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>

   <script type="text/javascript">
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
   $(document).ready(function() {     
   	//ComponentsPickers.init();

                   $.validator.addMethod("nameRegex", function(value, element) {
                       return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
                   }, "Field must contain letters only.");
                   
                   $('.register-form').validate({
                       errorElement: 'span', //default input error message container
                       errorClass: 'help-block', // default input error message class
                       focusInvalid: false, // do not focus the last invalid input
                       ignore: "",
                       rules: {
                    	   title:{
                       		required: true,
                       		minlength : 3,
                       		maxlength : 40
                       	},
                       	image:{
                       		required: true,
                       	},
                       	description:{
                       		required: true,
                       		maxlength : 450
                       	}
                       },


                       invalidHandler: function(event, validator) { //display error alert on form submit   
                       },

                       highlight: function(element) { // hightlight error inputs
                           $(element)
                               .closest('.outer-field').addClass('has-error'); // set error class to the control group
                           $(element)
                               .closest('.AreaContact').addClass('has-error'); // set error class to the control group
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

   });
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

</body>
</html>
