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
<title>Participate Now</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
</head>

<body>
<div class="wrapper">
    <%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        
        <!--about_us starts-->
        <div class="about_us">
            <div class="content_inner">
                <div class="pracProgress_hdr">
                    <h2>Participate Now</h2>
                    <div class="green_line_btm"></div>
                </div>
                
                <div class="act_detail_img">
                <img src="<%=request.getContextPath()%>/NewStyles/images/parcitpt.jpg"  alt=""/> 
                </div>
               	
                <div class="act-cntnt">
                	<div class="par-cntnt-up">
                    	<p>Mission Statement
						</p>
                    </div>
                    <div class="par-cntnt-cntr">
                    	<p>To provide programs and tools, for children and their families worldwide, that inspire a daily mindful awareness practice. This practice will help lead them towards their highest potential by bolstering academic performance, creativity, social & emotional aptitude and wellbeing.</p>
                    </div>
                </div> 
                
                <div class="participate-form">
                	<div class="containerSmall">
                	
                	<form:form method="post" modelAttribute="dtoUser" enctype="multipart/form-data" action="saveVolunteer" id="saveVolunteerForm">
                
                <div class="getstartForm">
					<label>Basic Information</label>
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="firstName" type="text" placeholder="First Name" />
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="lastName" type="text" placeholder="Last Name" />
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="email" type="text" placeholder="Email" />
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Mobile Number" />
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="getstartForm">
					<label>School that is Favorite</label>
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field_sel">
										<form:select path="affiliationType">
                                        	<option>Affiliation to this School as</option>
                                        	<option>Alumni</option>
                                           	<option>Parent</option>
                                            <option>Teacher</option>
                                        </form:select>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="activityInterest" type="text" placeholder="What type of volunteer activities interested in" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="schoolName" type="text" placeholder="Favorite School Name " />
									</div>
								</div>
							</div>
						</li>
                         <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="city" type="text" placeholder="City" />
									</div>
								</div>
							</div>
						</li>
                         <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="state" type="text" placeholder="State" />
									</div>
								</div>
							</div>
						</li>
                         <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="zipCode" type="text" placeholder="Zipcode" />
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
                	<!-- <div class="i-agree">
						<p><input type="checkbox">I agree to EULA</p>
					</div> -->
                <div class="btns-outer mtop10">
					<input type="submit" value="submit" class="submit-btn fl" />
				</div>
                </form:form>
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
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript">
$(document).ready(function() { 
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
	  $.validator.addMethod("nameRegex", function(value, element) {
          return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
      }, "Field must contain letters only.");
      
      $('#saveVolunteerForm').validate({
          errorElement: 'span', //default input error message container
          errorClass: 'help-block', // default input error message class
          focusInvalid: false, // do not focus the last invalid input
          ignore: "",
          rules: {

       	email:{
          		required: true,
          		email:true
          	},
          	
       	firstName:{
       		 required: true,
             maxlength : 20
          	},
       	lastName:{
       		required: true,
       		 maxlength : 20
          	}
       	/* address:{
       		required: true,
            maxlength :100
          	} */
        
       /* 	check:{
      		required:true
      		
      		  } */
          
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
	
	</script>

</body>
</html>

