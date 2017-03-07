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
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>Communication with Parents</title>
<c:if test="${companyName eq '1'}">
	<link rel="icon"
		href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
		type="image/x-icon">
</c:if>
<c:if test="${companyName eq '2'}">
	<link rel="icon"
		href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
		type="image/x-icon">
</c:if>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
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
	href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/select2/select2_metro.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
<link rel="stylesheet"
	href="https://cdn.datatables.net/select/1.1.0/css/select.dataTables.min.css" />
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css"
	id="style_components" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/bootstrap-tokenfield.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/tokenfield-typeahead.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/css/jquery.fancybox.css?v=2.1.5"
	type="text/css" media="screen" />
<style type="text/css">
.table {
	width: 100% !important;
}
</style>
 <style>
	/* #Upload_data_sec{display:none} */
	
	.upload_btn{ background: none repeat scroll 0 0 #01a34e;   
	 border: medium none;     color: #fff;  border-radius: 25px;     
    cursor: pointer;     font-size: 14px; padding: 8px 15px;    
	 font-weight: 400;     text-transform:none;}
	 .not-active {
 pointer-events: none;
 cursor: default;
 background: #808080 !important;

}

 .active {
 pointer-events: auto;
 cursor: default;
  background: #02a451 !important;
}
	
	</style>
</head>
<body>
	<div class="wrapper">
		<%@include file="header.jsp"%>
		<!--inner_wrapper starts-->
		<div class="inner_wrapper">

			<!--inner_header starts-->
			<%-- <div class="inner_header"> <img src="<%=request.getContextPath()%>/NewStyles/images/browse-donation-header.jpg"  alt=""/> </div> --%>

			<!--admin_dashboard starts-->
			<div class="brow_don_camp">
				<div class="content_inner">
					<div class="pracProgress_hdr">
						<h2>Communication with Parents</h2>
						<div class="green_line_btm"></div>
					</div>



					<!--misc tabs start-->
					<div class="misc_tabs">
						<div class="misc_tabar background-none">
							<ul class="tabPAreanew">
								<li id="mtab3" class=" selected"><a class="trial"
									href="javascript:showTab(3,4)">Letter To Parents</a></li>
								<li id="mtab1"><a class="fp" href="javascript:showTab(1,4)">Send
										Tune In Invite</a></li>
								<li id="mtab2"><a class="fp" href="javascript:showTab(2,4)"
									onclick="getPlaybackAPI(${teacherId});">Track Tune In
										Invite</a></li>
								<li id="mtab4"><a class="fp" href="javascript:showTab(4,4)"
									onclick="getPlaybackAPIP(${teacherId});">View Tune In
										Activity</a></li>
							</ul>
						</div>
						<div class="misc_content">
							<!--TAB 1 STARTS-->
							<div id="tab1" style="display: none;">

								<div class="ourStory-Popup" id="letterToParentDash">
									<div class="ur_grid ur_grid_pop overflw-vis">

										<form:form method="post" modelAttribute="dtoLetterToParent"
											enctype="multipart/form-data"
											action="${pageContext.request.contextPath}/teacher/sendletterToAllParents"
											id="saveLetterEmail" class="register-form">
											<div class="school_setup_wrapper margin-top-zero"
												id="progDetail">
												<div class="getstartForm new-letterPar">
													<ul>
														<div id="parentInfo_${schoolId}">
															<div id="divSection_${schoolId}_0">

																<li>
																	<!-- <div class="input_relative"> --> <!-- <div class="input_add_logo width-less"> -->
																	<div class="contact-row">
																		<div class="outer-field-wrap">
																			<div class="outer-field">
																				<input placeholder="Parent Email*" type="text"
																					name="parentEmail" id="parentEmail_${schoolId}_0"
																					class="ignore1" />
																			</div>
																		</div>
																	</div> <!-- </div> --> <!-- <input type="button" class="input_abs_plus">  -->
																	<%--  <div class="plusImg" id="removeLast_${schoolId}_0"><a  title="Add More" onclick="addMoreClass(${schoolId},0);" id="addMoreClass_${schoolId}"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a></div> --%>
																	<!-- </div> -->
																</li>

																<li>
																	<div class="contact-row">
																		<div class="outer-field-wrap">
																			<div class="outer-field full-width-input">
																				<input placeholder="Parent Mobile" type="text"
																					name="parentMobile" id="parentMobile_${schoolId}_0"
																					class="ignore1" />
																			</div>
																		</div>
																	</div>
																</li>

																<li>
																	<div class="input_relative">
																		<div class="input_add_logo width-less">
																			<div class="contact-row">
																				<div class="outer-field-wrap">
																					<div class="outer-field">
																						<input placeholder="Name" type="text"
																							name="comments" id="comments_${schoolId}_0"
																							class="ignore1" />
																					</div>
																				</div>
																			</div>
																		</div>
																		<!-- <input type="button" class="input_abs_plus">  -->
																		<div class="plusImg" id="removeLast_${schoolId}_0">
																			<a title="Add More"
																				onclick="addMoreClass(${schoolId},0);"
																				id="addMoreClass_${schoolId}"><img
																				src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png"
																				alt="Image" /></a>
																		</div>
																	</div>
																</li>
													</ul>
												</div>

											</div>
											<div id="tab1">
												<div class="section_trial Mbtm0">
													<div class="free_trial_somedays margin-top-twnty">
														<!-- <h5>Experience for next 45 sessions</h5> -->
														<div class="txtcenter_align">
															<a class="blueBtn" onclick="sendingEmailToParents();">SEND</a>
														</div>
													</div>
												</div>
											</div>
										</form:form>
									</div>
								</div>


							</div>
							<!--TAB 1 ENDS-->
							<!--TAB 2 STARTS-->
							<div id="tab2" style="display: none;">

								<div class="ourStory-Popup" id="letterToParentDashTrack">
									<!-- <h4>Track Invite</h4> -->
									<div class="ur_grid ur_grid_pop">

										<table class="table table-striped table-bordered table-hover"
											id="sample_6">
											<thead>
												<tr>
													<th class="center"><strong>Parent Email</strong></th>
													<th class="center"><strong>Date of Invitation</strong></th>
													<th class="center"><strong>Name</strong></th>
													<th class="center"><strong>Status</strong></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
												</tr>
											</thead>
											<tbody></tbody>
										</table>


									</div>

								</div>

							</div>
							<section class="tehDsh-step1 mtop-5">
								<div id="tab3" class="containerSmall">
									<div class="ourStory-Popup" id="letterToParentDashTrack">
										<!-- <h4>Track Invite</h4> -->
										<div class="ur_grid ur_grid_pop">
											<form:form name="letterToParent" id="letterToParent"
												modelAttribute="dtoOwner" action="sendletter" method="POST"
												enctype="multipart/form-data">
												<div class="techForm width50p">
													<label>Enter Email Address</label>
													<div class="step4-textInput">
														<!-- <div class="contact-row">
							<div class="outer-field-wrap">
								<div class="outer-field">
									<input type="text" placeholder="Email">
									
									<div class="bs-example">
					                	<input type="text" class="form-control" id="tokenfield" data-tokens="me|me@example.com,you@example.com,not really an email" />
					              </div>
									
								</div>
							</div>
						</div> -->
														<div class="bs-example multi-input formMulInput_out">
															<form:textarea rows="4" cols="50" path="parentEmails"
																type="text" class="form-control formMulInput"
																id="tokenfield" placeholder="Enter Email or import email and press tab" onMouseOver="test();" value="testing@gmail.com"></form:textarea>
														</div>
													</div>

													<!-- <input type="button" value="Go" class="startBtn fl"/> -->
												</div>

												<div class="step4-export">
													<div class="step4-expOuter width100 fl mtop80">
														<!-- <label>Import List from Excel</label> -->
														<!-- <div class="fileUpload browse-btn">
															<span>Import List from Excel</span> -->
															<%-- <form:input path="letterToParentExcell" type="file"
																accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
																class="upload" onclick="showUploadForm()" /> --%>
																<input type="button" value="Import From Excel" name="buttCustomerForm" id="Upload_data_sec" class="change_trackbtn_qus browse-btn" onclick="showUploadForm();" style="margin-left: 20px;" >
														<!-- </div> -->
														<div class="new_send-letter" style="width: 43%;">
															<a href="javascript:;" class="js-open-modal blueBtn not-active" role="button"
																data-modal-id="popup2"
																style="text-transform: none; padding: 10px;margin-top: 10px;" onclick="test();" disabled="disabled">Preview
																& Edit Letter</a>
														</div>
														<span >
														<%-- <u><a href="<%=request.getContextPath()%>/NewStyles/sample-excel.xlsx" title="Skip" style="color: green; float: left; width: 40%; text-decoration: underline;" download >Sample Excel</a></u> --%>
														<u><a href="<%=request.getContextPath()%>/NewStyles/pdf/Parent-Letter-PDF.doc" title="Skip" style="float: right; width: 55%; text-decoration: underline; " title="Skip" download >Parent Letter PDF</a></u> 
														<u><a href="<%=request.getContextPath()%>/NewStyles/pdf/Parent-Letter-Spanish.pdf" title="Skip" style="color: green;float: right; width: 55%; text-decoration: underline;" download>Parent Letter Spanish PDF</a></u>
														<u><a href="<%=request.getContextPath()%>/NewStyles/pdf/Photo-Consent-Form.pdf" title="Skip" style="color: green; float: right; width: 55%; text-decoration: underline;" download>Photo Consent Form PDF</a></u> 
														</span>
														
														
													</div>
												</div>

												<div class="videobtn mtop50">
													<%-- <input type="button" value="VIEW LETTER"  class="blueBtn mright15" onclick="location.href = '<%=request.getContextPath()%>/teacher/teacher-dash-step4';"/> --%>
													<!-- <a href="#term-condition"  title="VIEW LETTER" class="fancybox blueBtn mright15">VIEW LETTER</a> -->

													<form:hidden path="content" id="content_id" />



													<!-- <a href="javascript:;" class="js-open-modal blueBtn" data-modal-id="popup2">SEND LETTER</a> -->
													<%-- <a href="<%=request.getContextPath()%>/teacher/teacher-dash-step4"  title="Skip" class="fancybox blueBtn mright15">SKIP</a> --%>
													<!-- <input type="submit" value="SEND LETTER" title="SEND LETTER" class="blueBtn"/> -->
												</div>

											</form:form>

										</div>
									</div>
								</div>
							</section>
							<!--TAB 3 ENDS-->

							<div id="tab4" style="display: none;">

								<div class="ourStory-Popup" id="letterToParentDashTrack">
									<!-- <h4>Track Invite</h4> -->
									<div class="ur_grid ur_grid_pop">

										<table class="table table-striped table-bordered table-hover"
											id="sample_7">
											<thead>
												<tr>
													<th class="center"><strong>Parent Email</strong></th>
													<th class="center"><strong>Date of Invitation</strong></th>
													<th class="center"><strong>Name</strong></th>
													<th class="center"><strong>Status</strong></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
												</tr>
											</thead>
											<tbody></tbody>
										</table>


									</div>

								</div>

							</div>
						</div>

						<!--TAB 4 ENDS-->
					</div>
				</div>
				<!--misc tabs end-->


			</div>
		</div>
		<!--admin_dashboard ends-->

		<!--inner_header ends-->

	</div>
	<!--inner_wrapper ends-->
	</div>

<%-- 	<div class="step4-expOuter width100 fl " id="upload_div" style="display:none">
				<form method="POST" id="Upload_file" action="uploadFile" enctype="multipart/form-data">
				<h3>Upload Excel</h3> <input type="file" name="file" required="">
 				Name: <input type="text" name="name"><br>
 				<input type="submit" class="upload_btn" value="Upload"> Press here to upload the file!
				<a href="<%=request.getContextPath()%>/NewStyles/sample-excel.xlsx" title="Skip" style="color: green; float: left; width: 40%; text-decoration: underline;" download >Sample Excel</a>
				</form>	
	</div> --%>	
	<div class="step4-expOuter width100 fl " id="upload_div" style="display:none">
	<form method="POST" id="Upload_file" action="uploadFile" enctype="multipart/form-data">
	
	<h3>Upload Excel</h3> <input type="file" name="file" required="">
	<br>
 	Name: <input type="text" name="name" required=""><br>
 	<input type="submit" class="upload_btn" value="Upload" > Press here to upload the file!
	<a href="<%=request.getContextPath()%>/NewStyles/sample-excel.xlsx" title="Skip" style="color: green; float: left; width: 40%; text-decoration: underline;" download >Sample Excel</a>
	</form>	
	</div>			
	<div id="popup2" class="modal-box-letter-parent" style="display:none !important;">
		<div class="modal_change_track_new">
			<div class="modal_bodycont">
				<a class="cls-btn js-modal-close close_fb" style="text-indent: 0;"
					href="javascript:;" >X</a>
				<form:form role="form" class="register-form"
					action="saveProgramAudioTrack" enctype="multipart/form-data"
					modelAttribute="dtoProgramsAudio" method="post">
					<h5>Letter To Parent</h5>
					<input type="hidden" name="audioId" value="0" />
					<input type="hidden" id="addTrackProgramId" name="programId"
						class="input_upl_track" />
					<div class="change_track_qus">
						<!-- <label>Suggested Questions</label> -->
						<div class="inputcontain">
							<textarea rows="60" cols="88" name="letterContentId"
								id="letterContentId" class="ckeditor">

								<p>Dear Family,</p>
								
								<p>Our classroom is starting a new program called Inner Explorer to help students develop an increased focus, self-awareness, self-control and resilience; all critical skills for success in school. In additional to these benefits, several studies have also demonstrated students' improved academic performance, behavioral aptitude, and well-being as a result of this training.</p>
															
								<p>Each day, our class will participate in a 7-10 minute program delivered via computer and speaker in the classroom. The sessions will take place during normal transition times without changing the regular school curriculum. The sessions focus on breathing and relaxation as well as awareness of senses, thoughts, emotions, choices and connection to others.</p>
															
								<p>Parents have the ability to 'listen in' to practice sessions in real time as the audio tracks are played in your child's classroom. You will have the option to "opt in" and receive email alerts when our class begins the daily practice, complete with a link that will take you to the audio track so you can listen along with us. You can also access the session later in the day if you aren't able to listen when the practice begins. To participate in our class' mindfulness sessions click <a
										href="http://innerexplorer.org/ie/parent-edition?id=##TEACHERID##">Here</a>.</p>
															
								<p>We are thrilled to be participating in a program that has shown benefits across a wide spectrum of applications, especially in education. Currently several agencies are funding research on attention and awareness training because the practices are easy to learn, require very little equipment, have no side effects and show significant enhancements to cognitive function and decreases in stress response.</p>
															
								<p>You'll be happy to hear that classrooms are not the only places that implement mindful awareness programs! The National Institute of Health (NIH) is funding attention and awareness research to improve health and reduce conditions including depression, anxiety and ADHD. The US Department of Education is funding research to improve academic achievement and behavioral competence. The US Army is funding this research to help our troops improve their working memory capacity to make better decisions while on the front lines. </p>
								
								<p>To learn more about this program from Inner Explorer and to find more resources, including books for parents and students, visit <a
										href="www.InnerExplorer.org">www.InnerExplorer.org.</a>
								</p>
								
								</textarea>
							<input type="button" value="SEND LETTER" title="SEND LETTER"
								class="change_trackbtn_qus" onclick="sendLetter()" /> <label>This
								letter can be edited in this space only.Changes made will be
								emailed when you click "Send Letter" but will not be saved to
								the Parent Letter once you exit this dialogue box.To remember
								the changes you made,consider adding your email to the
								distribution list. </label><br></br> <br></br>
							<!-- <input type="button" value="Send" class="change_trackbtn_qus" onclick="sendLetter();"> -->
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
			<script
		src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
	<%@include file="../footer.jsp"%>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/bootstrapcdn.js"></script>
		
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/ckeditor/ckeditor.js"></script>
	<script type="text/javascript">	
function fileupload(){
 	  alert("The file has been Uploaded.Click Submit");
	   		
   }  
	jQuery(document).ready
	(function($){
		
	      var letterSatus = '${letterSent}'; 
	      if(letterSatus == 'true'){
	    	  alert("Letter to parents sent successfully.");
	    	  '<c:remove var="letterSent"/>';
	      }
	      if(letterSatus == 'false'){
	    	  alert("Letter to parents message failed.");
	    	  '<c:remove var="letterSent"/>';
	      }

		$('#tokenfield')

		  .on('tokenfield:createtoken', function (e) {
			
			  $(".new_send-letter a").addClass("active");
		    var data = e.attrs.value.split('|')
		    e.attrs.value = data[1] || data[0]
		    e.attrs.label = data[1] ? data[0] + ' (' + data[1] + ')' : data[0]
		  })

		  .on('tokenfield:createdtoken', function (e) {
		    // Über-simplistic e-mail validation
		 
		    var re = /\S+@\S+\.\S+/
		    var valid = re.test(e.attrs.value)
		    if (!valid) {
		      $(e.relatedTarget).addClass('invalid')
		    }
		  })

		  .on('tokenfield:edittoken', function (e) {
			  
		    if (e.attrs.label !== e.attrs.value) {
		      var label = e.attrs.label.split(' (')
		      e.attrs.value = label[0] + '|' + e.attrs.value
		      if($("#tokenfield").val()="")
				  $(".new_send-letter a").addClass("not-active");
		    }
		    
		  })

		  .on('tokenfield:removedtoken', function (e) {
			 
			  if($("#tokenfield").val()="")
			  $(".new_send-letter a").addClass("not-active");
		    alert('Token removed! Token value was: ' + e.attrs.value)
		  })

		  .tokenfield()
		
			$.daisyNav();
		$('[data-toggle="tooltip"]').tooltip();
		
		
		jQuery.validator.addMethod("notEqual", function(value, element) {
			var status = true;
			$('[id^=parentEmail_]').each( function( index, el ){
				if(($( el ).val() == value) && $( el ).attr("id") != $(element).attr("id") ){
					status = false;
				}
			});
			  return this.optional(element) || status;
			}, "Please use unique email address.");
		
		
		
	});
	</script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>

	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/bootstrap-tokenfield.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/select2/select2.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script>
	<script language="javascript" type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/tab.js"></script>
	<script type="text/javascript">
function sendLetter(){
	/* var value = CKEDITOR.instances['letterContentId'].getData();
	alert(value); */
$("#content_id").val(CKEDITOR.instances['letterContentId'].getData());
/* alert($("#content_id").val()); */
$("#letterToParent").submit();
}	

function initDialog(){
	
	var appendthis =  ("<div class='modal-overlay js-modal-close'></div>");

		$('a[data-modal-id]').click(function(e) {
			e.preventDefault();
	    $("body").append(appendthis);
	    $(".modal-overlay").fadeTo(500, 0.7);
	    //$(".js-modalbox").fadeIn(500);
			var modalBox = $(this).attr('data-modal-id');
			$('#'+modalBox).fadeIn($(this).data());
		});  
	  
	  
	$(".js-modal-close, .modal-overlay").click(function() {
	    $(".modal-box-letter-parent, .modal-overlay").fadeOut(500, function() {
	        $(".modal-overlay").remove();
	    });
	 
	});
	 
	$(window).resize(function() {
	    $(".modal-box-letter-parent").css({
	        top: ($(window).height() - $(".modal-box-letter-parent").outerHeight()) / 7,
	        left: ($(window).width() - $(".modal-box-letter-parent").outerWidth()) / 2
	    });
	});
	 
	$(window).resize();


	}
    $(function(){
    	initDialog();
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


</script>


	<script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
      TableManaged.init();
      $.ajax({
  		url : "<%=request.getContextPath()%>/superadmin/liveClassesListCount/",
  		success : function(result) {
  			$("#liveClassesCount").html(result);
  		}
      });
    });
    
    function showTab(current,max){
		for (i=1;i<=max;i++){
		getMyHTMLElement('tab' + i).style.display = 'none';
		getMyHTMLElement('mtab' + i).className = '';
		
		
		
		}
		getMyHTMLElement('tab' + current).style.display = '';
		getMyHTMLElement('mtab' + current).className = 'selected';
		
		/* if(current==2){
			displayMasterVectorMap();
		} */
		
		
		}
    
    function addMoreClass(programId,index){
    	var divId = index + 1;
    	var htmlContents='<a title="Remove" onclick="removeClassDetails('+programId+','+ index + ');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></a>';
    	$($("#removeLast_"+programId+"_" + index + '')).empty();
    	$($("#removeLast_"+programId+"_" + index + '')).html(htmlContents);
    	$("#addMoreClass_"+programId).remove();
    	$("#parentInfo_"+programId).append('<div id="divSection_'+programId+'_'+ divId + '">'+
    			
        '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
        '<input type="text" name="parentEmail_'+programId+'_'+ divId +'" placeholder="Parent Email*" class="ignore1"  id="parentEmail_'+programId+'_'+ divId + '"/></div></div></div>'+
        '</li>'+
        '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
        '<input type="text" name="parentMobile_'+programId+'_'+ divId +'" placeholder="Parent Mobile"   class="ignore1" id="parentMobile_'+programId+'_'+ divId + '" /></div></div></div></li>'+
        '<li><div class="input_relative"><div class="input_add_logo width-less"><div class="contact-row"><div class="outer-field-wrap">'+
        '<div class="outer-field"><input placeholder="Name" type="text" name="comments_'+programId+'_'+ divId +'" id="comments_'+programId+'_'+ divId +'" class="ignore1"/></div></div></div></div>'+
        '<div class="plusImg" id="removeLast_'+programId+'_'+divId+'"><a style="margin: 0 10px 0 0;" onclick="removeClassDetailsLast('+programId+','+ divId +');" id="removeParent_'+programId+'">'+ 
        '<img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></a><a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'">'+
        '<img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a></div>'+
        '</div></li><div class="contact-row" style="height: 10px;"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" id="programId_'+programId+'_'+ divId +'" name="programIds"/>'+
		'</div></div></div>');

    }

    function removeClassDetails(programId,index){
    	$($("#divSection_"+programId+"_" + index + '')).remove();
    	if($('[id^=removeLast_'+programId+'_]').length == 1){
    		var divId = $('[id^=removeLast_'+programId+'_]').attr('id').replace('removeLast_'+programId+'_','');
    		$('[id^=removeLast_'+programId+'_]').empty('');
    		$('[id^=removeLast_'+programId+'_]').html('<a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a>');
    	}

    }

    function removeClassDetailsLast(programId,index){
    	var previous = index - 1;
    	var htmlContents = '<a style="margin: 0 10px 0 0;" onclick="removeClassDetailsLast('+programId+','+ previous + ');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></a><a onclick="addMoreClass('+programId+','+ previous +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a>';
    	
    	$($("#divSection_"+programId+"_" + index + '')).remove();
    		while($("#removeLast_"+programId+"_" + previous + '').length == 0){
    			previous--;
    			if(previous == 0)
    			break;
    		}
    		if(previous != 0){
    			$($("#removeLast_"+programId+"_" + previous + '')).empty();
    			$($("#removeLast_"+programId+"_" + previous + '')).html(htmlContents);
    		}else{
    			$($("#removeLast_"+programId+"_" + previous + '')).empty();
    			$($("#removeLast_"+programId+"_" + previous + '')).html('<a onclick="addMoreClass('+programId+','+ previous +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a>');
    		}
        	if($('[id^=removeLast_'+programId+'_]').length == 1){
        		var divId = $('[id^=removeLast_'+programId+'_]').attr('id').replace('removeLast_','');
        		$('[id^=removeLast_'+programId+'_]').empty();
        		$('[id^=removeLast_'+programId+'_]').html('<a onclick="addMoreClass('+programId+','+ previous +');"  id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a>');
        	}
    }
    function sendingEmailToParents(){
    	
    	$("#saveLetterEmail").validate({ ignore: []});
    	$("#saveLetterEmail").validate();

    	$('[id^=parentMobile_]').each( function( index, el ) {
    	    $( el ).rules('add', {
    	    	/* required: true, */
        		minlength : 10,
        		maxlength : 30
        		//digits	: true
        	});
    	});
    	$('[id^=parentEmail_]').each( function( index, el ) {
    	    $( el ).rules('add', {
        	    required: true,
        	    email: true,
        	    /* emailAlreadyExist: true, */
        	    notEqual:true
        	});
    	});

    	
    	if($("#saveLetterEmail").valid()){
    		//alert("hiiii"+true);
    		
    		$('[id^=parentMobile_]').each( function( index, el ) {
    			$( el ).attr('name',"parentMobile");
    		});
    		$('[id^=parentEmail_]').each( function( index, el ) {
    			$( el ).attr('name',"parentEmail");
    		});
    		$('[id^=comments_]').each( function( index, el ) {
    			$( el ).attr('name',"comments");
    		});
    		 $("#saveLetterEmail").submit();
    		return true;
    	}else{
    		return false;
    	}

    }
    function getPlaybackAPI(teacherId){
    	
    	//$("#schoolId").val(teacherId);
    	
    		$("#sample_6").dataTable().fnDestroy();
    		$("#sample_6").html('');
    	   var url='<%=request.getContextPath()%>/teacher/getLetterToParentDetails';
    	  
    		$.ajax({
    			url:url,
    			method:'POST',
    			async :false,
    			data:{teacherId:teacherId},
    			cache:false,
    			success:function(response){
    				
    				if(response != null  && response.modelMap.dtoUsers!=null){
    					var audioQualityDetail='';
    					audioQualityDetail+='<thead><tr><th class="center"><strong >Parent Email</strong></th>'+
    					'<th class="center"><strong >Date of Invitation</strong></th>'+
    					'<th class="center"><strong >Name</strong></th>'+
    					'<th class="center"><strong >Status</strong></th>'+
    					'<th style="display:none;"></th><th style="display:none;"></th></tr></thead><tbody>';
    					
    					$.each( response.modelMap.dtoUsers, function(index,value) {
    						audioQualityDetail+='<tr><td ><p>'+value.email+'</p></td>'+
    						'<td ><p>'+value.timeZone+'</p></td>'+
    						'<td ><p>'+value.commnets+'</p></td>'+
    						'<td><p>'+value.title+'</p></td>'+
    						'<td style="display:none;"></td><td style="display:none;"></td></tr>';
    					});
    		    	
    		    	audioQualityDetail+='</tbody>';
    		    	
    			$("#sample_6").html(audioQualityDetail);
    		    $("#sample_6").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
    				
    				/*  $.fancybox({
    					 'minWidth':900,
    					 'padding':45,
    					 'minHeight':150,
    				     'autoScale': true,
    				     'autoDimensions': true,
    				     'centerOnScroll': true,
    				     'href' : '#letterToParentDashTrack'
    				  }); */
    	
    				}
    			}
    		});
    }
 function getPlaybackAPIP(teacherId){
    	
    	//$("#schoolId").val(teacherId);
    	
    		$("#sample_7").dataTable().fnDestroy();
    		$("#sample_7").html('');
    	
    	   var url='<%=request.getContextPath()%>/teacher/getTunedInParentDetails';
    	 
    	   $.ajax({
   			url:url,
   			method:'POST',
   			async :false,
   			data:{teacherId:teacherId},
   			cache:false,
   			success:function(response){
   				
   				if(response != null  && response.modelMap.dtoUsers!=null){
   					var audioQualityDetail='';
   					audioQualityDetail+='<thead><tr><th class="center"><strong >Parent Email</strong></th>'+
   					'<th class="center"><strong >Date of Invitation</strong></th>'+
   					'<th class="center"><strong >Name</strong></th>'+
   					'<th class="center"><strong >Status</strong></th>'+
   					'<th style="display:none;"></th><th style="display:none;"></th></tr></thead><tbody>';
   					
   					$.each( response.modelMap.dtoUsers, function(index,value) {
   						audioQualityDetail+='<tr><td ><p>'+value.email+'</p></td>'+
   						'<td ><p>'+value.timeZone+'</p></td>'+
   						'<td ><p>'+value.commnets+'</p></td>'+
   						'<td><p>'+value.title+'</p></td>'+
   						'<td style="display:none;"></td><td style="display:none;"></td></tr>';
   					});
   		    	
   		    	audioQualityDetail+='</tbody>';
   		    	
   			$("#sample_7").html(audioQualityDetail);
   		    $("#sample_7").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
   				
   				/*  $.fancybox({
   					 'minWidth':900,
   					 'padding':45,
   					 'minHeight':150,
   				     'autoScale': true,
   				     'autoDimensions': true,
   				     'centerOnScroll': true,
   				     'href' : '#letterToParentDashTrack'
   				  }); */
   	
   				}
   			}
   		});
    }
 function showUploadForm(){
	 $.fancybox({
	     'autoScale': true,
	     'autoDimensions': true,
	     'centerOnScroll': true,
	     'href' : '#upload_div'
	  });
}
 
  </script>
  <script>function hello(){
		 var test= ${user};
		 alert('value'+test); 
	}
  </script>
  
  <script  type="text/javascript">
  $(document).ready(function(){
	 // alert("hello")
	   var emaillist=${param.emaillist};
	   //alert("hi"+a);
	  
	 //var a=${"emailList"};
	  $("#tokenfield-tokenfield")[0].value = emaillist
	
			alert(a);
	  
		
	});
  </script>
</body>
</html>
