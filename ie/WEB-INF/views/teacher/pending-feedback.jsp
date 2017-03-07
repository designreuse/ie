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
<title>Pending Feedback</title>
<c:if test="${companyName eq '1'}">
	<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<c:if test="${companyName eq '2'}">
	<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>

<body>
	<div class="wrapper">
<%@include file="header.jsp" %>
		<section class="getStartSct">
		<div class="steps_getstarted">
			<div class="containerSmall">
			<div class="pracProgress_hdr">
 				<h2>Pending Feedback</h2>
				<div class="green_line_btm"></div>
				</div>
			</div>
				<div class="clr"></div>
				<form:form  method="post" modelAttribute="dtoUser" action="saveNewClasses" id="saveSignupForm" class="register-form" >
				<div class="section_makpaymnt">
					<div class="programs_our" id="ourProg">
							<div class="titlebar_programms">
								<div class="payable_amt_1">
								  <input type="hidden" id="selectedPrograms" name="selectedPrograms">  
								</div>
							</div>
						</div>
							<div class="school_setup_wrapper" id="progDetail">
							<div class="misc_tabs">
					<div class="misc_content">
							<div class="containerSmall">
								<div class="ur_grid_pop p-font14">
								<table class="table table-striped table-bordered table-hover"	id="sample_1">
									<thead>
										<tr>
											<th>Day</th>
											<th>Track Name</th>
											<th>Feedback</th>
										</tr>
										</thead>
										<tbody>
										 <c:forEach var="practiceProgress" items="${practiceProgresses}">
											<tr>
												<td><span class="fd_span">${practiceProgress.currentTrackDay}</span></td>
												<td><span class="fd_span">${practiceProgress.currentTrackName}</span></td>
												<td><span><a href="javascript:;" onclick="setAudioId(${practiceProgress.audioId});" class="js-open-modal" data-modal-id="popup1">[Add]</a></span>
												</td>
											</tr>
										</c:forEach> 
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</form:form>
		</div>
	</section>
</div>
<div id="popup1" class="modal-box">
    					<div class="modal_change_track">
						<div class="modal_bodycont">
    					<a class="cls-btn js-modal-close close_fb" href="javascript:;">X</a>
								<form name="feedback" id="feedback"
									action="${pageContext.request.contextPath}/teacher/savePendingfeedback" method="POST">
									<h5>We Value Your Input</h5>
									<input type="hidden" name="classTeacherRelationId" id="classTeacherRelationId" value="${classTeacherRelationId}">
									<div class="leave_feedbk" id="leave_feedbk">
										<div class="getstartForm">
											<ul>
												<li>
													<div class="contact-row">
														<div class="common_label">
															<label>How many students in attendance today?</label>
														</div>
														<div class="outer-field-wrap">
															<div class="outer-field">
																<input placeholder="No. Of Students"
																	name="studentNumber" type="text" />
															</div>
														</div>
													</div>
												</li>
												<li>
													<div class="contact-row">
														<div class="common_label">
															<label>How was the audio quality?</label>
														</div>
														<div class="outer-field-wrap">
															<div class="outer-field">
																<select name="audioQuality" class="select-dept">
																	<option value="">Select Quality</option>
																	<option value="HIGH">High</option>
																	<option value="MEDIUM">Medium</option>
																	<option value="LOW">Low</option>
																</select>
															</div>
														</div>
													</div>
												</li>
											</ul>
										</div>
										<div class="fieldbox_leave">
											<input id="audioId" name="audioId" type="hidden" value="" />
											<input id="rating" name="rating" type="hidden" value="0" /> <label>Please rate the engagement level of the class(5=max)</label>
											<div class="star_rating mrgtp_0" id="audiofeedback">
												<img
													src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png"
													alt="" onclick="changeRating(1);" /><img
													src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png"
													alt="" onclick="changeRating(2);" /><img
													src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png"
													alt="" onclick="changeRating(3);" /><img
													src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png"
													alt="" onclick="changeRating(4);" /><img
													src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png"
													alt="" onclick="changeRating(5);" />

											</div>
											<span id="ratingError" style="color:#a94442;"> </span>
										</div>
										<div class="fieldbox_leave">
											<label>Share your observations from today's session</label>
											<textarea rows="6" id="comment" name="comment"></textarea>
										</div>


										<div class="fieldbox_leave mrgtp25">
											<input type="submit" value="SUBMIT" class="input_submit_btn_fb">
										</div>
									</div>
								</form>
								</div>
								</div>
								</div>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="../footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script> 
<script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/tab.js" ></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript">
   function initDialog(){
		var appendthis =  ("<div class='modal-overlay js-modal-close'></div>");

			$('a[data-modal-id]').click(function(e) {
				e.preventDefault();
		    $("body").append(appendthis);
		    $(".modal-overlay").fadeTo(500, 0.7);
				var modalBox = $(this).attr('data-modal-id');
				$('#'+modalBox).fadeIn($(this).data());
			});  
		  
		  
		$(".js-modal-close, .modal-overlay").click(function() {
		    $(".modal-box, .modal-overlay").fadeOut(500, function() {
		        $(".modal-overlay").remove();
		    });
		 
		});
		 
		$(window).resize(function() {
		    $(".modal-box").css({
		        top: ($(window).height() - $(".modal-box").outerHeight()) / 7,
		        left: ($(window).width() - $(".modal-box").outerWidth()) / 2
		    });
		});
		 
		$(window).resize();
		}
   
   
   $(function(){
    
	   initDialog();
	   
    	$("#header").sticky({ topSpacing: 0 });
    	$('[id^=sample_1]').dataTable({"aLengthMenu": [[15, 50, 100, -1],[15, 50, 100, "All"] ],columnDefs: [ {
            orderable: false,
            className: 'select-checkbox',
            targets:   0
        } ],
        select: {
            style:    'os',
            selector: 'td:first-child'
        },
        order: [[ 1, 'asc' ]], "iDisplayLength": 15});
        
        
	                   $.validator.addMethod("nameRegex", function(value, element) {
	                       return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
	                   }, "Field must contain letters only.");
	                   
	                   $('#feedback').validate({
	                       errorElement: 'span', //default input error message container
	                       errorClass: 'help-block', // default input error message class
	                       focusInvalid: false, // do not focus the last invalid input
	                       ignore: "",
	                       rules: {
	                    	   studentNumber:{
	                       		//required: true,
	                       		digits : true,
	                       		/* minlength : 3,*/
	                       		maxlength : 4 
	                       	},
	                       	comment:{
	                       		//required: true,
	                       		maxlength : 1000
	                       	},
	                       	audioQuality:{
	                       		required: true
	                       	}
	                       	
	                       	
	                       	
	                       	/* ,
	                       	description:{
	                       		required: true,
	                       		maxlength : 450
	                       	} */
	                       },


	                       invalidHandler: function(event, validator) { //display error alert on form submit   
	                       },

	                       highlight: function(element) { // hightlight error inputs
	                           $(element)
	                               .closest('.outer-field').addClass('has-error'); // set error class to the control group
	                           $(element)
	                               .closest('.fieldbox_leave').addClass('has-error'); // set error class to the control group
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
	                    	   var ratingVal=$("#rating").val();
	                    	   if(ratingVal == "0"){
	                    		   
	                    		   $("#ratingError").html("This field is required.")
	                    		   
	                    	   }
	                    	   else
	                    		   {
	                    		   form.submit();
	                    		   }
	                           
	                       }
	                   });
    	
    });
function changeRating(rating){
    	var audiofeedback = '';
        for(var i=1;i<=5;i++){
            if(i <= rating){
            	audiofeedback+='<img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png"  alt=""  onclick="changeRating('+i+');">';
            }
            else{
            	audiofeedback+='<img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""   onclick="changeRating('+i+');">';
            }
		}
        $("#audiofeedback").html('');
        $("#audiofeedback").html(audiofeedback);
        document.getElementById("rating").value=rating;
    }
     function setAudioId(audioId){
    		document.getElementById("audioId").value=audioId;
    	}	  
</script>
</body>
</html>
