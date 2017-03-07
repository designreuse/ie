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
<title>Class Campaign</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>

<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"> -->

<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery-ui.css">
</head>

<body>
<div class="wrapper">
<input type="hidden" id="hiddenClassId">
   <%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        
        <!--inner_header starts-->
        <%-- <div class="inner_header"> <img src="<%=request.getContextPath()%>/NewStyles/images/browse-donation-header.jpg"  alt=""/> </div> --%>
        
        <!--about_us starts-->
        <div class="about_us">
            <div class="content_inner">
                <div class="pracProgress_hdr">
                    <h2>Class Campaign</h2>
                    <div class="green_line_btm"></div>
                </div>
                
                <div class="containerSmall">
                <div class="select_classes">
                <h5>Select Class</h5>
                
                <ul>
                <c:forEach var="schoolClasses" items="${schoolClasses}">
                <li><a onclick="addClass(${schoolClasses.classId});" id="showClass${schoolClasses.classId}">class <span>${schoolClasses.schoolClassName}</span></a></li>
                <input type="hidden" id="totalClassAmountHidden_${schoolClasses.classId}" value="${schoolClasses.schoolClassAmount}"/>
                </c:forEach>
                <%-- <li><a href="">class <span>LKG - B</span></a></li>
                <li><a href="">class <span>LKG - C</span></a></li>
                <li><a href="">class <span>LKG - D</span></a></li> --%>
                </ul>
                </div>
                </div>
                
                <!--school campaign start-->
                <div class="school_campaign">
                
               
                
				<div class="make_schol_contrb">
                        <div class="techForm">
                            <label>Make School Contribution</label>
                            <div class="msc_inputbox">
                                <div class="contact-row">
                                    <div class="outer-field-wrap">
                                        <div class="outer-field">
                                            <input  type="number" placeholder="$" id="amount" min="0">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="button" onclick="addContribution();" value="Contribute" class="startBtn fl orange_contrbte"/>
                        </div>
                    </div>
                    <div class="tar_container">
                        <div class="tar_wrapper">
                            <%-- <p><span id="totalClassAmount"></span></p> --%>
                            
                            <div class="tar_container">
		                        <div class="tar_wrapper_camp">
		                            <div class="des_dtl">
		                            	<ul>
		                                	<li><img src="<%=request.getContextPath()%>/NewStyles/images/des-1.png"></li>
		                                    <%-- <li><img src="<%=request.getContextPath()%>/NewStyles/images/des-4.png"></li> --%>
		                                </ul>
		                            </div>
		                            <div class="range_wrpr">
		                        <div class="progress" style="border: 5px solid #dadada; border-radius:15px; overflow: visible; ">
								    <div class="progress-bar progress-bar-warning" id="contributeSchool" role="progressbar" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;">
								    <input type="hidden" id="assisAmount"></input>
								    </div>
								    <div class="progress-bar progress-bar-success pinpoint" id="needAssistance" role="progressbar" style="border-top: 5px solid #fff; border-bottom: none; border-radius: 0px 10px 10px 0;">
									    <div class="pinpoint-txt" id="pinpoint">
											<div class="sch-contri">Target</div>
											<div class="sch-contri-amt" id="targetAmount"></div>
										</div>
								    </div>
							   	
							  </div>
		                            	
		                            	
		                            </div>
		                        </div>
                    		</div>
                            
							  <!-- <div class="progress">
							    <div class="progress-bar progress-bar-warning" id="contributeSchool" role="progressbar" >
							      School Contribution
							      <div id="contriAmount"></div>
							    </div>
							    <div class="progress-bar progress-bar-success" id="needAssistance" role="progressbar" >
							      Need Assistance
							      <div id="assisAmount"></div>
							    </div>
							  </div> -->
                            
                            
                            
                            <%-- <div class="tar_btnwrap"> <a href="javascript;:" class="selected">School Contribution <span>$190</span></a> <a href="javascript;:" >Need Assistance <span>$300</span></a> </div> --%>
                        </div>
                    </div>
                    <div class="containerSmall">
                       <div class="add_details">
                       <form:form role="form" action="saveClassCampaign" enctype="multipart/form-data" class="register-form" modelAttribute="dtoCampaign" method="post">
                            <div class="getstartForm">
                                <label>Add Details</label>
                                <ul>
                                    <li>
                                        <div class="contact-row">
                                            <div class="outer-field-wrap">
                                                <div class="outer-field">
                                                    <form:input path="title" type="text" placeholder="Enter Heading" />
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
										<div class="photoIcon"><div class="cam_upload"><form:input path="image" accept="image/*" type="file" id="imagePath" onchange="copyImageName();"/></div></div>
									</li>
                                    <li>
                                        <div class="contact-row">
                                            <div class="outer-field-wrap">
                                                <div class="outer-field">
                                                    <form:input path="startDate" readonly="readonly" type="text" id="startDatepicker" placeholder="Start Date" />
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="contact-row">
                                            <div class="outer-field-wrap">
                                                <div class="outer-field">
                                                    <form:input path="endDate" readonly="readonly" type="text" id="endDatepicker" placeholder="End Date" />
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <!-- <div class="input_relative">
                                            <div class="input_relative">
                                                <div class="input_add_logo">
                                                    <div class="contact-row">
                                                        <div class="outer-field-wrap">
                                                            <div class="outer-field">
                                                                <input type="password" placeholder="Add Video" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="vides_cam">
                                                    <input type="file">
                                                </div>
                                            </div>
                                        </div> -->
                                    </li>
                                    <li class="fullrow">
                                        <div class="contact-row">
                                            <form:textarea path="description" placeholder="Enter Description" ></form:textarea>
                                        </div>
                                    </li>
                                </ul>
                                <div class="clr"></div>
                                <form:input type="hidden" path="amount" id="contributionAmount"/>
                                <form:input type="hidden" path="schoolContribution" id="schoolContribution"/>
                                <input type="submit" class="submit-btn mrgtp25" value="PUBLISH CAMPAIGN">
                            </div>
                            </form:form>
                        </div> 
                        
                        
                    </div>
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
<%-- <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script> --%>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery-ui.js"></script>
<script type="text/javascript">
$(function() {
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
  //  $( "#startDatepicker" ).datepicker();
  //  $( "#endDatepicker" ).datepicker();
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
   $(document).ready(function() {     
   	//ComponentsPickers.init();
$("#pinpoint").hide();
   	
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
                       	},
                       	startDate:{
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
                    	   var classId = $("#hiddenClassId").val();
                    	   	
                    	   	if(classId==""){
                    			alert("Please select a class first");
                    			return false;
                    		}else{
                           		form.submit();
                    		}
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
function addClass(classId){
	//$("#showClass"+classId).addClass('active');
	$("#pinpoint").show();
	
	var totalClassAmountHide = $("#totalClassAmountHidden_"+classId).val();
	$("#totalClassAmount").text("$"+totalClassAmountHide);
	$("#contributionAmount").val(totalClassAmountHide);
	
	/* var n = totalClassAmountHide.indexOf(".");
	var res = totalClassAmountHide.substring(0, 3); */
	
	$("#targetAmount").html(totalClassAmountHide);
	
	$("#hiddenClassId").val(classId);
	
	
	
	
	var url='<%=request.getContextPath()%>/principal/getClassContributions';
   	var classId = $("#hiddenClassId").val();
   	
    $.ajax({
    	
          url:url,
          method:'POST',
          async :false,
          data:{classId:classId},
          success:function(response){
                 //if(response=="success"){
                	// alert(response);
                	 
                	 var resultPer1 = (response * 100/ totalClassAmountHide).toFixed()+"%";
                	 var resultPer2 = (100-(response * 100/ totalClassAmountHide).toFixed())+"%";
                	 
                	 $('div#contributeSchool').width(resultPer1);
                	 $('div#contributeSchool').addClass("xtra_padding");
                	 $('div#needAssistance').width(resultPer2);
                	 $('div#needAssistance').addClass("xtra_padding");
                	 
                	 var pendingAmount = totalClassAmountHide-response;
                	 
                	 $("#contriAmount").html("$ "+response);
                	 $("#assisAmount").val(pendingAmount);
                	 return true;
          		/* }else{
          			
          		} */
          }
    });
	
	
	
	
	
}
function addContribution(){
	
	var classId = $("#hiddenClassId").val();
	var totalClassAmountHide = $("#totalClassAmountHidden_"+classId).val();
	
	var url='<%=request.getContextPath()%>/principal/addContribution';
   	var amount = $("#amount").val();
   	var assisAmount = $("#assisAmount").val();
   	if(classId==""){
		alert("Please select a class first");
		return false;
	}
   	else if(amount==""){
		alert("Please enter an amount");
		return false;
	}
   	else if(Number(amount)>Number(assisAmount)){
		alert("Amount should not greater than required amount.");
		return false;
	}
    $.ajax({
    	
          url:url,
          method:'POST',
          async :false,
          data:{amount:amount,classId:classId},
          success:function(response){
                 //if(response=="success"){
                	// alert(response);
                	 
                	 var resultPer1 = (response * 100/ totalClassAmountHide).toFixed()+"%";
                	 var resultPer2 = (100-(response * 100/ totalClassAmountHide).toFixed())+"%";
                	 
                	 $('div#contributeSchool').width(resultPer1);
                	 $('div#needAssistance').width(resultPer2);
                	 
                	 var pendingAmount = totalClassAmountHide-response;
                	 
                	 $("#contriAmount").html("$ "+response)
                	 $("#assisAmount").val(pendingAmount)
                	 
                	 $("#schoolContribution").val(response);
                	 
                	 return true;
          		/* }else{
          			
          		} */
          }
    });
	
	
}
</script> 
</body>
</html>
