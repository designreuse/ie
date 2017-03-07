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
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
 <link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" /> 
 <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.fancybox.pack.js?v=2.1.5"></script>
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
.mtop30{margin-left: 50%;}
.formoutr-boston {
   
    width: 100% !important;}
.fc-time {
    display:none;
}

</style>

<title>Calendar</title>


    
<script>
	$(document).ready(function() {
		
	var result=[];
	var eventdetails=[];
	
	result=${events};
	
	
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
				 var startdate=(event.start);
				 var d =new Date(event.start);
				   var curr_date = d.getDate();
				   var curr_month = d.getMonth() + 1; //Months are zero based
				   var curr_year = d.getFullYear();
				  newdate= curr_year + "-" + curr_month + "-" + curr_date;
		
				 
				  if (event.end!= null){
					 var date =new Date(event.end);
					   var curr_date = date.getDate();
					   var curr_month = date.getMonth() + 1; //Months are zero based
					   var curr_year = date.getFullYear();
					  newenddate= curr_year + "-" + curr_month + "-" + curr_date;
					  $("#event_enddate")[0].innerHTML=newenddate; 
				  }
				  else
					  {
					  $("#event_enddate")[0].innerHTML= '';
					  }
				 $("#event_popup").html(event.description);
				 $("#event_date")[0].innerHTML=newdate;
				 
				
				 
				 document.getElementById('event_id').value = event.id;
				
				openSignupPopUp(event);
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
    	
    }
    
			
			</script>
	<script>   
      function saveEvent(){
     var title = $('#title').val();
    var startdate = $('#startdate').val();
    var enddate = $('#enddate').val();
    var description= $('#desc').val();
  
       $.ajax({
       url : "<%=request.getContextPath()%>/superadmin/saveEvents",
       type : 'POST',
       headers: { 
			'Content-Type':'application/json'
			},
      data:JSON.stringify({"description":description,"title":title,"startdate":startdate,"enddate":enddate}),
      success : function(result) {
        
      location.reload();
      }
       });
         }
      
      
      function addEvent(){
          $.fancybox({
               'autoScale': true,
               'autoDimensions': true,
               'centerOnScroll': true,
               'href' : '#addDetails'
            });
      }
   </script>
   <script src='<%=request.getContextPath()%>/NewStyles/js/datepicker.js'></script>
 <script>
      $(function () {
    $('#datepicker').datepicker({
        autoclose: true,
        todayHighlight: true
    }).datepicker('update', new Date(new Date().getTime()+(5*24*60*60*1000)));
    ;
    
    $('#datepicker_teacher').datepicker({
        autoclose: true,
        todayHighlight: true
    }).datepicker('update', new Date(new Date().getTime()+(5*24*60*60*1000)));
    ;
    
    $('#datepicker_parent').datepicker({
        autoclose: true,
        todayHighlight: true
    }).datepicker('update', new Date(new Date().getTime()+(5*24*60*60*1000)));
    ;
});
      
      //# sourceURL=pen.js
    </script>
				

</head>
<body>
 
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
 <div id='calendar'></div>
 
 
  <div id="popup1" class="modal-box" style="border-style: none; margin-top:-600px;">
		<div class="modal_change_track" >
			<div class="modal_bodycont">
				<a class="cls-btn js-modal-close close_fb" href="javascript:;" onclick="hideFeedbackPopUp();">X</a>
				<form:form method="post" modelAttribute="dtoEvent" name="feedback" id="feedback"
					action="${pageContext.request.contextPath}/superadmin/saveEventSignups">
					<h5>Event Details</h5>
						<div class="daily_msg"><h2>Description</h2> <br><br>
					<div class="" id="event_popup">
                		
		               <p id="description">value.title</p>
		               
		           </div></div>
		           
					<div class="leave_feedbk" id="leave_feedbk">
						<div class="getstartForm">
							<ul>
								<li>
									<div class="contact-row" >
										<div class="common_label">
											<label>Start Date</label>
										</div>
										<div class="outer-field-wrap">
											<div class="outer-field" id="event_date">
												 <p>value.start</p>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="contact-row">
										<div class="common_label">
											<label>End Date</label>
										</div>
										<div class="outer-field-wrap">
											<div class="outer-field" id="event_enddate" >
												 <p>value.end</p>
											</div>
										</div>
									</div>
                                </li>
                                
                                <li>
									<div class="contact-row">
										
										<div class="outer-field-wrap" >
											<div class="outer-field" >
												<input placeholder="Id" name="eventid" 
													type="hidden" id="event_id" />
											</div>
										</div>
									</div>
                                </li>
                               </ul>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>  
<div class="btns-outer mtop30">
<input class="submit-btn fl" type="button" onclick="addEvent();" value="ADD EVENT">
</div>

                    <div class="container" id="addDetails" style="display:none;">
                        <div class="row">
                          <div class="col-md-12 pull-left">
                                    <div class="col-md-6 col-md-offset-3">
                                        <div class="formoutr-boston">
                                            <form class="form-horizontal">
                                                    <div class="col-md-12 p0">
                                                    <p class="class-lft">Event Details</p></div>
                                                    
                                                  <div class="form-group">
                                                        <label for="phone" class="col-sm-2 control-label">Title</label>
                                                        <div class="col-sm-10">
                                                          <input type="text" class="form-control" id="title" placeholder="Title" required="">
                                                        </div>
                                                    </div>
                                                    <br>
                                                     <div class="form-group">
                                                      <label for="phone" class="col-sm-2 control-label">Start Date</label>
                                                     <div id="datepicker_parent" class="input-group date" data-date-format="yyyy-mm-dd">
                                  <input class="form-control" type="text" readonly  name="startdate" id ="startdate" placeholder="Start Date" />
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                                    </div>
                                        
                                                    </div>
                                                    <br>
                                                     <div class="form-group">
                                                      <label for="phone" class="col-sm-2 control-label">End Date</label>
                                                        <div id="datepicker_teacher" class="input-group date" data-date-format="yyyy-mm-dd">
                                  <input class="form-control" type="text" readonly  name="enddate" id ="enddate" placeholder="End Date" />
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                                    </div>
                                                    </div>
                                                    <br>
                                                     <div class="form-group">
                                                        <label for="phone" class="col-sm-2 control-label">Description</label>
                                                        <div class="col-sm-10">
                                                          <input type="text" class="form-control" id="desc" placeholder="Description" required="">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12 center-block pB70 btnstrtoutr">
                                                     <input type="button" value="Submit" class="button-submit-boston center-block" onclick="saveEvent();"></input>
                                                    </div> 
                                                    
                                            </form>
                                        </div>    
                                    </div>
                                    </div>
                                    </div>
                            </div>
                            
                            
                           
</body>
</html>
	