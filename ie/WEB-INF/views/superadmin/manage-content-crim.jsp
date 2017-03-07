<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server

	response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance

	response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">

<title>App Users</title>

<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style-crim.css">
<%-- <link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css"> --%>
<link rel="stylesheet prefetch"
	href="<%=request.getContextPath()%>/NewStyles/css/datepicker.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link
	href="<%=request.getContextPath()%>/NewStyles/css/autocomplete/main.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link
	href="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jqvmap.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/NewStyles/jquery-easy-pie-chart/jquery.easy-pie-chart.css"
	rel="stylesheet" type="text/css" media="screen" />
<link
	href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/select2/select2_metro.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />

<link href="<%=request.getContextPath()%>/NewStyles/css/components.css"
	id="style_components" rel="stylesheet" type="text/css" />

<style type="text/css">
.table {
	width: 100% !important;
}

.width30 {
	width: 33% !important;
}

.crimheader.active-livingheader {
	background: rgba(0, 71, 127, 0.7) !important;
	width: 100% !important;
	float: left !important;
}

.crimheader {
	background: rgba(0, 71, 127, 0.7) !important;
	top: 0px !important;
	left: 0px !important;
	width: 100% !important;
	border-bottom: none !important;
	z-index: 99 !important;
}

.crimLogout {
	background: #fff !important;
	color: rgba(0, 71, 127, 0.7) !important;
}

.crimwrapper {
	width: 1024px !important;
	margin: 0 auto !important;
}

.blue_line_btm {
	background:
		url("<%=request.getContextPath()%>/NewStyles/images/blue-line.png")
		no-repeat center center;
	width: 100%;
	text-align: center;
	height: 30px;
	margin-bottom: 25px;
}
</style>
</head>

<body>
	<div class="wrapper">
		<%@include file="header.jsp"%>
		<section class="getStartSct mtop-5">
			<div class="content_inner">
				<div class="pracProgress_hdr">
					<h2>Manage Content</h2>
					<div class="green_line_btm"></div>
				</div>
				<div class="manage_content margin-top-zero">
					<div class="mc_col_new">
						<div class="mc_col_msgs margin-top-zero">
							<div class="mc_col_msgs_inner">
								<div class="msg_overall">
									<div class="msg_label">
										<label>Default Message of the day</label>
									</div>
									<div class="ntr_msg_contnt">
										<div class="ntr_msg_contnt-main">
											<input type="hidden" id="defaultMessageId"
												value="${defaultMessage.id}" />
											<textarea placeholder="Type here" id="defaultMessage">${defaultMessage.message}</textarea>
										</div>
										<div class="btns-outer mtop10">
											<input class="submit-btn fl" type="button"
												onclick="updateDefaultMessage();" value="UPDATE"> <a
												href="javascript:;" class="submit-btn fl"
												data-modal-id="popup8" style="margin-left: 30px;">Message
												of the Day</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>

	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.counterup.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/waypoints.min.js"></script>
	<%@include file="../footer.jsp"%>

	<div id="popup8" class="modal-box">
		<div class="modal_change_track_new">
			<div class="modal_bodycont">
				<a class="cls-btn js-modal-close" href="javascript:;"
					style="top: 1%;">X</a>
				<h5>Message for the day</h5>
				<c:forEach items="${todayMessage}" var="todayMessage">
					<div class="msg_overall" style="margin: 0px;">
						<div class="msg_label">
							<label>Message for ${todayMessage.days}</label>
						</div>
						<div class="ntr_msg_contnt"
							style="padding-right: 20px; padding-top: 10px;">
							<div class="ntr_msg_contnt-main">
								<input type="hidden" id="todayMessageId_${todayMessage.id}"
									value="${todayMessage.id}" />
								<textarea placeholder="Type here"
									id="todayMessage_${todayMessage.days}">${todayMessage.message}</textarea>
							</div>

						</div>
					</div>
				</c:forEach>
				<div class="btns-outer mtop10">
					<input class="submit-btn fl" type="button"
						onclick="updateTodayMessage();" style="float: none !important;"
						value="PUBLISH">
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/tab.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jquery.vmap.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/maps/jquery.vmap.usa.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/data/jquery.vmap.sampledata.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/jquery-easy-pie-chart/jquery.easy-pie-chart.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.resize.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.pie.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.stack.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.crosshair.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.time.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.axislabels.js"></script>
	<script src="<%=request.getContextPath()%>/NewStyles/js/charts.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.tooltip.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/charts-flotcharts.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.autocomplete.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		
	function updateDefaultMessage(){
		var defaultMessage = $('#defaultMessage').val();
		var defaultMessageId = $('#defaultMessageId').val();
		$.ajax({
			url : "<%=request.getContextPath()%>/superadmin/updateDefaultMessageCrim/",
			type : 'POST',
			data:{id:defaultMessageId,message:defaultMessage},
			success : function(result) {
				$.each(result,function(key,value){
					$('#defaultMessage').val(value);
					$('#defaultMessageId').val(key);
					location.reload();
				});
				}
			});
	}
	
	function updateTodayMessage(){
		var todayMessageMonday = $('#todayMessage_Monday').val();
		var todayMessageTuesday = $('#todayMessage_Tuesday').val();
		var todayMessageWednesday = $('#todayMessage_Wednesday').val();
		var todayMessageThursday = $('#todayMessage_Thursday').val();
		var todayMessageFriday = $('#todayMessage_Friday').val();
		var todayMessageSaturday = $('#todayMessage_Saturday').val();
		var todayMessageSunday = $('#todayMessage_Sunday').val();
		var todayMessageIdMonday = $('#todayMessageId_25').val();
		var todayMessageIdTuesday = $('#todayMessageId_26').val();
		var todayMessageIdWednesday = $('#todayMessageId_27').val();
		var todayMessageIdThursday = $('#todayMessageId_28').val();
		var todayMessageIdFriday = $('#todayMessageId_29').val();
		var todayMessageIdSaturday = $('#todayMessageId_30').val();
		var todayMessageIdSunday = $('#todayMessageId_31').val();
		  var selected = new Array();
		  var days = new Array();
		  var todaymessage=new Array();
		   if(todayMessageMonday!=null){
			   
			   selected.push(todayMessageIdMonday); 
			   todaymessage.push(todayMessageMonday); 
			   days.push("Monday"); 
		   }
		   if(todayMessageIdTuesday!=null){
			   selected.push(todayMessageIdTuesday);
			   todaymessage.push(todayMessageTuesday); 
			   days.push("Tuesday"); 
		   }
		 
		   if(todayMessageIdWednesday!=null){
			   selected.push(todayMessageIdWednesday);
			   todaymessage.push(todayMessageWednesday); 
			   days.push("Wednesday");
		   }
		   if(todayMessageIdThursday!=null){
			   selected.push(todayMessageIdThursday);
			   todaymessage.push(todayMessageThursday); 
			   days.push("Thursday");
		   }
		   if(todayMessageIdFriday!=null){
			   selected.push(todayMessageIdFriday); 
			   todaymessage.push(todayMessageFriday); 
			   days.push("Friday");
		   }
		   if(todayMessageIdSaturday!=null){
			   selected.push(todayMessageIdSaturday); 
			   todaymessage.push(todayMessageSaturday); 
			   days.push("Saturday");
		   }
		   if(todayMessageIdSunday!=null){
			   selected.push(todayMessageIdSunday); 
			   todaymessage.push(todayMessageSunday); 
			   days.push("Sunday");
		   }	    
		$.ajax({
			url : "<%=request.getContextPath()%>/superadmin/updateTodayMessageCrim/",
						type : 'POST',
						data : {
							id1 : selected,
							message1 : todaymessage,
							days1 : days
						},
						success : function(result) {
							$.each(result, function(key, value) {
								$('#todayMessage_Monday').val(value);
								$('#todayMessageId_25').val(key);
								$('#todayMessage_Tuesday').val(value);
								$('#todayMessageId_26').val(key);
								$('#todayMessage_Wednesday').val(value);
								$('#todayMessageId_27').val(key);
								$('#todayMessage_Thursday').val(value);
								$('#todayMessageId_28').val(key);
								$('#todayMessage_Friday').val(value);
								$('#todayMessageId_29').val(key);
								$('#todayMessage_Saturday').val(value);
								$('#todayMessageId_30').val(key);
								$('#todayMessage_Sunday').val(value);
								$('#todayMessageId_31').val(key);
								location.reload();
							});
						}
					});
		}
	</script>

	<script type="text/javascript">
		$(function() {
			initDialog();

			function initDialog() {
				var appendthis = ("<div class='modal-overlay js-modal-close'></div>");
				$('a[data-modal-id]').click(function(e) {
					e.preventDefault();
					$("body").append(appendthis);
					$(".modal-overlay").fadeTo(500, 0.7);
					var modalBox = $(this).attr('data-modal-id');
					$('#' + modalBox).fadeIn($(this).data());
				});

				$(".js-modal-close, .modal-overlay").click(function() {
					$(".modal-box, .modal-overlay").fadeOut(500, function() {
						$(".modal-overlay").remove();
					});
				});

				$(window).resize(
						function() {
							$(".modal-box")
									.css(
											{
												top : ($(window).height() - $(
														".modal-box")
														.outerHeight()) / 7,
												left : ($(window).width() - $(
														".modal-box")
														.outerWidth()) / 2
											});
						});

				$(window).resize();
			}
		});
	</script>
</body>
</html>
