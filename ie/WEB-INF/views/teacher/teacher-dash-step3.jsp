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
<title>Step-3</title>
    <c:if test="${companyName eq '1'}">
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<c:if test="${companyName eq '2'}">
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style-dev.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">


<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap-tokenfield.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/tokenfield-typeahead.css">

<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
</head>

<body>
	<div class="wrapper">
		<header id="header">
			<div class="container "> 
				<div class="logo">
					<a href="<%=request.getContextPath()%>/teacher/endTour" title="">
<%-- 					<img src="<%=request.getContextPath()%>/NewStyles/images/logo.jpg" alt="Logo" title="logo" /> --%>
					</a>
				</div>
				<div class="hdRight">
	                <div class="startRight">
	                	<p>Welcome, ${loginName}</p>
							<%-- <input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout';" class="startBtn hdr-btn-clr"/> --%>
							 	<c:if test="${companyName eq '1'}">
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout?name=teacher&userIdForLogout=${userIdForLogout}';" class="startBtn hdr-btn-clr"/>
						</c:if>
						<c:if test="${companyName eq '2'}">
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout?name=teachercrim';" class="startBtn hdr-btn-clr"/>
						</c:if>
					</div>
            	</div>
			</div>
		</header>
		<%-- <section class="slider-inner">
			<img src="<%=request.getContextPath()%>/NewStyles/images/slider1.jpg" alt="Slider" />
		</section> --%>

		<section class="tehDsh-step1 mtop-5">
			<div class="containerSmall">
			<form:form name="letterToParent" id="letterToParent" modelAttribute="dtoOwner" action="sendletter" method="POST" enctype="multipart/form-data">
				<h2>Training Resources</h2>
				<div class="green_line_btm"></div>
				<!-- <h3>Training Resources</h3> -->
				<%-- <div class="steplist">
					<img src="<%=request.getContextPath()%>/NewStyles/images/teacher-step3.png" alt="Steps" />
				</div> --%>
				
				<div class="round-steps-outer">
				<div class="chain">
			    	<ul>
			        	<li>
			            	<a href="<%=request.getContextPath()%>/teacher/teacher-dash-step1">
			            		<h3>1</h3>
			                	<p>Go through Training Video</p>
			                </a>
			            </li>
			            <li class="chain-clr-grn">
			            	<a href="<%=request.getContextPath()%>/teacher/teacher-dash-step2">
			            		<h3>2</h3>
			                	<p>Introduce the Concept to Class</p>
			                </a>
			            </li>
			            <li class="chain-clr-grn">
			            	<a href="<%=request.getContextPath()%>/teacher/teacher-dash-step5">
			            		<h3>3</h3>
			                	<p>Training Resources</p>
			                </a>
			            </li>
<%-- 			            <c:if test="${firstLogin == 'N'}">
			            <li class="chain-clr-grn">
			            	<a href="<%=request.getContextPath()%>/teacher/teacher-dash-step3">
			            		<h3>4</h3>
			                	<p>Letters to Parents</p>
			                </a>
			            </li>
			            </c:if> --%>
			            <li>
			            	<a href="<%=request.getContextPath()%>/teacher/teacher-dash-step4">
<%-- 			            		<c:if test="${firstLogin == 'N'}">
			            			<h3>5</h3>
			            		</c:if>
			            		<c:if test="${firstLogin == 'Y'}"> --%>
			            			<h3>4</h3>
			            		<%-- </c:if> --%>
			                	<p>Join the Community</p>
			                </a>
			            </li>
			            
			             <li>
			            	<a href="<%=request.getContextPath()%>/teacher/teacher-dash-step6">
			            		<h3>5</h3>
			                	<p>Recommended Best Practices</p>
			                </a>
			            </li>
			        </ul>
			    </div>
			    </div>
			    
				<div class="clr"></div>
				<div class="techForm">
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
						<div class="bs-example multi-input">
					                	<form:input path="parentEmails" type="text" class="form-control" id="tokenfield" placeholder="Enter Email and press tab" />
					              </div>
					</div>

					<!-- <input type="button" value="Go" class="startBtn fl"/> -->
				</div>
				
				<div class="step4-export">
					<div class="step4-expOuter">
						<label>Import List from Excel</label>
						<div class="fileUpload browse-btn">
							<span>BROWSE</span>
							<form:input path="letterToParentExcell" type="file" accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" class="upload" />
						</div>
						<span style="float:right;width: 38%;"><u><a href="<%=request.getContextPath()%>/NewStyles/sample-excel.xlsx"  title="Skip" style="color:green;" download>Sample Excel</a></u></span>
					</div>
				</div>
				
				<div class="videobtn mtop50">
					<%-- <input type="button" value="VIEW LETTER"  class="blueBtn mright15" onclick="location.href = '<%=request.getContextPath()%>/teacher/teacher-dash-step4';"/> --%>
					<!-- <a href="#term-condition"  title="VIEW LETTER" class="fancybox blueBtn mright15">VIEW LETTER</a> -->
					
					<form:hidden path="content" id="content_id"/>

					
					
					<a href="javascript:;" class="js-open-modal blueBtn" data-modal-id="popup2">SEND LETTER</a>
					<a href="<%=request.getContextPath()%>/teacher/teacher-dash-step4"  title="Skip" class="fancybox blueBtn mright15">SKIP</a>
					<!-- <input type="submit" value="SEND LETTER" title="SEND LETTER" class="blueBtn"/> -->
				</div>
				</form:form>
			</div>
		</section>
	</div>
	
	
	<div id="popup2" class="modal-box-letter-parent">
		<div class="modal_change_track_new">
			<div class="modal_bodycont">
				<a class="cls-btn js-modal-close close" href="javascript:;">X</a>
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
							<textarea rows="60" cols="88" name="letterContentId" id="letterContentId"
								class="ckeditor">

								<p>Dear Family:</p>
								
								<p>Our classroom is starting a new program called Inner Explorer, to help students develop focus, self-awareness, self-control and resilience, all critical skills for success in school. In addition to these benefits, several studies have also demonstrated student's improved academic performance, behavioral aptitude, and well-being as a result of this training.</p>
															
								<p>Each day, the class will participate in a 7-10 minute program delivered via a computer and speaker in the classroom. The sessions will take place during normal transition times without changing the regular school curriculum. The sessions focus on breathing and relaxation as well as awareness of senses, thoughts, emotions, choices and connection to others.</p>
															
								<p>We are thrilled to be participating in a program that has shown benefits across a wide spectrum of applications, especially in education. Currently several US agencies are funding research on attention and awareness training because the practices are easy to learn, require very little equipment, have no side effects and show significant enhancements to cognitive function and decreases in stress response.</p>
															
								<p>The National Institute of Health (NIH) is funding attention and awareness research to improve health and reduce conditions including depression, anxiety and ADHD. The US Department of Education is funding research to improve academic achievement and behavioral competence.  The US Army is funding this research to help our troops improve their working memory capacity to make better decisions while on the front lines.</p>
															
								<p>To learn more about this program from Inner Explorer and to find more resources, including books for parents and students, please visit them at www.InnerExplorer.org.</p>
								
								
								</textarea>
								<input type="button" value="SEND LETTER" title="SEND LETTER" class="change_trackbtn_qus" onclick="sendLetter()"/>
							<!-- <input type="button" value="Send" class="change_trackbtn_qus" onclick="sendLetter();"> -->
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	
	
<!-- <div id="term-condition" style="display: none;">
	<div class="product-page product-pop-up">
		<div class="row">
			<div class="col-md-12 col-sm-6 col-xs-3">
				<div class="product-main-image">
					<div id="message"></div>
						<div id="recorder" style="width:600px;">
							<textarea id="letterContentId" cols="80" rows="27" style="font-family: inherit; text-align: justify; padding: 5px 5px 5px 5px;">
Dear Family:

Our classroom is starting a new program called Inner Explorer, to help students develop focus, self-awareness, self-control and resilience, all critical skills for success in school. In addition to these benefits, several studies have also demonstrated student's improved academic performance, behavioral aptitude, and well-being as a result of this training.
							
Each day, the class will participate in a 7-10 minute program delivered via a computer and speaker in the clasroom. The sessions will take place during normal transition times without changing the regular school curriculum. The sessions focus on breathing and relaxation as well as awareness of senses, thoughts, emotions, choices and connection to others.
							
We are thrilled to be participating in a program that has shown benefits across a wide spectrum of applications, especially in education. Currently several US agencies are funding research on attention and awareness training because the practices are easy to learn, require very little equipment, have no side effects and show significant enhancements to cognitive function and decreases in stress response.
							
The National Institute of Health (NIH) is funding attention and awareness research to improve health and reduce conditions including depression, anxiety and ADHD. The US Department of Education is funding research to improve academic achievement and behavioral competence.  The US Army is funding this research to help our troops improve their working memory capacity to make better decisions while on the front lines.
							
To learn more about this program from Inner Explorer and to find more resources, including books for parents and students, please visit them at www.InnerExplorer.org.
								</textarea>
								
					</div>
				</div>
			</div>
		</div>
	</div>
	<input type="button" value="SEND LETTER" title="SEND LETTER" class="blueBtn" onclick="sendLetter()"/>
</div> -->
	
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %>
	<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/ckeditor/ckeditor.js"></script>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
   <script type="text/javascript">	
	jQuery(document).ready
	(function($){
		initDialog()
		$.daisyNav();
		
		$(".fancybox").fancybox();
		
		
		
		$('#tokenfield')

		  .on('tokenfield:createtoken', function (e) {
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
		    }
		  })

		  .on('tokenfield:removedtoken', function (e) {
		    alert('Token removed! Token value was: ' + e.attrs.value)
		  })

		  .tokenfield()
		
		
		
	});
	</script>
	
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
   <script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
   
   <script defer src="<%=request.getContextPath()%>/NewStyles/js/bootstrap-tokenfield.js"></script>
   
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.fancybox.pack.js?v=2.1.5"></script>
   

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
function sendLetter(){
	/* var value = CKEDITOR.instances['letterContentId'].getData();
	alert(value); */
$("#content_id").val(CKEDITOR.instances['letterContentId'].getData());
/* alert($("#content_id").val()); */
$("#letterToParent").submit();
}	
</script>

</body>
</html>
