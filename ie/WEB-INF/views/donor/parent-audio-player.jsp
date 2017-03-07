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
<title>Practice Area</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
</head>

<body>
<spring:eval var="bucketPath" expression="@propertyConfigurer.getProperty('bucket_path')" />
	<div class="wrapper">
		<%@include file="header.jsp"%>
		<section class="getStartSct mtop-5">
			<div class="steps_getstarted">
				<div class="container">
					<div class="about_title_hdr">
						<h2>Practice Area</h2>
						<div class="green_line_btm"></div>
					</div>

				<div class="videobtn ">
                <input type="button" style="margin-right:10px" title="Best Practice" value="Best Practices" onclick="openBestPracticePopUp();" class="blueBtn">
               <%--  <input type="button" title="Learn More" value="Learn More" onclick="location.href='<%=request.getContextPath()%>/donor/learnMore';" class="blueBtn"> --%>

				</div>


					<div class="school_setup_wrapper" id="progDetail">
						<div class="school_setup_box ">
							<ul class="new-teachr">
							<c:forEach items="${parentPrograms}" var="parentPrograms">
								<li class="img_setup program4 pos-reltv"
									id="programImg_${parentPrograms.id}"
									onclick="showProgramContent(${parentPrograms.id});">
									<a
										href="<%=request.getContextPath()%>/donor/parentAudios/${parentPrograms.id}">
										<div class="imgsetup_lg">
											<img
												src="<%=request.getContextPath()%>/NewStyles/images/img0${parentPrograms.id}.png"
												alt="" class="position-relative" />
											<div class="overlay_setup top-position-50"
												id="overlay_${parentPrograms.id}">
												<p>${parentPrograms.progName}</p>
											</div>
										</div>
									</a>
									<div class="check-box-absolute">
										<div id="check_${parentPrograms.id}"></div>
									</div>
								</li>
							</c:forEach>
							</ul>
						</div>
					</div>

					<section class="may-sld-opt">
						<div class="xtra-players">
							<div class="nxt-player">
								<c:forEach var="subcat" items="${progSubCategories}">
									<h3>${subcat.category}</h3>
									<ul>
										<c:forEach var="audio" items="${subcat.dtoProgramsAudios}">
											<%--  <c:if test="${audio.parentProgSubCategory.id eq subcat.id}">  --%>
											<li>
												<div class="player-inner">
													<div class="he_audio_name">${audio.audioTitle}</div>

													<div class="he_audio_dtl">

														<div class="he_timer" id="songTime${audio.audioId}">
															<a style="cursor: pointer;" onclick="getNarratorDetails(${audio.narratorProfileId});">${audio.narratedBy}</a></div>
														<div class="he_plps">
															<audio style="display: none;" id="song${audio.audioId}"
																controls preload="none" data-audio-id="${audio.audioId}"
																data-program-id="${audio.audioId}"
																data-length="${audio.audioId}"
																data-audio-feedback="${audio.audioId}"
																ontimeupdate="updateTime()"
																class="music-player_notes additional"
																data-refid="${audio.audioId}">
																
																<source
																	src="${bucketPath}bitrate/lowbitrate/Home-Edition/English/${audio.audioName}"
																	type="audio/mpeg" data-refid="${audio.audioId}">
															</audio>

															<div class="progress-bar position" data-percent="0"
																data-duration="0" id="progressive${audio.audioId}"
																data-ref="${audio.audioId}">
																<div class="ply-pau-he">
																	<div id="songPlay"
																		onclick="play('song${audio.audioId}','${audio.audioId}')">
																		<div id="play-pause${audio.audioId}" class="play-he-p"></div>
																	</div>
																</div>
															</div>

														</div>

													</div>

												</div> <c:if test="${audio.isPlayed eq 'Y'}">

													<c:if test="${not empty audio.rating}">

														<div class="fieldbox_leave height-auto">
															<!-- <div class="star_rating"> -->
															<div class="star_rating mrgtp_0 hed-rate"
																id="audiofeedback_${audio.audioId}">
																<c:forEach var="i" begin="1" end="${audio.rating}"
																	step="1">
																	<img class="cur-point"
																		src="<%=request.getContextPath()%>/NewStyles/images/star-table-yellow.png"
																		alt=""
																		onclick="changeRating('${i}', '${audio.audioId}');">
																</c:forEach>
																<c:forEach var="i" begin="${audio.rating}" end="4"
																	step="1">
																	<img class="cur-point"
																		src="<%=request.getContextPath()%>/NewStyles/images/star-table-grey.png"
																		alt=""
																		onclick="changeRating('${i+1}', '${audio.audioId}');">
																</c:forEach>
															</div>
															<input id="rating_${audio.audioId}" name="rating"
																type="hidden" value="0" />
														</div>
													</c:if>


													<c:if test="${empty audio.rating}">
														<div class="fieldbox_leave height-auto">
															<input id="audioId" name="audioId" type="hidden" value="" />
															<input id="rating_${audio.audioId}" name="rating"
																type="hidden" value="0" />
															<div class="star_rating mrgtp_0 hed-rate"
																id="audiofeedback_${audio.audioId}">
																<img class="cur-point"
																	src="<%=request.getContextPath()%>/NewStyles/images/star-table-grey.png"
																	alt="" onclick="changeRating(1, '${audio.audioId}');" /><img
																	class="cur-point"
																	src="<%=request.getContextPath()%>/NewStyles/images/star-table-grey.png"
																	alt="" onclick="changeRating(2, '${audio.audioId}');" /><img
																	class="cur-point"
																	src="<%=request.getContextPath()%>/NewStyles/images/star-table-grey.png"
																	alt="" onclick="changeRating(3, '${audio.audioId}');" /><img
																	class="cur-point"
																	src="<%=request.getContextPath()%>/NewStyles/images/star-table-grey.png"
																	alt="" onclick="changeRating(4, '${audio.audioId}');" /><img
																	class="cur-point"
																	src="<%=request.getContextPath()%>/NewStyles/images/star-table-grey.png"
																	alt="" onclick="changeRating(5, '${audio.audioId}');" />

															</div>
															<span id="ratingError" style="color: #a94442;"> </span>
														</div>
													</c:if>
												</c:if> <c:if test="${audio.isPlayed eq 'N'}">
													<div class="fieldbox_leave height-auto">
														<input id="audioId" name="audioId" type="hidden" value="" />
														<input id="rating_${audio.audioId}" name="rating"
															type="hidden" value="0" />
														<div class="star_rating mrgtp_0 hed-rate"
															id="audiofeedback_${audio.audioId}">
															<img class="cur-point"
																src="<%=request.getContextPath()%>/NewStyles/images/star-table-grey.png"
																alt="" /><img class="cur-point"
																src="<%=request.getContextPath()%>/NewStyles/images/star-table-grey.png"
																alt="" /><img class="cur-point"
																src="<%=request.getContextPath()%>/NewStyles/images/star-table-grey.png"
																alt="" /><img class="cur-point"
																src="<%=request.getContextPath()%>/NewStyles/images/star-table-grey.png"
																alt="" /><img class="cur-point"
																src="<%=request.getContextPath()%>/NewStyles/images/star-table-grey.png"
																alt="" />

														</div>
														<span id="ratingError" style="color: #a94442;"> </span>
													</div>
												</c:if>
											</li>
										</c:forEach>
									</ul>
								</c:forEach>
							</div>
						</div>
					</section>
				</div>
			</div>
		</section>
	</div>


	<div id="loadingTrack" class="playback-Popup"
		style="display: none; width: 100% !important;">
		<div class="hdr hdr_new padding-btm">
			<c:if test="${companyName eq '1'}">
				<img
					src="<%=request.getContextPath()%>/NewStyles/images/loading-audio.gif"
					alt="" style="width: 20%;" />
			</c:if>
			<c:if test="${companyName eq '2'}">
				<img
					src="<%=request.getContextPath()%>/NewStyles/images/crim-lodder.gif"
					alt="" style="width: 20%;" />
			</c:if>
			<p class="slide_rtext">
			<h4 style="font-weight: 400; font-size: 19px;">
				Working on your Network Settings to ensure<br />Highest Quality of
				Audio Experience<br /> <br />Please Wait...
			</h4>
			</p>
		</div>
	</div>


<div id="bestPracticePopUp" class="playback-Popup"
					style="display: none; max-width: 700px;">

					<div>
						<div class="tech-step-11-pop">
							<h3>Tips For Practicing Mindfulness at Home:</h3>
							<ul>
								<li class="green-dot-left-1">Practice together as a family. Your children will take the practice more seriously if everyone participates!.</li>
								<li class="green-dot-left-2">The key is daily practice. Make the practice part of your routine. Do it in the morning, before bed, before “screen” time or before a meal.</li>
								<li class="green-dot-left-3">Be consistent! Choose a time that works best for you and your family, and practice at this same time each day.</li>
								<li class="green-dot-left-4">If possible, create a calm, quiet space for mindfulness. Be sure to practice during a time when you know there will not be interruptions.</li>
								<li class="green-dot-left-5">You may choose to practice sitting in chairs, on the floor or lying down. Be sure everyone chooses the position that is the most comfortable for him or her.</li>
								<li class="green-dot-left-6">Expect your children to be “squirrelly” at times. Practicing mindfulness is a different way of being for them. Gently guide your child to remain still and quiet through your practices.</li>
								<li class="green-dot-left-7">Give it time. Even if your children seem disengaged, they will hear the instructions and will move through this phase.</li>
								<li class="green-dot-left-8">Keep on keeping on. The more committed you are to a consistent practice the easier sitting and listening will become, for you and for your children.</li>
								<li class="green-dot-left-9">Be patient. Remember, this is a practice and building a habit takes time.</li>
								<li class="green-dot-left-10">Share your experience with your children and listen as they express any discomfort. Empowering your children to recognize their own experience in a positive way can have a huge impact.</li>
								<li class="green-dot-left-11">You may choose to incorporate informal mindful activities throughout your day in addition to your formal  <a href='<%=request.getContextPath()%>/donor/parentActivity'>practice</a>, but remember to keep it simple! A little mindful movement, or mindful listening can help to change the tone of your day.</li>
								
							</ul>

						</div>
</div>
</div>
<div id="narratorProfilePopUp" class="playback-Popup width100 top0"
					style="display: none; max-width: 700px;">

					<div>
						<div class="author-dtl">
							<!-- <div class="author-hd">Profile Details</div> -->
							<div class="author-dtl-main">
										
										<img id="nImage" src="" class="newsimage wp-post-image" alt="LaurieHeadshot" >
											<div class="author-dtl-main-dtl">										
												<h2 id="nName"></h2>
												<h3 id="title"></h3>
											</div>
										<p class="text-justified" id="nDesc"></p>
										</div>
									</div>
</ul>
						</div>
</div>
</div>

	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<%@include file="../footer.jsp"%>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/dateFormat.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/woco.accordion.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>

	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/NewStyles/css/jQuery-plugin-progressbar-parent.css">
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jQuery-plugin-progressbar.js"></script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/SSUhtml5Audio-parent.js"></script>
	<link rel="stylesheet" type="text/css"
		href="<%=request.getContextPath()%>/NewStyles/css/SSUhtml5audio.css" />
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
	<script>
	
	$(document).ready(function(){
		$(".accordion").accordion();
		$("#category").val(0);
		$("#header").sticky({ topSpacing: 0 });
		$.format = DateFormat.format;
		var parentProgSelect = '${parentProgSelect}';
		
		$('#check_'+parentProgSelect).addClass("tick_image_add");
		
		$(".progress-bar").loading();
		//code to restrict multiple audio plays
		 $(".music-player_notes").bind('play', function (e) {
			 $(".music-player_notes").each(function(){
				if($(this).attr("id") != e.target.id)
				 {
					$(this).trigger('pause');
					$("#play-pause"+$(this).data('refid')).addClass("play-he-p");
			        $("#play-pause"+$(this).data('refid')).removeClass("pause-he-p");
			        
				 }
			 });
		 });
			$(".music-player_notes").each(function(){
				console.log($(this).hasClass("additional"))
				if($(this).hasClass("additional"))
				{
					$("#"+$(this).attr("id")).one().bind('play', function (e) {
						sendData($(this).attr("id"), $(this).attr('data-audio-id'),$(this).attr('data-program-id'),$(this).attr('data-length'),$(this).attr('data-audio-feedback'), e);
					});
				}
			});
			
			$.daisyNav();
	});
	  
    function playSound(el,soundfile) {
        var embed = document.getElementById("embed");
        if (!embed) {
            var embed = document.createElement("embed");
                embed.id= "embed";
                embed.setAttribute("src", soundfile);
                embed.setAttribute("hidden", "true");
            el.appendChild(embed);
        } else {
            embed.parentNode.removeChild(embed);
        }
    }
    
    function loadSelectedTrack(id){
    	var audioElements = document.getElementById(id);
    	if(audioElements.currentTime == 0.0)
   		{
    		$.fancybox({
	      		 'minWidth':120,
	      		 'padding':10,
	      		 'minHeight':80,
	      	     'autoScale': true,
	      	     'autoDimensions': true,
	      	     'centerOnScroll': true,
	      	     'href' : '#loadingTrack',
	      	   	closeClick  : false,
	      		helpers   : {
	      	   	overlay : {closeClick: false} // prevents closing when clicking OUTSIDE fancybox 
	      	  }
      	  	});
	    	 $("#"+id).trigger('load');
			   
			    audioElements.preload = "auto";
			    audioElements.load();
			   
		    audioElements.addEventListener('loadstart', function(e){
			    	console.log('Loading started...');
			        e.target.removeEventListener(e.type, arguments.callee);
		    });
		    
		    audioElements.addEventListener('canplaythrough', function(e){
		        console.log('Can play through video without stopping...');
		       $.fancybox.close();
		       audioElements.play();
		       e.target.removeEventListener(e.type, arguments.callee);
		    });
   		}
    	else
   		{
    		  audioElements.play();
   		}
 	}
	
	
	function getTracksBySubCatId(categoryId){
		var url='<%=request.getContextPath()%>/donor/getAudiosListByCategoryId';
		$.ajax({
			url:url,
			method:'GET',
			data:{categoryId:categoryId},
			async :false,
			cache:false,
			success:function(response){
				$.each( response.modelMap.parentProgTracks, function(index,value) {
					alert(value.audioTitle);
				});
			}
		}); 
	}
	
function changeRating(rating, audioId){
	
    	var audiofeedback = '';
        for(var i=1;i<=5;i++){
            if(i <= rating){
            	audiofeedback+='<img class="cur-point" src="<%=request.getContextPath()%>/NewStyles/images/star-table-yellow.png"  alt=""  onclick="changeRating('+i+', '+audioId+');">';
            }
            else{
            	audiofeedback+='<img class="cur-point" src="<%=request.getContextPath()%>/NewStyles/images/star-table-grey.png" alt=""   onclick="changeRating('+i+', '+audioId+');">';
            }
		}
       
        $("#audiofeedback_"+audioId).html('');
        $("#audiofeedback_"+audioId).html(audiofeedback);
        document.getElementById("rating_"+audioId).value=rating;
        
        
        var url='<%=request.getContextPath()%>/donor/saveAudioStarFeedback';
		$.ajax({
			url:url,
			method:'GET',
			data:{rating:rating,audioId:audioId},
			async :false,
			cache:false,
			success:function(response){
			}
		}); 
    }
    
function sendData(elementId, id,programId,audioLength,feedbackExist, event){
	//var clientDate = new Date();
	
	var clientDate = $.format.date(new Date(), 'yyyy-MM-dd HH:mm:ss')
	
	var playFlag = false;
	var endFlag = false;
	console.log("########### feedback ::"+feedbackExist);
	
	var audioElement = document.getElementById(elementId);
 
	// PLAYER PAUSE FUNCTION
    audioElement.addEventListener('pause', function(e){
        console.log('Audio playback has been paused ...');
        console.log('Playback paused at : '+ e.target.currentTime +" seconds");
        console.log('Playback paused at : '+ e.target.duration +" seconds");
        console.log('Playback paused cursor end  : '+ audioLength +" seconds");
        playFlag = false;
        if(audioLength != e.target.duration){
        	var day = new Date().getDay();
        	var isWeekend = (day == 6) || (day == 0);
        	if(!isWeekend && !endFlag){
        	 $.ajax({  
 	            type : "POST",   
 	            url : "<%=request.getContextPath()%>/donor/audioTrackInfo",   
 	            data : "cursorEnd=" + e.target.currentTime + "&audioId=" + id + "&programId="  
 	              + programId+ "&clientDate="+clientDate+"&complete=0&event=1",   
 	             async:false,
 	            success : function(response) {  
 	             //alert(response);   
 	            	//sleep(1000);
 	            },  
 	            error : function(e) {  
 	             //alert('Error: ' + e);   
 	            }  
 	           }); 
        	}
 	       }
        e.target.removeEventListener(e.type, arguments.callee);
        }, false);
       

    // PLAYER ENDED FUNCTION
    audioElement.addEventListener('ended', function(e){
    	playFlag = false;
    	
        console.log('Playback has ended');
        location.reload();
    	var day = new Date().getDay();
    	var isWeekend = (day == 6) || (day == 0);
    	if(!isWeekend && !endFlag){
    		endFlag = true;
        $.ajax({  
            type : "POST",   
            url : "<%=request.getContextPath()%>/donor/audioTrackInfo",   
            data : "cursorEnd=" + e.target.currentTime + "&audioId=" + id + "&programId="  
              + programId+ "&clientDate="+clientDate+"&complete=1&event=2", 
             async:false,
            success : function(response) {  
            	if($("#bonus-player-"+id)){
            	var srcVal = $("#bonus-player-"+id).val();
            	$("#bonus-player-src-"+id).attr("src",srcVal);
            	var audioId=document.getElementById("player-bonus-"+id);
            	if(audioId!=null){
            		audioId.load();
            		}
            	}
            	
            	$("#feedbacknote").hide();
            	$("#suggestedQuestions").show();
             if(response == "showFeedback"){
            	 //$("#leave_feedbk").focus();
            	 if(feedbackExist != 1){
            		 $("#leaveFeedbackBtn").show();
            		 //$("#leave_feedbk").show();
            		 //window.location.hash = '#leave_feedbk';
            		 document.getElementById('leave_feedbk').focus();
            		
            	 }
            	 document.getElementById("audioId").value=id;
             }   
            },  
            error : function(e) {  
             alert('Error: ' + e);   
            }  
           });   
    	}else{
        	if($("#bonus-player-"+id)){
            	var srcVal = $("#bonus-player-"+id).val();
            	$("#bonus-player-src-"+id).attr("src",srcVal);
            	var audioId=document.getElementById("player-bonus-"+id);
            	if(audioId!=null){
            		audioId.load();
            		}
            	}
            	$("#suggestedQuestions").show();
    	}
    	e.target.removeEventListener(e.type, arguments.callee);
    },false);

    if(!playFlag)
   {
    	endFlag = false;
    	console.log('PLAY STARTED')
    	var day = new Date().getDay();
    	var isWeekend = (day == 6) || (day == 0);
    	if(!isWeekend){
    	 $.ajax({  
 	            type : "POST",   
 	            url : "<%=request.getContextPath()%>/donor/audioTrackInfo",   
 	            data : "cursorEnd=" + event.target.currentTime + "&audioId=" + id + "&programId="  
 	              + programId+ "&clientDate="+clientDate+"&complete=0&event=0",   
 	             async:false,
 	            success : function(response) {  
 	             //alert(response);   
 	            	//sleep(1000);
 	            },  
 	            error : function(e) {  
 	             alert('Error: ' + e);   
 	            }  
 	           }); 
    	 }
   }
    
}
function openBestPracticePopUp(){
	 $.fancybox({
		 'minWidth':120,
		 'padding':10,
		 'minHeight':60,
		 //'autoScale': true,
	     //'autoDimensions': true,
	     'centerOnScroll': true,
	     'href' : '#bestPracticePopUp'
	   
	  });
}
function getNarratorDetails(id){
	 var url='<%=request.getContextPath()%>/donor/getNarratorDetail';
     $.ajax({
           url:url,
           method:'POST',
           async :false,
           data:{nId:id},
           cache:false,
           success:function(response){
        	   //alert(response.modelMap.narratorProfile.firstName);
                  if(response != null){
                	var img = "<%=request.getContextPath()%>/NewStyles/images/"+response.modelMap.narratorProfile.profilePic;
                	$("#nName").text(response.modelMap.narratorProfile.firstName+" "+response.modelMap.narratorProfile.lastName);
                	$("#title").text(response.modelMap.narratorProfile.title);
                	$("#nDesc").text(response.modelMap.narratorProfile.heading);
                	$("#nImage").attr("src",img);
                   $.fancybox({
               	   'minWidth':120,
              		 'padding':10,
              		 'minHeight':60,
              	     'centerOnScroll': true,
              	     'href' : '#narratorProfilePopUp'
                    });

                  }
                  
           }
     });
}
</script>
</body>

	

</html>
