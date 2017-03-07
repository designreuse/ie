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
<title>Radio</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
</head>

<body>
	<spring:eval var="bucketPath"
		expression="@propertyConfigurer.getProperty('bucket_path')" />
	<div class="wrapper">
		<%@include file="header.jsp"%>
		<!-- <header id="header">
	    <div class="container ">
	      <div class="logo"> <a href="principal-module/index.html" title=""><img src="images/logo.jpg" alt="Inner Explorer" title="Inner Explorer" /></a> </div>
	      <div class="hdRight">
	        <nav>
	          <ul id="demo-menu" class="menu-list">
	            <li><a href="#" class="font_strong dk_black" title="">Welcome George Smith</a></li>
              </ul>
            </nav>
	        <div class="startRight">
	          <input type="button" value="Logout" onClick="location.href='login.html'" class="startBtn"/>
            </div>
          </div>
        </div>
      </header> -->
		<!--<section class="slider-inner">
			<img src="images/browse-donation-header.jpg" alt="Slider" />
		</section>-->

		<section class="makeDonateSct ">
			<div class="container">
				<div class="pracProgress_hdr">
					<h2>Radio</h2>
					<div class="green_line_btm"></div>
				</div>
			</div>
		</section>

		<section class="makeDonateSct mtop-5 pbtm30 ">
			<div class="container">
				<div class="pracProgress_hdr">
					<%-- <div class="radio-logo">
            	<a href="javascript:;"><img src="<%=request.getContextPath()%>/NewStyles/images/logo-radio.png"></a>
            </div> --%>

					<!--<h2>Parent Dashboard</h2>
            <div class="green_line_btm"></div>-->

					<!-- <h3 class="teachr_dsh bdr-btm-none">Start your Inner Explorer experience today</h3> -->
					<div class="clr"></div>
					<div class="check-select-out width700px">
						<div class="parent-dash-out">
							<!--<%--<div class="parent-notf">
                        	<p>Notification on <span>10/11/2015</span> at <span>10:35am</span></p>
                        </div>
                         --%>-->
							<div class="choose-radio-outer">

								<div class="radio-audio-main">
									<div class="radio-audio-current">
										<div class="parent-track textalign-left">
											<p id="textmsg">We are about to begin</p>
										</div>

										<div class="btns-outer width70px">
											<a href="javascript:;"><img id="myImage"
												onclick="stopRadio()"
												src="<%=request.getContextPath()%>/NewStyles/images/speaker-grey.png"
												width="50" height="35"></a>
										</div>

									</div>
								</div>
								<h2>Choose a Radio Station</h2>
								<ul>
									<li><a
										onclick="fetchTracks(1, 'kindergarten','kindergarten-selected', this);"
										class="kindergarten" href="javascript:;">Exploring Me™
											Pre-k–Kindergarten</a></li>

									<li><a
										onclick="fetchTracks(2, 'elementary','elementary-selected', this)"
										class="elementary" href="javascript:;">Exploring
											Originality™ Elementary School</a></li>

									<li><a
										onclick="fetchTracks(3, 'middleschool','middleschool-selected', this)"
										class="middleschool" href="javascript:;">Exploring
											Potential™ Middle School</a></li>

									<li><a
										onclick="fetchTracks(4, 'highschool', 'highschool-selected', this)"
										class="highschool" href="javascript:;">Exploring
											Relevance™ High School</a></li>
								</ul>
							</div>

							<!--<div class="parent-track" >
                           	<p id="textmsg">We are about to begin</p>
                        </div>-->
							<!--<div class="btns-outer float-none">
                            <a href="javascript:;"><img id="myImage" onclick="stopRadio()" src="<%=request.getContextPath()%>/NewStyles/images/speaker-grey.png" width="100" height="70"></a>
						</div>-->
						</div>
					</div>
				</div>
			</div>
		</section>
		<%--         <section class="home-edition-dshbd">
        	<div class="containerSmall">
            	<div class="listing-view">
                	<ul>
                    	<li>
                        	<a href="javascript:;"><img id="myImage-list" onclick="iconView()" src="<%=request.getContextPath()%>/NewStyles/images/list-gry.png" width="18" height="17"></a>
                        </li>
                    	<li>
                        	<a href="javascript:;"><img id="myImage-grid" onclick="listView()" src="<%=request.getContextPath()%>/NewStyles/images/grid-grn.png" width="18" height="17"></a>
                        </li>
                    </ul>
            	</div>
            	<div class="overall-dashbd" id="icon-view">
                	<div class="dashbd-inner">
                    	<p>Breathing</p>
                        <div class="dashbd-listing">
                        	<ul>
                        	<c:set var="index" value="1"></c:set>
                        	<c:forEach var="audio" items="${audiosList}">
                        	<c:if test="${audio.categoryId eq 1}">
                            	<li>
                            	<span id="dummy" onclick="playSound(this, '${bucketPath}/audioFiles/${audio.audioName}');">
                            		<img src="<%=request.getContextPath()%>/NewStyles/images/music-listing-${index}.png">
                            	</span>
                                	
                                    <p>${audio.audioTitle}</p>
                                </li>
                                <c:set var="index" value="${index+1}"></c:set>
                                </c:if>
                                </c:forEach>
                            </ul>
                        </div>
                	</div>
                    <div class="dashbd-inner">
                    	<p>Meditation</p>
                        <div class="dashbd-listing">
                        	<ul>
                        	<c:set var="index" value="1"></c:set>
                        	<c:forEach var="audio" items="${audiosList}">
                        	<c:if test="${audio.categoryId eq 2}">
                            	<li>
                            	<span id="dummy" onclick="playSound(this, '${bucketPath}/audioFiles/${audio.audioName}');">
                            		<img src="<%=request.getContextPath()%>/NewStyles/images/music-listing-${index}.png">
                            	</span>
                                	
                                    <p>${audio.audioTitle}</p>
                                </li>
                                <c:set var="index" value="${index+1}"></c:set>
                                </c:if>
                                </c:forEach>
                            </ul>
                        </div>
                	</div>
                    <div class="dashbd-inner">
                    	<p>Relationship</p>
                        <div class="dashbd-listing">
                        	<ul>
                        	<c:set var="index" value="1"></c:set>
                        	<c:forEach var="audio" items="${audiosList}">
                        	<c:if test="${audio.categoryId eq 3}">
                            	<li>
                            	<span id="dummy" onclick="playSound(this, '${bucketPath}/audioFiles/${audio.audioName}');">
                            		<img src="<%=request.getContextPath()%>/NewStyles/images/music-listing-${index}.png">
                            	</span>
                                	
                                    <p>${audio.audioTitle}</p>
                                </li>
                                <c:set var="index" value="${index+1}"></c:set>
                                </c:if>
                                </c:forEach>
                            </ul>
                        </div>
                	</div>
                    <div class="dashbd-inner">
                    	<p>Gratitude</p>
                        <div class="dashbd-listing">
                        	<ul>
                        	<c:set var="index" value="1"></c:set>
                        	<c:forEach var="audio" items="${audiosList}">
                        	<c:if test="${audio.categoryId eq 4}">
                            	<li>
                            	<span id="dummy" onclick="playSound(this, '${bucketPath}/audioFiles/${audio.audioName}');">
                            		<img src="<%=request.getContextPath()%>/NewStyles/images/music-listing-${index}.png">
                            	</span>
                                	
                                    <p>${audio.audioTitle}</p>
                                </li>
                                <c:set var="index" value="${index+1}"></c:set>
                                </c:if>
                                </c:forEach>
                            </ul>
                        </div>
                	</div>
            	</div>
            	
            	
            	
            	
            	
            	
            	<div class="mc_col_2 margin-top-zero" id="list-view">
                <div class="mc_content">
                    <h5>Breathing</h5>
                    <div class="mc_track_wrap list-music">
                      <c:forEach var="audio" items="${audiosList}">
                        <c:if test="${audio.categoryId eq 1}">
                        <p>${audio.audioTitle}</p>
                        <div class="mc_grid_row">
                            <div class="lg_player">
                            
                            <audio preload="none" class="audioDemo" controls>
							  <source id="audioTrack" src="${bucketPath}/audioFiles/${audio.audioName}" type="audio/mpeg">
							</audio>
                            
                            </div>
                        </div>
                        </c:if>
                        </c:forEach>
                    </div>
                </div>
                <div class="mc_content">
                    <h5>Meditation</h5>
                    <div class="mc_track_wrap list-music">
                      <c:forEach var="audio" items="${audiosList}">
                        <c:if test="${audio.categoryId eq 2}">
                        <p>${audio.audioTitle}</p>
                        <div class="mc_grid_row">
                            <div class="lg_player">
                            
                            <audio preload="none" class="audioDemo" controls>
							  <source id="audioTrack" src="${bucketPath}/audioFiles/${audio.audioName}" type="audio/mpeg">
							</audio>
                            
                            </div>
                        </div>
                        </c:if>
                        </c:forEach>
                    </div>
                </div>
                <div class="mc_content">
                    <h5>Relationship</h5>
                    <div class="mc_track_wrap list-music">
                      <c:forEach var="audio" items="${audiosList}">
                        <c:if test="${audio.categoryId eq 1}">
                        <p>${audio.audioTitle}</p>
                        <div class="mc_grid_row">
                            <div class="lg_player">
                            
                            <audio preload="none" class="audioDemo" controls>
							  <source id="audioTrack" src="${bucketPath}/audioFiles/${audio.audioName}" type="audio/mpeg">
							</audio>
                            
                            </div>
                        </div>
                        </c:if>
                        </c:forEach>
                    </div>
                </div>
                <div class="mc_content">
                    <h5>Gratitude</h5>
                    <div class="mc_track_wrap list-music">
                      <c:forEach var="audio" items="${audiosList}">
                        <c:if test="${audio.categoryId eq 1}">
                        <p>${audio.audioTitle}</p>
                        <div class="mc_grid_row">
                            <div class="lg_player">
                            
                            <audio preload="none" class="audioDemo" controls>
							  <source id="audioTrack" src="${bucketPath}/audioFiles/${audio.audioName}" type="audio/mpeg">
							</audio>
                            
                            </div>
                        </div>
                        </c:if>
                        </c:forEach>
                    </div>
                </div>
            </div>
            	
            	
            	
            	
            </div>
        </section> --%>
	</div>

	<audio style="display: none;" id="currentPlayer" controls
		preload="none">
		<source src="" type="audio/mpeg">

	</audio>
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
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
	<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$("#header").sticky({ topSpacing: 0 });
		$("#list-view").hide();
		$.daisyNav();
	});
	</script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>

	<%-- <script type="text/javascript">
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
	
</script> --%>
	<%-- <script>
function changeImage() {
    var image = document.getElementById('myImage-grid');
    if (image.src.match("bulbon")) {
        image.src = "<%=request.getContextPath()%>/NewStyles/images/grid-grn.png";
    } else {
        image.src = "<%=request.getContextPath()%>/NewStyles/images/grid-gry.png";
    }
	
	var image = document.getElementById('myImage-list');
    if (image.src.match("bulbon")) {
        image.src = "<%=request.getContextPath()%>/NewStyles/images/list-gry.png";
    } else {
        image.src = "<%=request.getContextPath()%>/NewStyles/images/list-grn.png";
    }
}


function playSound(el,soundfile) {
	
	var url = '<%=request.getContextPath()%>/NewStyles/images/';
	$('#icon-running img').attr("src",url+'playing.png');
	
    
	
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
function iconView(){
	
	var url = '<%=request.getContextPath()%>/NewStyles/images/';
	$('#myImage-list').attr("src",url+'list-grn.png');
	$('#myImage-grid').attr("src",url+'grid-gry.png');
	$("#icon-view").hide();
	$("#list-view").show();
}
function listView(){
	
	var url = '<%=request.getContextPath()%>/NewStyles/images/';
	$('#myImage-list').attr("src",url+'list-gry.png');
	$('#myImage-grid').attr("src",url+'grid-grn.png');
	$("#icon-view").show();
	$("#list-view").hide();
	
}
</script> --%>
	<script type="text/javascript">
   
  
    $(function(){

    });
    
    function stopRadio()
    {
    	if($('#myImage').attr("src").indexOf("speaker-grey.png") != -1)
    	{	
    		 var element = $("div.choose-radio-outer> ul> li> a")
    		  //$(element).toggleClass(selected);
    		 for(var l=0; l< element.length; l++)
    		 {
    			 	if($(element[l]).attr("class").indexOf("selected") != -1)
    		 		{
    			 		var split = $(element[l]).attr("class").split(" ");
   			 			$(element[l]).click();
   			 			$(element[l]).addClass(split[1]);
    		 		}
    		 }

    	} 
    	if($('#myImage').attr("src").indexOf("speaker.gif") != -1)
    	{	
    	 	var audiojq =  $("#currentPlayer");
    	 	audiojq.trigger('pause');
    		$('#myImage').attr("src","<%=request.getContextPath()%>/NewStyles/images/speaker-grey.png");
    	}
    	
    	
    }

 function fetchTracks(id, select, selected, ids)
   {
	 $(ids).toggleClass(selected);
	 
	 var element = $("div.choose-radio-outer> ul> li> a")
	  //$(element).toggleClass(selected);
	 for(var l=0; l< element.length; l++)
	 {
		 	if($(element[l]).attr("class").indexOf("selected") != -1)
	 		{
		 		var split = $(element[l]).attr("class").split(" ");
		 		if(split[0] != select)
		 			$(element[l]).toggleClass(split[1]);
	 		}
	 }
	 
	 
	 var audiojq =  $("#currentPlayer");
	 
	 console.log('id -'+id)
	   $.ajax({  
	      	type : "GET",   
	      	url : "<%=request.getContextPath()%>/live/fetchProgramTracks",   
	       	async:true,
	     	data:'programId='+id,
	      	success : function(response) { 
	      		console.log(response)
	      	if(response != null)
	      	{	
	      		
	      		$('#textmsg').text("");
	      		$('#myImage').attr("src","<%=request.getContextPath()%>/NewStyles/images/speaker.gif");
								var audio = document
										.getElementById('currentPlayer');
								//songNames holds the comma separated name of songs
								var songNames = [];//= songs;//document.getElementById('hdnSongNames').value;

								for (var i = 0; i < response.tracks.length; i++) {
									if (id == 1) {
										songNames
												.push("${bucketPath}bitrate/lowbitrate/Exploring-Me/English/"
														+ response.tracks[i].audioName);
									}

									if (id == 2) {
										songNames
												.push("${bucketPath}bitrate/lowbitrate/Exploring-Originality/English/"
														+ response.tracks[i].audioName);
									}
									if (id == 3) {
										songNames
												.push("${bucketPath}bitrate/lowbitrate/Exploring-Potential/English/"
														+ response.tracks[i].audioName);
									}
									if (id == 4) {
										songNames
												.push("${bucketPath}bitrate/lowbitrate/Exploring-Relevance/English/"
														+ response.tracks[i].audioName);
									}

								}
								//console.log(songNames[0]);
								//audio.src = songNames[0];
								//				$("#").("/")

								var lstsongNames = songNames;
								var curPlaying = 0;
								// Attaches an event ended and it gets fired when current playing song get ended

								if (songNames.length > 0) {
									/* var random = Math.floor((Math.random() * songNames.length-1) + 1); */
									var random = Math
											.floor((Math.random() * 10) + 1);
									//var urls = audio.getElementsByTagName('source');
									//urls[0].src = lstsongNames[random];
									//Loads the audio song
									audiojq.attr("src", lstsongNames[random]);
									$('#textmsg')
											.text(
													"Playing: "
															+ response.tracks[random].audioTitle);
									audiojq.trigger('load');
									audiojq.trigger('play');
									//audio.load();
									//Plays the audio song
									//	audio.play();

								}

								audio.addEventListener('ended', function() {
									//var urls = audio.getElementsByTagName('source');
									// Checks whether last song is already run
									console.log('ended0')
									//if (urls[0].src	.indexOf(lstsongNames[lstsongNames.length - 1]) == -1) {

									/* if (curPlaying == lstsongNames.length - 1)
										curPlaying = 0;
									else
										++curPlaying; */

									var random = Math.floor((Math.random()
											* songNames.length - 1) + 1);

									audiojq.attr("src", lstsongNames[random]);

									audiojq.trigger('load');
									audiojq.trigger('play');
									//replaces the src of audio song to the next song from the list
									//urls[0].src = lstsongNames[curPlaying];
									//Loads the audio song
									//audio.load();
									//Plays the audio song
									//audio.play();
									//}
								});

							}
						}
					});
		}
	</script>

</body>
</html>
