<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*,java.text.*"%>

<%
	response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server

	response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance

	response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
%>
<spring:eval expression="@propertyConfigurer.getProperty('service.url')"
	var="baseURL" />
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>Events</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/boston.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css"
	id="style_components" rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/full_calander/css/fullcalendar.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/full_calander/css/fullcalendar.print.css"
	media='print'>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/NewStyles/full_calander/lib/moment.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/NewStyles/full_calander/lib/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/NewStyles/full_calander/js/fullcalendar.min.js"></script>
<link
	href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" /> --%>
<style type="text/css">
.fancybox-inner {
	height: auto !important;
	overflow: hidden !important;
}

body {
	margin: 40px 10px;
	padding: 0;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
	font-size: 14px;
}

#calendar {
	max-width: 900px;
	margin: 0 auto;
}

body {
	font-family: Verdana, Arial, Helvetica, sans-serif
}

.dsb {
	background-color: #EEEEEE
}

.mtop30 {
	margin-left: 50%;
}

.formoutr-boston {
	width: 100% !important;
}

.fc-time {
	display: none;
}

.right_btn {
	width: 50%;
	text-align: center;
	float: left
}

.left_btn {
	width: 50%;
	text-align: center;
	float: left
}
</style>

<title>Calendar</title>



<script>
	$(document).ready(function() {
		
	var result=[];
	var eventdetails=[];
	result=${events};
	var res = 'failed';
	res = $("#res").val();
	if ( typeof res !== 'undefined' && res == 'success' ) {
		  alert("You have successfully signed up for the event.");
	}
	
	$.each(result,function(index,value){
		eventdetails.push({"title":value.title,"start":new Date(value.startdate),"id":value.eventid,"end": new Date(value.enddate),color : '#257e4a ',"description":value.description});
	 
});

	
		$('#calendar').fullCalendar({
			header : {
				left : 'prev,next today',
				center : 'title',
				right : 'month,agendaWeek,agendaDay,listMonth'
			},
			
			/* defaultDate: '2016-09-12', */
			navLinks : true, // can click day/week names to navigate views
			businessHours : true, // display business hours
			editable : true,
			
			
			 events :eventdetails,
			
			 eventRender: function(event, element) {
				
			        console.log(event.id);
			        console.log(event.description);
			 },
			 
			 eventClick : function(event , jsEvent, view) {
				 $("#event_popup").html(event.description);
				 document.getElementById('event_id').value = event.id;
				
				openSignupPopUp(event);
				$("#inviteForEvent").hide();
				$("#e_sign").show();
				$("#e_invite").show();
				
				return false;
			} 
		}); 

	});
	
	function openSignupPopUp(event) {
		$("#popup1")[0].style.display = "block"
				}
			//initDialog();
		$(window).scrollTop(0);
	

	function goTo() {
		document.frm.submit()
	}
	
    function hideFeedbackPopUp(){
    	$("#popup1")[0].style.display = "none"
    		$(window).scrollTop(0);
   }
    
    function initDialog(){
    	
    	var appendthis =  ("<div class='modal-overlay js-modal-close'></div>");

    		$('a[data-modal-id]').click(function(e) {
    			e.preventDefault();
    	    $("body").append(appendthis);
    	    $(".modal-overlay").fadeTo(500, 0.7);
    	   // $(".js-modalbox").fadeIn(500);
    			var modalBox = $(this).attr('data-modal-id');
    			$('#'+modalBox).fadeIn($(this).data());
    		});  
    	  
    		
    	  
    	$(".js-modal-close, .modal-overlay").click(function() {
    	    $(".modal-box, .modal-overlay").fadeOut(500, function() {
    	        $(".modal-overlay").remove();
    	    });
    	 
    	});
    
    }
    
    function updateEvent(){
        var event_id = $('#event_id').val();
         var e_name = $('#e_name').val();
    	var e_email = $('#e_email').val();
    	<%-- $.ajax({
    		url : "<%=request.getContextPath()%>/superadmin/updateTodayMessage/",
    		type : 'POST',
    		data:{id:todayMessageId,message:todayMessage},
    		success : function(result) {
    			$.each(result,function(key,value){
    				$('#e_name').val(value);
    				$('#e_email').val(key);
    				location.reload();
    			});
    			}
    		}); --%>
    	
    	
    }
    
			
			</script>
				<script>
		function openInvite(){
			$("#inviteForEvent").show();
			$("#e_save").show();
			$("#e_sign").hide();
			$("#e_invite").hide();
		}
	</script>
</head>
<body>
	<div>
		 <input placeholder="res" name="res" type="hidden"
			id="res" value="${res}" />
	</div>
	<div class="inner_wrapper">
		<%@include file="header.jsp"%>

		<!--inner_header starts-->
		<!--brow_don_camp starts-->
		<div class="brow_don_camp">
			<div class="container">
				<div class="pracProgress_hdr">
					<h2>Events</h2>
					<div class="green_line_btm"></div>
				</div>
			</div>
		</div>
	</div>
	<script>
	$(document).ready(function() {
		
	var result=[];
	var eventdetails=[];
	result=${events};
	var res = 'failed';
	res = $("#res").val();
	if ( typeof res !== 'undefined' && res == 'success' ) {
		  alert("You have successfully signed up for the event.");
	}
	
	$.each(result,function(index,value){
		eventdetails.push({"title":value.title,"start":new Date(value.startdate),"id":value.eventid,"end": new Date(value.enddate),color : 'rgba(255, 255, 255, 0.8)',"description":value.description});
	 
});

	
		$('#calendar').fullCalendar({
			header : {
				left : 'prev,next today',
				center : 'title',
				right : 'month,agendaWeek,agendaDay,listMonth'
			},
			
			/* defaultDate: '2016-09-12', */
			navLinks : true, // can click day/week names to navigate views
			businessHours : true, // display business hours
			editable : true,
			
			
			 events :eventdetails,
			
			 eventRender: function(event, element) {
				
			        console.log(event.id);
			        console.log(event.description);
			 },
			 
			 eventClick : function(event , jsEvent, view) {
				 $("#event_popup").html(event.description);
				 document.getElementById('event_id').value = event.id;
				
				openSignupPopUp(event);
				$("#inviteForEvent").hide();
				$("#e_sign").show();
				$("#e_invite").show();
				
				return false;
			} 

		}); 

	});
	
	function openSignupPopUp(event) {
		$("#popup1")[0].style.display = "block"
				}
			//initDialog();
		$(window).scrollTop(0);
	

	function goTo() {
		document.frm.submit()
	}
	
    function hideFeedbackPopUp(){
    	$("#popup1")[0].style.display = "none"
    		$(window).scrollTop(0);
   }
    
    function initDialog(){
    	
    	var appendthis =  ("<div class='modal-overlay js-modal-close'></div>");

    		$('a[data-modal-id]').click(function(e) {
    			e.preventDefault();
    	    $("body").append(appendthis);
    	    $(".modal-overlay").fadeTo(500, 0.7);
    	   // $(".js-modalbox").fadeIn(500);
    			var modalBox = $(this).attr('data-modal-id');
    			$('#'+modalBox).fadeIn($(this).data());
    		});  
    	  
    		
    	  
    	$(".js-modal-close, .modal-overlay").click(function() {
    	    $(".modal-box, .modal-overlay").fadeOut(500, function() {
    	        $(".modal-overlay").remove();
    	    });
    	 
    	});
    
    }
    
    function updateEvent(){
        var event_id = $('#event_id').val();
         var e_name = $('#e_name').val();
    	var e_email = $('#e_email').val();
    	<%-- $.ajax({
    		url : "<%=request.getContextPath()%>/superadmin/updateTodayMessage/",
    		type : 'POST',
    		data:{id:todayMessageId,message:todayMessage},
    		success : function(result) {
    			$.each(result,function(key,value){
    				$('#e_name').val(value);
    				$('#e_email').val(key);
    				location.reload();
    			});
    			}
    		}); --%>
    	
    	
    }
    
			
			</script>
				<script>
		function openInvite(){
			$("#inviteForEvent").show();
			$("#e_save").show();
			$("#e_sign").hide();
			$("#e_invite").hide();
		}
	</script>
	
	<script>
	
	
	function saveInviteDetails(){
		var url='<%=request.getContextPath()%>/teacher/saveInviteDetails';
		var e_name = $("#e_name").val();
		var e_email = $("#e_email").val();
		var event_id = $("#event_id").val();
		var t_name = $("#t_name").val();
		var t_email = $("#t_email").val();
		if(t_name=="" && t_email=="" ){
			alert("Please enter name and email of the user.")
		}
		else{
			
		
		$.ajax({
			url:url,
			method:'POST',
			async :false,
			data:{e_name:e_name,e_email:e_email,event_id:event_id,t_name:t_name,t_email:t_email},
			cache:false,
			success:function(response){
				 alert("Invite sent to your friend.") 
			}
		});
		
		
		
		}
		$("#inviteForEvent").hide();
		$("#e_sign").show();
		$("#e_invite").show();
	
	}

	</script>
</head>
 
	<div id='calendar'></div>

<input placeholder="res" name="res" type="hidden"
			id="res" value="${res}" />
	<div id="popup1" class="modal-box"
		style="border-style: none; margin-top: -600px;">
		<div class="modal_change_track">
			<div class="modal_bodycont">
				<a class="cls-btn js-modal-close close_fb" href="javascript:;"
					onclick="hideFeedbackPopUp();">X</a>
				<form:form method="post" modelAttribute="dtoEvent" name="feedback" id="feedback"
					action="${pageContext.request.contextPath}/teacher/saveEvent">
					<h5>Sign Up</h5>
					<div class="daily_msg">
						<h2>Description</h2>
						<br>
						<br>
						<div class="" id="event_popup">

							<p id="description">value.description</p>

						</div>
					</div>
					
					<div class="leave_feedbk" id="leave_feedbk">
						<div class="getstartForm">
							
								<input placeholder="Name" name="name" type="hidden"
									id="e_name" value="${userName}" /> 
									<input
									placeholder="Email Id" name="emailid" type="hidden"
									id="e_email" value="${emailId}" /> 
									<input placeholder="Id"
									name="eventid" type="hidden" id="event_id" /></li>
							
						</div>
						<div class="col-sm-12" style="float: left; width: 100%;">
							<div class="left_btn">
								<input type="submit" value="SIGN UP" class="input_submit_btn_fb" id="e_sign">
							</div>
							<div class="right_btn">
								<input type="button" value="INVITE" class="input_submit_btn_fb" onclick="openInvite();" id="e_invite">
							</div>
							
						</div>
						
					</div>
					
			</form:form>
			<div class="getstartForm"id ="inviteForEvent" style="display:none">
					<form:form method="post" modelAttribute="dtoEvent" id="inviteDetails">
						
						<ul>
							<li>
								<div class="contact-row">
								
									<div class="common_label">
										<label>Name</label>
									</div>
									<div class="outer-field-wrap">
										<div class="outer-field">
												<input placeholder="Name" name="t_namee"
												type="text" id="t_name"  />
										</div>
									</div>
									</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="common_label">
										<label>Email Id</label>
									</div>
									<div class="outer-field-wrap">
										 <div class="outer-field" >
												<input placeholder="Email Id" name="t_emailid"
													type="text" id="t_email"  />
										 </div>
									</div>
									</div>
									<input
									placeholder="Email Id" name="emailid" type="hidden"
									id="e_email" value="${emailId}" /> 
									<input placeholder="Id"
									name="eventid" type="hidden" id="event_id" />
                             </li>
                        </ul>
                        <div >
								<input type="button" value="SEND INVITE" class="input_submit_btn_fb"  id="e_save" style="display:none" onclick="saveInviteDetails();">
							</div>
                        </form:form>
                       </div>
		</div>
	</div>
	</div>
	</body>
</html>
	