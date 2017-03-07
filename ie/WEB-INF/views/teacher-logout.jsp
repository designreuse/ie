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
<spring:eval expression="@propertyConfigurer.getProperty('service.url')" var="baseURL" />
<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Thank You</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/jquery.timepicker.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="wrapper">
		<%@include file="header.jsp" %>
		<section class="getStartSct mtop-5">
    <div class="steps_getstarted">
			<div class="container">
				<div class="about_title_hdr">
     <h2>Thank You</h2>
     <div class="green_line_btm"></div>
     </div>
   <form:form name="teacherReminder" id="teacherReminder" modelAttribute="dtoPracticeProgress" action="teacherReminderSave" method="POST">
   <input type="hidden" name="userId" id="userId" value="${dtoPracticeProgress.userId}">
   <input type="hidden" name="classTeacherRelationId" id="classTeacherRelationId" value="${dtoPracticeProgress.classTeacherRelationId}">
   <input type="hidden" name="reminderStatus" id="reminderStatus" value="${dtoPracticeProgress.reminderStatus}">
     <div class="thnk-log-main">
        <ul>
        	<li>
            	<div class="thnk-log-inner">
            	<h3>${dtoPracticeProgress.playCount}</h3>
                <p>Track Completed</p>
                </div>
            </li>
            <li>
            	<div class="thnk-log-inner">
            	<h3>${dtoPracticeProgress.completeStatus}%</h3>
                <p>Progress</p>
                </div>
            </li>
        </ul>
        <h5>Upcoming Track</h5>
            <div class="ie_pra-player">
        	<div class="ie_player_list">
            	<ul>
                	<li>
                    	<a href="javascript:;" class="grey-bg">
                        	<p>${dtoPracticeProgress.currentTrackDay}</p>
                            <div class="ie_ply_img">
                            	<img alt="" src="<%=request.getContextPath()%>/NewStyles/images/play-thankyou.png">
                            </div>    
                            <p>${dtoPracticeProgress.currentTrackName}</p>
                        </a>
                    </li>
 
                </ul>
            </div>
        </div>
        <div class="thnku-select-outer">
        	<div class="thnku-select-inner">
            	<div class="thnku-inner-cntnt">
            		<!--<h4>Do you want IE to remind you?</h4>-->
                    <label><input type="checkbox" name="chkRemind" id="chkRemind" onchange="setTime();"> Remind Me</label>
                    <div class="thnku-timer" style="display: none;" id="timeDiv">
                    	<label>Set Timer</label>
                        <div class="thnku-slct">
                        	<ul>
                                <li class="width75p">
                                    <div class="contact-row">
                                        <div class="outer-field-wrap">
                                            <div class="outer-field">
                                                <input type="text" placeholder="Time" name="time" id="time" onfocus="hideTimeError();">
                                                <label class="error" id="timeError" style="display: none;" >Select Reminder Time</label>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="btns-outer">
					<input type="submit" value="Ok" class="submit-btn ">
				</div>
     </div> 
   </form:form>
			</div>
      </div>
		</section>
	</div>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.timepicker.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/woco.accordion.min.js" type="text/javascript"></script>
<script>
$(".accordion").accordion();
jQuery(document).ready
(function($){
	  $("#login").click(function(e) {
	        $(".login_panel").toggle();
	        e.stopPropagation();
	    });
	    $(document).click(function(e) {
	        if (!$(e.target).is('.login_panel, .login_panel *')) {
	            $(".login_panel").hide();
	        }
	    });
	$("#header").sticky({ topSpacing: 0 });
	$('#time').timepicker( {timeFormat: 'HH:mm:ss'});
	var remindStatus='${dtoPracticeProgress.reminderStatus}';
	$("#reminderStatus").val(remindStatus);
	if(remindStatus=="Y"){
		$( "#chkRemind").prop('checked', true);
		$("#timeDiv").show();
		$("#time").val('${dtoPracticeProgress.time}');
	}
	else
		{
		$("#reminderStatus").val(remindStatus);
		$("#timeDiv").hide();
		}
});
$('#teacherReminder').validate({
    errorElement: 'span', //default input error message container
    errorClass: 'help-block', // default input error message class
    focusInvalid: false, // do not focus the last invalid input
    //ignore: "",
    rules: {
    	
        time: {
            //required: true 
        },
        reminderStatus: {
            //required: true 
        }

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
    	var reminderStatus=$("#reminderStatus").val();
    	var time=$("#time").val();
    	if(reminderStatus=="Y" && time==""){
    	$("#timeError").show();	
    
    	}
    	else{
    	$("#timeError").hide();	
    	form.submit();
    	}
    }
});
function setTime(){
	if($("#chkRemind").is(":checked")){
	
		$("#reminderStatus").val("Y");
		
		$("#timeDiv").show();
	}
	else
		{
		$("#reminderStatus").val("N");
		$("#timeDiv").hide();
		}
}

function hideTimeError(){
	$("#timeError").hide();
}
</script>
</body>
</html>
