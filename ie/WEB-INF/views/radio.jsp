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
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Parent</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
</head>

<body>
<spring:eval var="bucketPath" expression="@propertyConfigurer.getProperty('bucket_path')" />
	<div class="wrapper">
	  <%@include file="header.jsp" %>
		<section class="makeDonateSct mtop-5">
			<div class="containerSmall">
         <div class="pracProgress_hdr">
            <h2>Parent Dashboard</h2>
            <div class="green_line_btm"></div>
				<h3 class="teachr_dsh bdr-btm-none">Start your Inner Explorer experience today</h3>
				<div class="clr"></div>
				<div class="check-select-out">
                	<div class="parent-dash-out" style="display:none;" id="notification">
                    	<div class="parent-notf">
                        	<p>Notification on <span>10/11/2015</span> at <span>10:35am</span></p>
                        </div>
                        <div class="parent-track">
                           	<p>You have a new Track to listen.</p>
                            <p>School Name - <span id="schoolName"></span></p>
                            <p>Teacher Name - <span id="teacherName"></span></p>
                        </div>
                        <div class="btns-outer float-none">
							<p>
								<audio style="display:none;" id="currentPlayer" class="music-player_notes" controls="" data-audio-id="14" data-program-id="1" data-length="" data-audio-feedback="">
								<source src="" type="audio/mpeg"></audio>
								<img src="<%=request.getContextPath()%>/NewStyles/images/speaker.gif" alt="Inner Explorer" title="Inner Explorer" id="notify" />
							</p>
						</div>
                    </div>
                </div>
            </div>
			</div>
		</section>
	</div>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
<script type="text/javascript">	
jQuery(document).ready
	(function($){
		$.daisyNav();
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
      
   var intervals =    setInterval(function(){
    	  $.ajax({  
              type : "GET",   
              url : "<%=request.getContextPath()%>/donor/senseAudioPlay",   
               async:true,
              success : function(response) { 
              	if(response.playing != null)
              	{	
              		if(response.playing == 0)
              		{
              			console.log('playing');
              			$.ajax({  
              	          type : "GET",   
              	          url : "<%=request.getContextPath()%>/donor/sendAudioTrackLocationParent",   
              	           async:true,
              	          success : function(response) { 
              	          	if(response.error == null)
              	          	{	
							$("#notification").show();
           	          		
           	          		$("#schoolName").text(response.schoolName);
           	         		$("#teacherName").text(response.teacherName);
           	         
           	          		var vid = document.getElementById("currentPlayer");
           	          		
              	          		vid.src = "${bucketPath}/audioFiles/"+response.track;
              	          		var vid = document.getElementById("currentPlayer");
              				    vid.currentTime = response.trackLocation;
              				  //$("#currentPlayer").attr("autoplay","true");
              				  $("#currentPlayer").trigger('play');
              	          	}
              	          }
              	          });
              			clearInterval(intervals);
              		}
              		
              	}
              }
              });
    	  
      }, 3000);
	   $.ajax({  
           type : "GET",   
           url : "<%=request.getContextPath()%>/donor/senseAudioPlay",   
            async:true,
           success : function(response) { 
           	if(response.playing != null)
           	{	
           		if(response.playing == 0)
           		{
           			console.log('playing');
           			$.ajax({  
           	          type : "GET",   
           	          url : "<%=request.getContextPath()%>/donor/sendAudioTrackLocationParent",   
           	           async:true,
           	          success : function(response) { 
           	          	if(response.error == null)
           	          	{	
           	          		$("#notification").show();
           	          		
           	          		$("#schoolName").text(response.schoolName);
           	         		$("#teacherName").text(response.teacherName);
           	         
           	          		var vid = document.getElementById("currentPlayer");
           	          		//$("#currentPlayer").attr("autoplay","true");
           	          		vid.src = "${bucketPath}/audioFiles/"+response.track;
           	          		var vid = document.getElementById("currentPlayer");
           				    vid.currentTime = response.trackLocation;
           				    
           				    $("#notify").attr("src","<%=request.getContextPath()%>/NewStyles/images/speaker.gif");
           				 	$("#currentPlayer").trigger('play');
           	          	}
           	          }
           	          });
           			clearInterval(intervals);
           		}
           		
           	}
           }
           });
});
    function loadTrack()
	   {
		   $.ajax({  
	           type : "GET",   
	           url : "<%=request.getContextPath()%>/donor/senseAudioPlay",   
	            async:true,
	           success : function(response) { 
	           	if(response.playing != null)
	           	{	
	           		if(response.playing == 0)
	           		{
	           			console.log('playing');
	           			$.ajax({  
	           	          type : "GET",   
	           	          url : "<%=request.getContextPath()%>/donor/sendAudioTrackLocationParent",   
	           	           async:true,
	           	          success : function(response) { 
	           	          	if(response.error == null)
	           	          	{	
	           	          		$("#notification").show();
	           	          		
	           	          		$("#schoolName").text(response.schoolName);
	           	         		$("#teacherName").text(response.teacherName);
	           	         
	           	          		var vid = document.getElementById("currentPlayer");
	           	          		//$("#currentPlayer").attr("autoplay","true");
	           	          		vid.src = "${bucketPath}/audioFiles/"+response.track;
	           	          		var vid = document.getElementById("currentPlayer");
	           				    vid.currentTime = response.trackLocation;
	           				 $("#notify").attr("src","<%=request.getContextPath()%>/NewStyles/images/speaker.gif");
	           				$("#currentPlayer").trigger('play');
	           	          	}
	           	          }
	           	          });
	           			clearInterval(intervals);
	           		}
	           		
	           	}
	           }
	           });
	   }
</script>

</body>
</html>
