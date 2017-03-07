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
<title>Change Class</title>
<c:if test="${companyName eq '1'}">
	<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<c:if test="${companyName eq '2'}">
	<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<style type="text/css">
</style>
</head>
<body>
	<div class="wrapper">
	 <%@include file="header.jsp" %>
	</div>
    <div  id="bestPracticePopUp" class="playback-Popup width100" style="display: none; max-width:auto;">
           <div class="playback-Popup-head"><h3>Choose a class to proceed</h3></div>
           <div class="prac-prog-con">
                    <!--Box-->
                    <c:forEach var="practiceProgress" items="${practiceProgresses}" >
                    <div class="mtop20 box-start-pract bdr-radius-6 position-relative ">
                    	<div class="box-hdr"><span class="level-image">
						              <c:if test="${practiceProgress.schoolLogo eq '' || practiceProgress.schoolLogo eq null}">
						              	<img src="<%=request.getContextPath()%>/NewStyles/images/school-default.jpg" class="level-image" alt=""/>
						              </c:if>
						              <c:if test="${practiceProgress.schoolLogo ne '' && practiceProgress.schoolLogo ne null}">
						              	<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${practiceProgress.schoolLogo}" class="level-image" alt=""/>
						              </c:if>
                    	${practiceProgress.className}</span></div>
                        <div class="box-txt">
                            	<div class="box-rt padding-btm-zero width100">
                                <div class="crnt-track font-size-13  padding-btm-zero">
                                	<div class=" padding-btm-2 ptop-btm-5">Current Track: <span>${practiceProgress.currentTrackDay} ${practiceProgress.currentTrackName}</span></div>
									<div class=" ptop-btm-5">Elementary : <span>${practiceProgress.programName }</span></div>
									<div class="avgRating  font-size-13  font-clr-grey">
                                	<div class="stars margin-bottom-ten">Average Engagement Level :
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
                               <div class="box-lt bdr-radius-6 bg-clr-none width100 height-auto padding-only-btm10">
                                <div class="atc width48 ptop-btm-5 bdr-topbtm">
                                	<div class="avg ">
                                    	<div class="img"><img src="<%=request.getContextPath()%>/NewStyles/images/totalNum-icon-blk.png" alt=""></div>
                                        <div class="imgtxt font-clr-grey">Total number of sessions</div>
                                    </div>
                                    <div class="avg-total font-clr-grey">
                                    	<span class="font-drk-grey">${practiceProgress.audioCount}</span>
                                        Sessions
                                    </div>
                                </div>
                                <div class="atc width48 ptop-btm-5 bdr-topbtm btn-right">
                                	<div class="avg">
                                    	<div class="img"><img src="<%=request.getContextPath()%>/NewStyles/images/course-completion-icon-blk.png" alt=""></div>
                                        <div class="imgtxt font-clr-grey">Course Completion</div>
                                    </div>
                                    <div class="avg-total font-clr-grey">
                                    	<span class="font-drk-grey">${practiceProgress.completeStatus}</span>
                                        Percent
                                    </div>
                                </div>
                            </div>
                            </div>
                            <div class="strt-practice-btn">
                            		<div class="btns-outer mtop10 margin-bottom-ten">
									<div>
                                  <c:if test="${practiceProgress.pendingFeedbacks != 0}"> 
                                 <div class="btns-outer width-auto margin-bottom-ten position-rltv float-none">
                                 Pending Feedbacks 
                                 <span class="notification-feedback-tab float-none"><a style="cursor: pointer;" onclick="pendingFeedback(${practiceProgress.classTeacherRelationId});"><p>${practiceProgress.pendingFeedbacks}</p></a></span>
								</div>
								<form action="${pageContext.request.contextPath}/teacher/pendingFeedback" method="GET" id="pendingFeedbackForm">
				                  	<input type="hidden" id="classTeacherRelationPendingFeedBackId" name="classTeacherRelationPendingFeedBackId"/>
				                 </form>
								</c:if>  
                                    </div>
										<input class="submit-btn width150px" type="button" value="START PRACTICE" onclick="startClass('${practiceProgress.classTeacherRelationId}','${practiceProgress.schoolExpiryStatus}');">
									</div>
                            </div>
                        </div> 
                  	</c:forEach>
                  	<form action="${pageContext.request.contextPath}/teacher/mindful-practice-new" method="GET" id="startClass">
                  	<input type="hidden" id="classTeacherRelationId" name="classTeacherRelationId"/>
                  	<input type="hidden" id="strtPrac" name="strtPrac" value="Y"/>
                  	<input type="hidden" id="schoolExpiryStatus" name="schoolExpiryStatus" value=""/>
                  	</form>
                    </div>
</div>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="../footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript">	
   function startClass(classTeacherRelationId,schoolExpiryStatus){
	   $("#classTeacherRelationId").val(classTeacherRelationId);
	   $("#schoolExpiryStatus").val(schoolExpiryStatus); 
	   $("#startClass").submit();
   }
   function pendingFeedback(classTeacherRelationId){
	   $("#classTeacherRelationPendingFeedBackId").val(classTeacherRelationId);
	   $("#pendingFeedbackForm").submit();
   }
	jQuery(document).ready
	(function($){
		openBestPracticePopUp();
		$("#header").sticky({ topSpacing: 0 });
		$.daisyNav();
	});
</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script> 
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
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
function closePopup(){
	window.location.href='<%=request.getContextPath()%>/teacher/';
}
function openBestPracticePopUp(){
	 $.fancybox({
		 'minWidth':120,
 		 'padding':10,
 		 'minHeight':80,
		 'autoScale': true,
	     'autoDimensions': true,
	     'centerOnScroll': true,
 	     'href' : '#bestPracticePopUp',
 	    helpers : { 
 	    	  overlay : {closeClick: false}
 	    	},
 	    keys : {
 	    	    close  : null
 	    	  },
 	  /*  onClose:function(){
                 $(window).trigger('fancyboxClosed');
             } */
 	    	 beforeClose:function(){closePopup();}
 	   
 	  });
}
</script>
</body>
</html>
 