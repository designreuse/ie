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
<title>Practice Progress</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css"> --%>
	<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/select2/select2_metro.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>

<body>
<spring:eval var="bucketPath" expression="@propertyConfigurer.getProperty('bucket_path')" />
	<div class="wrapper">
<%@include file="header.jsp" %>
	  <!--<section class="slider-inner">
			<img src="images/browse-donation-header.jpg" alt="Slider" />
		</section>-->

		<section class="makeDonateSct">
			<div class="container">
			
        
         <div class="pracProgress_hdr">
            <h2>Practice Progress and Utilization Dashboard</h2>
            <div class="green_line_btm"></div>

            </div>
   
				<div class="clr"></div>
                <div class="prac-prog-con">
                	<div class="total-prog">Total Progress : ${totalProgress}%</div>
                    <!--Box-->
                     <c:forEach items="${practiceProgresses}" var="practiceProgress">
                    <div class="box bdr-radius-6 margin-bottom-ten">
                    	<div class="box-hdr">${practiceProgress.className} : ${practiceProgress.programName } </div>
                        <div class="box-txt">
                        	<!--Box Left-->
                        	<div class="box-lt bdr-radius-6  mtop20">
                            	<div class="atc">
                                	<div class="avg">
                                    	<div class="img"><img src="<%=request.getContextPath()%>/NewStyles/images/avg-icon.png" alt=""></div>
                                        <div class="imgtxt">Average Duration</div>
                                    </div>
                                    <div class="avg-total">
                                    	<span>10</span>
                                        Minutes
                                    </div>
                                </div>
                                <div class="atc">
                                	<div class="avg">
                                    	<div class="img"><img src="<%=request.getContextPath()%>/NewStyles/images/totalNum-icon.png" alt=""></div>
                                        <div class="imgtxt">Total number of sessions</div>
                                    </div>
                                    <div class="avg-total">
                                    	<span>${practiceProgress.audioCount}</span>
                                        Sessions
                                    </div>
                                </div>
                                <div class="atc">
                                	<div class="avg">
                                    	<div class="img"><img src="<%=request.getContextPath()%>/NewStyles/images/course-completion-icon.png" alt=""></div>
                                        <div class="imgtxt">Course Completion</div>
                                    </div>
                                    <div class="avg-total">
                                    	<span>${practiceProgress.completeStatus}</span>
                                        Percent
                                    </div>
                                </div>
                            </div>
                            <!--//Box Left-->
                            <div class="box-rt">
                            	<div class="img-row">
                                	<div class="img">
						              <c:if test="${practiceProgress.teacherImage eq '' || practiceProgress.teacherImage eq null}">
						              	<a href="mailto:${practiceProgress.teacherEmail}" target="_top"><img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png"  alt=""/></a>
						              </c:if>
						              <c:if test="${practiceProgress.teacherImage ne '' && practiceProgress.teacherImage ne null}">
						              	<a href="mailto:${practiceProgress.teacherEmail}" target="_top"><img src="<%=request.getContextPath()%>/NewStyles/images/teacher-profile/${practiceProgress.teacherImage}"  alt=""/></a>
						              </c:if>
                                	</div>
                                    <div class="imgTxt">${practiceProgress.teacherName }</div>
                                </div>
                                <div class="crnt-track">
                                	<div>Current Track <span></span></div>
									<div><span>${practiceProgress.currentTrackName}</span></div>
									
									<a href="javascript:;" style="display: inline-block;
   									 margin-top: 10px;" class="js-open-modal blueBtn praprog-btn" onclick="getAudioDetail('${practiceProgress.classTeacherRelationId}');" data-modal-id="popup1">PLAY TRACK</a> 
                                </div>
                                <div class="avgRating">
                                	Average Engagement level
                                	<div class="stars">
							        	<c:forEach var="i" begin="1" end="${practiceProgress.avgRating}" step="1">
							            	<img src="<%=request.getContextPath()%>/NewStyles/images/star-table-yellow.png" alt="">
							           </c:forEach>
							           <c:forEach var="i" begin="${practiceProgress.avgRating}" end="4" step="1">
							                <img src="<%=request.getContextPath()%>/NewStyles/images/star-table-grey.png" alt="">
							            </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    <!--//Box-->

                </div>
				
				
				
                
			
			</div>
		</section>
	</div>
	
	<div id="popup1" class="modal-box">
		<div class="modal_change_track">
			<div class="modal_bodycont">
				<a class="cls-btn js-modal-close close_fb" href="javascript:;">X</a>
				<h5>Track of the Day</h5>

				<div class="change_track_ph">
					<span id="trackDesc"></span>
					<audio id="audioId" controls class="width100">
						<source id="trackSrc" type="audio/mpeg"></source>
					</audio>
				</div>
				<div id="bnsTrack" style="display: none;">
					<h5>Bonus Track</h5>
					<div class="change_track_ph">
						<span id="trackDescBns"></span>
						<audio id="audioIdBns" controls>
							<source id="trackSrcBns" type="audio/mpeg"></source>
						</audio>
					</div>
				</div>
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
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$("#header").sticky({ topSpacing: 0 });
		$.daisyNav();
		initDialog();
	});
	</script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script> 
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>

   <script type="text/javascript">
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
    
    
function getAudioDetail(classteacherRelationId){
    	
    	var classteacherRelationId=classteacherRelationId;
    	
    	   var url='<%=request.getContextPath()%>/principal/getAudioDetail';
   		$.ajax({
   			url:url,
   			method:'POST',
   			async :false,
   			data:{classteacherRelationId:classteacherRelationId},
   			cache:false,
   			success:function(response){
   				
   				var src='${bucketPath}/audioFiles/'+response; 
   				
   				  $("#trackDesc").html(response);
   		    	$("#trackSrc").attr("src",src);
   		    	var audioId=document.getElementById("audioId");
   		    	audioId.load();
   		    	$("#bnsTrack").hide();
   		    	$(window).scrollTop(0);
   			}
   		});
    	
    	

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
    	    $(".modal-box, .modal-overlay").fadeOut(500, function() {
    	        $(".modal-overlay").remove();
    	    });
    	 
    	});
    	 
    	$(window).resize(function() {
    	    $(".modal-box").css({
    	        top: ($(window).height() - $(".modal-box").outerHeight()) / 2,
    	        left: ($(window).width() - $(".modal-box").outerWidth()) / 2
    	    });
    	});
    	/*$("#popup3").css({
            top: ($(window).height() - $(".modal-box").outerHeight()) / 3.4
    	});*/
    	$(window).resize();
    	
    	}
	
</script>

</body>
</html>
