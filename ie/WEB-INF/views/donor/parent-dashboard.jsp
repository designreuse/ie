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
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Inner Explorer</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
</head>

<body>	
<spring:eval var="bucketPath" expression="@propertyConfigurer.getProperty('bucket_path')" />	 
	<div class="wrapper">

		<section class="makeDonateSct mtop-5">
			<div class="containerSmall">
				<div class="pracProgress_hdr">
					<div class="radio-logo">
						<a href="javascript:;"><img
							src="<%=request.getContextPath()%>/NewStyles/images/logo-radio.png"></a>
			
					</div>

					<!--<h2>Parent Dashboard</h2>
            <div class="green_line_btm"></div>-->

					<h3 class="teachr_dsh bdr-btm-none"><span id="offline">You are listening live session from</span><span id="school-name"></span></h3>
					<div class="clr"></div>
					
					<div class="school-logo-inner">
								<ul>
									<li>
										<c:if test="${schoolLogo eq '' || schoolLogo eq null}">
						              		<img src="<%=request.getContextPath()%>/NewStyles/images/school-default.jpg" class="level-image" alt=""/>
						              	</c:if>
						              	<c:if test="${schoolLogo ne '' && schoolLogo ne null}">
						              		<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${schoolLogo}" class="level-image" alt=""/>
						              	</c:if>
										<p id="schoolName">
											<c:if test="${schoolName ne '' && schoolName ne null}">
						              			${schoolName}"
						              		</c:if>
						              	</p>
						         	</li>
									<li>
										<c:if test="${teacherLogo eq '' || teacherLogo eq null}">
						              		<img src="<%=request.getContextPath()%>/NewStyles/images/school-logo-grn-2.png" class="level-image" alt="" style="border:0px;"/>
						              	</c:if>
						              	<c:if test="${teacherLogo ne '' && teacherLogo ne null}">
						              		<img src="<%=request.getContextPath()%>/NewStyles/images/teacher-profile/${teacherLogo}" class="level-image" style="border:0px;" alt=""/>
						              	</c:if>
										<p id="teacherName">
											<c:if test="${teacherName ne '' && teacherName ne null}">
						              			${teacherName}"
						              		</c:if>
						              	</p>
										
									<%-- 	<img
										src="<%=request.getContextPath()%>/NewStyles/images/school-logo-grn-2.png">
										<p id="teacherName">Richard Jacob</p></li> --%>
								</ul>
							</div>
					
					<div class="check-select-out">
						<div class="parent-dash-out">
							<!-- <div class="parent-notf">
                        	<p>Notification on <span>10/11/2015</span> at <span>10:35am</span></p>
                        </div> -->
							<div class="parent-track">
								<p id="date" style="padding-top: 150px; padding-left: 0px; width: 500px; font-weight: 400; color: black"></p>
								<p id="track" style="padding-left: 0px; width: 500px; font-weight: 400; color: black"></p>
							</div>
							<div class="btns-outer float-none">

								<a href="javascript:;"><img id="myImage"
									src="<%=request.getContextPath()%>/NewStyles/images/speaker.gif"
									width="100" height="70" style="margin-top:50px; height: 70px;" id="notify" ></a>
								<audio style="display: none;" id="currentPlayer"
									controls preload="none">
									<source src="" type="audio/mpeg">
									
								</audio>
								
					
								

							</div>
							<div class="close-radio" style="right:0px;">
								<a href="javascript:close_window();"> <img title="Close" alt=""
									src="<%=request.getContextPath()%>/NewStyles/images/delete-red-icon.png">
								</a>
							</div>
						</div>

						<%-- <div class="parent-dash-out">
							<div class="school-logo-inner">
								<ul>
									<li>
										<c:if test="${schoolLogo eq '' || schoolLogo eq null}">
						              		<img src="<%=request.getContextPath()%>/NewStyles/images/school-default.jpg" class="level-image" alt=""/>
						              	</c:if>
						              	<c:if test="${schoolLogo ne '' && schoolLogo ne null}">
						              		<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${schoolLogo}" class="level-image" alt=""/>
						              	</c:if>
										<p id="schoolName">
											<c:if test="${schoolName ne '' && schoolName ne null}">
						              			${schoolName}"
						              		</c:if>
						              	</p>
						         	</li>
									<li>
										<c:if test="${teacherLogo eq '' || teacherLogo eq null}">
						              		<img src="<%=request.getContextPath()%>/NewStyles/images/school-logo-grn-2.png" class="level-image" alt="" style="border:0px;"/>
						              	</c:if>
						              	<c:if test="${teacherLogo ne '' && teacherLogo ne null}">
						              		<img src="<%=request.getContextPath()%>/NewStyles/images/teacher-profile/${teacherLogo}" class="level-image" style="border:0px;" alt=""/>
						              	</c:if>
										<p id="teacherName">
											<c:if test="${teacherName ne '' && teacherName ne null}">
						              			${teacherName}"
						              		</c:if>
						              	</p>
										
									<%-- 	<img
										src="<%=request.getContextPath()%>/NewStyles/images/school-logo-grn-2.png">
										<p id="teacherName">Richard Jacob</p></li> 
								</ul>
							</div> 
						</div> --%>
					</div>
				</div>
			</div>
		</section>
	</div>
	<footer>
		<div class="container">
			<div class="footerLeft">
				<p>Copyright © 2015 Inner Explorer</p>
			</div>
			<div class="footerRight">
				<ul>
					<li><a href="javascript:;">Privacy Policy</a></li>
					<li><a href="javascript:;">Terms & Conditions</a></li>
				</ul>
			</div>
		</div>
	</footer>	
	<input type="hidden" id="class" value="${classId}"/>								
	
		<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>

	<script type="text/javascript">
	function close_window() {
		  if (confirm("Close Window?")) {
			  this.window.close();
		  }
		}
    $(window).load(function(){
    	var playFlag = false;
    	<%--  var intervals =    setInterval(function(){
    		 $.ajax({  
              	type : "GET",   
              	url : "<%=request.getContextPath()%>/live/senseAudioPlay",   
               	async:true,
              	data:'classId='+classId,
              	success : function(response) {
              	if(response.playing != null)
              	{	
              		if(response.playing == 0)
              		{
              			console.log("log1 - "+'playing mindful practice session live');
              			$.ajax({  
              	          type : "GET",   
              	          url : "<%=request.getContextPath()%>/live/sendAudioTrackLocationParent",   
              	           async:true,
              	          data:'classId='+classId,
              	          success : function(response) { 
              	          	if(response.error == null)
              	          	{	
              	          		$("#notification").show();
              	          		$("#track").text(response.track);
              	          		$("#schoolName").text(response.schoolName);
              	          		
              	         		$("#teacherName").text(response.teacherName);
              	         		$("#school-name").text(response.schoolName);
              	           		$("#schoolName").text(response.schoolName);
              	           		$("#schoolLogo").attr('src','<%=request.getContextPath()%>/'+response.schoolLogo);
              	         
              	          		var vid = document.getElementById("currentPlayer");
              	          		vid.src = "${bucketPath}/audioFiles/"+response.track;
              	          		var vid = document.getElementById("currentPlayer");
              				    vid.currentTime = response.trackLocation;
            				    
              				    $("#myImage").attr("src","<%=request.getContextPath()%>/NewStyles/images/speaker.gif");
 								$("#currentPlayer").trigger('play');																	
 								}
              	          	clearInterval(intervals);
 							}
 						});
 					}
              	else
             		{
              			$("#currentPlayer").trigger('stop');
              			$("#myImage").attr("src","<%=request.getContextPath()%>/NewStyles/images/speaker-grey.png");
              			$("#offline").text("Class will start soon");
              			$("#school-name").text("");
              		}
 				}
              	else
              	{
              		$("#myImage").attr("src","<%=request.getContextPath()%>/NewStyles/images/speaker-grey.png");
          			$("#offline").text("Class will start soon");
          			$("#school-name").text("");
          			$("#currentPlayer").trigger('stop');
          		}
            	}
 		});
       	  
         }, 10000);
         
    	 --%>
    	 var audio =  $("#currentPlayer");
    	
    	$("#school-name").text('${schoolName}');
    	$("#schoolName").text('${schoolName}');
    	$("#teacherName").text('${teacherName}');
    	$("#schoolLogo").attr('src','<%=request.getContextPath()%>/${schoolLogo}');
    	
    	$("#date").text('${datePlayed}');
    	var classId = '${classId}';
    	
    	if(classId == null)
   		{
    		classId = $("#class").val();		
   		}
    	
    	 $.ajax({  
             	type : "GET",   
             	url : "<%=request.getContextPath()%>/live/senseAudioPlay",   
              	async:true,
             	data:'classId='+classId,
             	success : function(response) {
             		if(response.playing != null && response.playing == 0)
             		{
             			console.log('playing mindful practice session live');
             			$.ajax({  
             	          	type : "GET",   
             	          	url : "<%=request.getContextPath()%>/live/sendAudioTrackLocationParent",   
             	           	async:true,
             	          	data:'classId='+classId,
             	          	success : function(response) {
             	          	if(response.error == null)
             	          	{	
             	          		$("#notification").show();
             	          		$("#schoolName").text(response.schoolName);
             	          		$("#track").text(response.track);
             	         		$("#teacherName").text(response.teacherName);
             	         		$("#school-name").text(response.schoolName);
             	           		$("#schoolName").text(response.schoolName);
             	           		$("#schoolLogo").attr('src','<%=request.getContextPath()%>/'+response.schoolLogo);
             	           	 	$("#myImage").attr("src","<%=request.getContextPath()%>/NewStyles/images/speaker.gif");
-								$("#offline").html("You are listening live session from&nbsp;");
								//audio.prop('src', "${bucketPath}/audioFiles/"+response.track);
								if (response.trackProgramId == 1){
									audio.prop('src', "${bucketPath}bitrate/lowbitrate/Exploring-Me/English/"+response.track);
								}
								if (response.trackProgramId == 2){
									audio.prop('src', "${bucketPath}bitrate/lowbitrate/Exploring-Originality/English/"+response.track);
								}
								if (response.trackProgramId == 3){
									audio.prop('src', "${bucketPath}bitrate/lowbitrate/Exploring-Potential/English/"+response.track);
								}
								if (response.trackProgramId == 4){
									audio.prop('src', "${bucketPath}bitrate/lowbitrate/Exploring-Relevance/English/"+response.track);
								}
								audio.bind("load",function(){
									audio.trigger('pause');
									audio.prop('currentTime', parseInt(response.trackLocation));
					            });
								audio.bind("ended",function(){
									console.log("Stopped ...")
								 	playFlag = false;	
					            });
								audio.trigger('load');
								$("#currentPlayer").trigger('play');
								playFlag = true;
							}
             	          	else
	             	        	 playFlag = false;
						}
					});
				}
             	else
           		{
             		console.log('killed by Admin')
           			$("#myImage").attr("src","<%=request.getContextPath()%>/NewStyles/images/speaker-grey.png");
           			$("#offline").text("Class will start soon");
           			$("#school-name").text("");
           			var sound = document.getElementById("currentPlayer");
           			sound.pause();
           			sound.currentTime = 0;
           			audio.trigger('pause');
           		}
           	}
		});
    	 
    	 
    	 var interval =    setInterval(function(){
    		 $.ajax({  
              	type : "GET",   
              	url : "<%=request.getContextPath()%>/live/senseAudioPlay",   
               	async:true,
               	data:'classId='+classId,
              	success : function(response) {
              	if(response.playing != null)
              	{	
              		if(response.playing == 0 && !playFlag)
              		{
              			console.log('playing mindful practice session live');
              			$.ajax({  
              	          	type : "GET",   
              	          	url : "<%=request.getContextPath()%>/live/sendAudioTrackLocationParent",   
              	           	async:true,
              	         	data:'classId='+classId,
              	          	success : function(response) { 
              	          	if(response.error == null)
              	          	{	
              	          		$("#notification").show();
              	          		$("#track").text(response.track);
              	          		$("#schoolName").text(response.schoolName);
              	          		
              	         		$("#teacherName").text(response.teacherName);
              	         		$("#school-name").text(response.schoolName);
              	           		$("#schoolName").text(response.schoolName);
              	           		$("#schoolLogo").attr('src','<%=request.getContextPath()%>/'+response.schoolLogo);
              	           		$("#myImage").attr("src","<%=request.getContextPath()%>/NewStyles/images/speaker.gif");
              	          		audio.prop('src', "${bucketPath}/audioFiles/"+response.track);
								audio.bind("load",function(){
									audio.trigger('pause');
									audio.prop('currentTime', parseInt(response.trackLocation));
					            });
								audio.trigger('load');
								$("#currentPlayer").trigger('play');
								
								audio.bind("ended",function(){
									playFlag = false;
					            });
								
              				  	$("#offline").html("You are listening live session from&nbsp;");
              				    $("#myImage").attr("src","<%=request.getContextPath()%>/NewStyles/images/speaker.gif");
							}
              	          	clearInterval(interval);
							}
 						});
 					}
              	else if(!playFlag)
             		{
              		console.log('killed by Admin')
           			$("#myImage").attr("src","<%=request.getContextPath()%>/NewStyles/images/speaker-grey.png");
           			$("#offline").text("Class will start soon");
           			$("#school-name").text("");
           			var sound = document.getElementById("currentPlayer");
           			sound.pause();
           			sound.currentTime = 0;
           			audio.trigger('pause');
              		}
 				}
              	else
              	{
              		console.log('killed by Admin')
           			$("#myImage").attr("src","<%=request.getContextPath()%>/NewStyles/images/speaker-grey.png");
           			$("#offline").text("Class will start soon");
           			$("#school-name").text("");
           			var sound = document.getElementById("currentPlayer");
           			sound.pause();
           			sound.currentTime = 0;
           			audio.trigger('pause');
          		}
            	}
 		});
       	  
         }, 10000);
         
    	 
    	 
	});
    function closeWindow(){
    	close();
    }
	</script>
</body>
</html>
