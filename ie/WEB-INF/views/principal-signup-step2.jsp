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
                	<form:form action="saveSchoolTemp" id="saveSchool" modelAttribute="dtoSchool" enctype="multipart/form-data" method="post">
                    	<div class="small-containor">
                    		<div class="new-started-grey">
                        	<div class="new-started-img">
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/started-step20.png">
                            </div>
                            <div class="new-started-head">
                            	<h3>ADMINISTRATOR SIGNUP</h3>
                                <p>As a School Administrator, I am interested in rolling-out Mindful Awareness Program</p>
                            </div>
                        </div>
                        </div>
                        <div class="get-start-new-form">
                        	<div class="getstartForm_teacher">
                	<label class="start-new-label">School Information</label>
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input name="name" type="text" placeholder="School Name" value="${dtoSchool.name}">
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input name="address" type="text" placeholder="School Address" value="${dtoSchool.address}">
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input name="state" type="text" placeholder="State" value="${dtoSchool.state}">
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input name="zipCode" type="text" placeholder="Zip Code" value="${dtoSchool.zipCode}">
									</div>
								</div>
							</div>
						</li>
                        <li>
                        <input name="latitude1" type="hidden" name="latitude" value="${dtoSchool.latitude1}">
                        <input name="longitude1" type="hidden" name="longitude" value="${dtoSchool.longitude1}">
            			<div class="input_relative">
            			<div class="input_relative">
            			<div class="input_add_logo">
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
									<input type="text" id="disableImagePath" disabled placeholder="Add Logo"/>
										<!-- <input type="password" placeholder="Add School Logo"> -->
										<div class="photoIcon"><div class="cam_upload"><input required="required" name="image" type="file" accept="image/*" id="imagePath" onchange="copyImageName();"/></div></div>
									</div>
								</div>
                
							</div>
              			</div>
              <!-- <div class="upload_cam"><input type="file"></div> -->
              </div>
						</div>
            </li>
            <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="sign_txt">
										 <select name="schoolType" class="select-dept">
											<option value="">Type of School</option>
											<option value="1">Kindergarten</option>
											<option value="2">Elementary</option>
										 </select>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
                        </div>
                        <div class="back-next-btn">
                        	<ul>
                            	<li><a href="javascript:;">Back</a></li>
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
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript">	
jQuery(document).ready
	(function($){
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
	
</script>


</body>
</html>