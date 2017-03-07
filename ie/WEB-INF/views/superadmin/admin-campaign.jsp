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
<title>Campaign</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>

<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery-ui.css">
<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"> -->
</head>

<body>
<div class="wrapper">
    <%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        
        <!--inner_header starts-->
        
        <!--about_us starts-->
        <div class="about_us">
            <div class="content_inner">
                <div class="pracProgress_hdr">
                    <h2>Campaign</h2>
                    <div class="green_line_btm"></div>
                    
                    
                    <div class="clr"></div>
                    
                </div>
                
                <!--school campaign start-->
                <div class="school_campaign">
                    
                    
                    
                    <form:form role="form" action="saveCampaign" enctype="multipart/form-data" class="register-form" modelAttribute="dtoCampaign" method="post">
                    
                    <div class="make_schol_contrb">
                    
                    <input type="button" value="Start a new Targeted Campaign" class="submit-btn fr mrg_btm15" onclick="location.href='<%=request.getContextPath()%>/superadmin/targetedCampaign';">
                    
                        <div class="techForm">
                            <label class="width-auto">Target ($)</label>
                            <div class="msc_inputbox">
                                <div class="contact-row">
                                    <div class="outer-field-wrap">
                                        <div class="outer-field">
                                            <form:input type="text" path="amount" placeholder="$" id="amount" name="amount" value="${campaignAdmin.amount}"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tar_container">
                        <div class="tar_wrapper">
                        
                        </div>
                    </div>
                    <div class="containerSmall">
                        <div class="add_details">
                            
                            <div class="getstartForm">
                                <label>Add Details</label>
                                <ul>
                                    <li>
                                        <div class="contact-row">
                                            <div class="outer-field-wrap">
                                                <div class="outer-field">
                                                    <form:input path="title" type="text" placeholder="Enter Heading" value="${campaignAdmin.title}"/>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    
                                    <li>
										<div class="getstart-row">
											<div class="outer-field-wrap">
												<div class="outer-field">
													<input type="text" id="disableImagePath" readonly="readonly" name="abc" placeholder="Add Picture" value="${campaignAdmin.imageName}"/>
												</div>
											</div>
										</div>
										<div class="photoIcon"><div class="cam_upload"><form:input accept="image/*" path="image" type="file" id="imagePath" onchange="copyImageName();"/></div></div>
									</li>
                                    <li>
                                        <div class="contact-row">
                                            <div class="outer-field-wrap">
                                                <div class="outer-field">
                                                    <form:input path="startDate" type="text" readonly="readonly" id="startDatepicker" placeholder="Start Date" value="${campaignAdmin.startDate}"/>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="contact-row">
                                            <div class="outer-field-wrap">
                                                <div class="outer-field">
                                                    <form:input path="endDate" type="text" readonly="readonly" id="endDatepicker" placeholder="End Date" value="${campaignAdmin.endDate}"/>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                    </li>
                                    <li class="fullrow">
                                        <div class="contact-row">
                                            <form:textarea id="campaignDesc" path="description" placeholder="Enter Description"></form:textarea>
                                        </div>
                                    </li>
                                </ul>
                                <div class="clr"></div>
                                <form:input path="campaignId" type="hidden" id="campaignId" value="${campaignAdmin.campaignId}"/>
                                <input type="submit" class="submit-btn mrgtp25" value="PUBLISH CAMPAIGN">
                            </div>
                            
                        </div>
                        
                        
                    </div>
                    
                    
                    </form:form>
                    
                    
                    
                </div>
                <!--school campaign end--> 
            </div>
        </div>
        <!--about_us ends--> 
        
        <!--inner_header ends--> 
        
    </div>
    <!--inner_wrapper ends--> 
</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>

<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery-ui.js"></script>
<%-- <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script> --%>
<script type="text/javascript">
/* $(function() {
	var desc = '${campaignAdmin.description}';
	$("#campaignDesc").val(desc);
    $( "#startDatepicker" ).datepicker({
        defaultDate: "+1w",
        changeMonth: true,
        numberOfMonths: 3,
        onClose: function( selectedDate ) {
          $( "#endDatepicker" ).datepicker( "option", "minDate", selectedDate );
        }
      });
      $( "#endDatepicker" ).datepicker({
        defaultDate: "+1w",
        changeMonth: true,
        numberOfMonths: 3,
        onClose: function( selectedDate ) {
          $( "#startDatepicker" ).datepicker( "option", "maxDate", selectedDate );
        }
      });
  }); */
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
	   
	   var desc = "${campaignAdmin.description}";
		$("#campaignDesc").val(desc);
	    $( "#startDatepicker" ).datepicker({
	        defaultDate: "+1w",
	        changeMonth: true,
	        numberOfMonths: 3,
	        onClose: function( selectedDate ) {
	          $( "#endDatepicker" ).datepicker( "option", "minDate", selectedDate );
	        }
	      });
	      $( "#endDatepicker" ).datepicker({
	        defaultDate: "+1w",
	        changeMonth: true,
	        numberOfMonths: 3,
	        onClose: function( selectedDate ) {
	          $( "#startDatepicker" ).datepicker( "option", "maxDate", selectedDate );
	        }
	      });

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
                       	abc:{
                       		required: true,
                       	},
                       	description:{
                       		required: true
                       		/* maxlength : 450 */
                       	},
                       	startDate:{
                       		required: true,
                       	},
                       	amount:{
                       		required: true,
                       	},
                       	endDate:{
                       		required: true,
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
                    	   var schoolContribution = $("#schoolContribution").val();
                    	   var minContri = parseInt("${minContri}");
                    	   if(schoolContribution<minContri){
                    		   alert("To create campaign please contribute minimum $"+minContri+" from your side.");
                    	   }else{
                          	 form.submit();
                    	   }
                       }
                   });

   });
   
	
	
</script> 


</body>
</html>
