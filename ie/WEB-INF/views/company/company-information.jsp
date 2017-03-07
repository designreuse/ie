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
<title>Onboarding</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css"	id="style_components" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
	<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
		<%-- <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/select2/select2_metro.css" /> --%>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
	
	<style type="text/css">
	
	input[type="search"]
{
border: 1px solid #ccc;
    padding: 2px 5px;
    border-radius: 3px;
}
	
	</style>
	
</head>

<body>
	<div class="wrapper">
		<%@include file="../header.jsp"%>

		<section class="makeDonateSct">
			<div class="containerSmall">
				<div class="pracProgress_hdr">
					<h2>Onboarding</h2>
					<div class="green_line_btm"></div>
				</div>
			</div>
		</section>
		<section class="get-started-new-sec">
			<div class="container">
				<div class="new-started-step">
					<div class="containerSmall">
					
					<form:form action="saveCompanyInfo" modelAttribute="dtoCompanyInfo" id="companyForm" method="POST" enctype="multipart/form-data">
						<div class="small-containor">
						</div>
						<div class="get-start-new-form">
							<div class="getstartForm_teacher">
								<ul>
									<li>
										<div class="contact-row">
											<div class="outer-field-wrap">
												<div class="outer-field">
													<form:input type="text" path="companyName" id="organisationName" placeholder="Organisaton Name"  />
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="contact-row">
											<div class="outer-field-wrap">
												<div class="outer-field">
													<form:input type="text" path="companyUrl" id="organisationUrl" placeholder="Organisation URL" />
												</div>
											</div>
										</div>
									</li>
									
									<li>
										<div class="contact-row">
											<div class="outer-field-wrap">
												<div class="outer-field">
													<form:input type="text" path="contactName" id="contactName" placeholder="Contact Name" />
												</div>
											</div>
										</div>
									</li>
									
									<li>
										<div class="contact-row">
											<div class="outer-field-wrap">
												<div class="outer-field">
													<form:input type="text" path="email" id="email" placeholder="Email" />
												</div>
											</div>
										</div>
									</li>
									
									<li>
										<div class="contact-row">
											<div class="outer-field-wrap">
												<div class="outer-field">
													<span ><a href="<%=request.getContextPath()%>/NewStyles/template/upload-company-data.xlsx" name="tempDownload" id="tempDownload"  title="template" style="color:green;" download>Download Sample Excel</a></span>
												</div>
											</div>
										</div>
									</li>



										<li id="newSchoolLogo">
											<div class="getstart-row">
												<div class="outer-field-wrap">
													<div class="outer-field">
														<input type="text" id="disableImagePath" disabled
															placeholder="Attach Spreadsheet" />
													</div>
												</div>
											</div>
											<div class="photoIcon">
												<div class="cam_upload">
													<form:input path="uploadedFile"
														type="file" accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" id="imagePath"
														onchange="copyImageName();" />
												</div>
											</div>
										</li>


									</ul>
							</div>
						</div>
						<div >
							<ul>
								<li style="float: left;"><input type="submit" title="SUBMIT" class="startBtn" value="SUBMIT"></li>
							</ul>
						</div>
						</form:form>
						
					</div>
				</div>
			</div>
		</section>


	</div>

<!-- fancybox start -->
<div id="view_contact_detail" style="display: none; width: 700px;">
    <h3 id="popup-header"></h3>
            <div class="product-page product-pop-up">
              <!-- <div class="row"> -->
                <!-- <div class="col-md-6 col-sm-6 col-xs-9"> -->
                  
                    <div class="popup_school_details_main">
                    	<div class="popup_school_details_img" title="School logo">
                    	
                    	 	
              			  		<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt="" id="logoImage"/>
               				
                    	
                    	</div>
                    	<div class="popup_school_details">
                    <div class="form-group pop-margin-left width100 fl">
                      <label class="col-lg-4 control-label pt-0 width130">First Name: </label>
                      <div class="col-lg-4">
                        <input id="fname" class="popup_input" disabled="disabled"/>
                      </div>
                    </div>
                    <div class="form-group pop-margin-left width100 fl">
                      <label class="col-lg-4 control-label pt-0 width130">Last Name: </label>
                      <div class="col-lg-4">
                        <input id="lname" class="popup_input" disabled="disabled"/>
                      </div>
                    </div>
                    <div class="form-group pop-margin-left width100 fl">
                      <label class="col-lg-4 control-label width130">Principal Email: </label>
                      <div>
                      <div id="emailDropDown"> 
                      
                      </div>
                     
                        <!-- <label id="email"></label> -->
                      </div>
                    </div>
                    <div class="form-group pop-margin-left width100 fl">
                      <label class="col-lg-4 control-label pt-0 width130">Mobile: </label>
                      <div class="col-lg-4">
                        <input id="mobile" class="popup_input" disabled="disabled"/>
                      </div>
                    </div>
                    
                    <div class="form-group pop-margin-left width100 fl">
                      <label class="col-lg-4 control-label pt-0 width130">Joined Since: </label>
                      <div class="col-lg-4">
                        <input id="joiningDate" class="popup_input" disabled="disabled"/>
                      </div>
                    </div>
                   
			            
			        </div>
			         </div>
                    <%-- <div class="ur_grid ur_grid_pop">
			            	
			            	 
			            	
			        <table class="table table-striped table-bordered table-hover"  id="sample_1">
			         <thead>
			        	<tr>
			        			<th><strong>Teacher Name</strong></th>
			        			<th><strong>Email</strong></th>
								<th><strong>Action</strong></th>
								<th style="display:none;"></th><th style="display:none;"></th>
								</tr></thead>
								<tbody></tbody> 
					</table>
			
			        
			        </div> --%>
                 
                  
                  
                  

                <!-- <div id="accountTypeId" class="sticker"></div> -->
             <!--  </div> -->
            </div>
    </div> 
    <input type="hidden" id="principalUserId">
    
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
	<script	src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"	type="text/javascript"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
	<script type="text/javascript">	
	
	jQuery(document).ready
	(function($){
		$("#login").click(function(e) {
	        $(".login_panel").toggle();
	        e.stopPropagation();
	    });
		
		$("#header").sticky({ topSpacing: 0 });
		
		$.daisyNav();
		
		
		$('#companyForm').validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            //ignore: "",
            rules: {
                companyName: {
                	required: true,
                    maxlength :100
                },
                companyUrl: {
                	required: true,
                    maxlength :100
                },
                contactName: {
                	required: true,
                    maxlength :100
                },
                email: {
                	required: true,
                    maxlength :100
                },
                uploadedFile:{
                	required: true
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

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
	
	<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery-ui.min.js"></script>
	

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
		
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
});


	/* For getting Lat & Long of Address */
    
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