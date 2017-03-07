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
 <spring:eval expression="@propertyConfigurer.getProperty('service.url')" var="baseURL" />
<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Inner Explorer </title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
</head>
<body>
<spring:eval var="bucketPath" expression="@propertyConfigurer.getProperty('bucket_path')" />
	<div class="wrapper">
		<section class="makeDonateSct mtop-5 pbtm30 ">
			<div class="container">
         <div class="pracProgress_hdr">
         	<div class="radio-logo">
            	<a href="javascript:;"><img src="<%=request.getContextPath()%>/NewStyles/images/logo-radio.png"></a>
            </div>
				<h3 class="teachr_dsh bdr-btm-none">Start your Inner Explorer experience today</h3>
				<div class="clr"></div>
				<div class="check-select-out width700px">
                	<div class="parent-dash-out">
                        <div class="choose-radio-outer">
                            <div class="radio-audio-main">
                            	<div class="radio-audio-current">
                            	<div class="parent-track textalign-left" >
                           <p id="textmsg" >We are about to begin</p>
                        </div>
                        <div class="btns-outer width90px mtop10">
                            <a href="javascript:;"><img id="myImage" onclick="stopRadio()" src="<%=request.getContextPath()%>/NewStyles/images/speaker-grey.png" width="50" height="35"></a>
						</div>
                            	</div>
                            </div>
                            <h2>Choose a Radio Station</h2>
                            <ul>
                            	<li><a onclick="fetchTracks(1, 'kindergarten','kindergarten-selected', this);" class="kindergarten" href="javascript:;">Exploring Me™ Pre-k–Kindergarten</a></li>
                                <li><a onclick="fetchTracks(2, 'elementary','elementary-selected', this)" class="elementary" href="javascript:;">Exploring Originality™ Elementary School</a></li>
                                <li><a onclick="fetchTracks(3, 'middleschool','middleschool-selected', this)"class="middleschool" href="javascript:;">Exploring Potential™ Middle School</a></li>
                                <li><a onclick="fetchTracks(4, 'highschool', 'highschool-selected', this)" class="highschool" href="javascript:;">Exploring Relevance™ High School</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
			</div>
		</section>
	</div>
	<audio style="display: none;" id="currentPlayer" controls
		preload="none">
		<source src="" type="audio/mpeg">
	</audio>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>  
<%@include file="footer.jsp" %>
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
	      		var audio = document.getElementById('currentPlayer');
				var songNames =[];//= songs;//document.getElementById('hdnSongNames').value;
				for(var i=0; i< response.tracks.length;i++)
				songNames.push("${bucketPath}/audioFiles/"+response.tracks[i].audioName);
				var lstsongNames = songNames;
				var curPlaying = 0;
				if(songNames.length > 0)
				{
					var random = Math.floor((Math.random() * 10) + 1);
					audiojq.attr("src", lstsongNames[random]);
					$('#textmsg').text("Playing: "+response.tracks[random].audioTitle);
					 audiojq.trigger('load');
					 audiojq.trigger('play');
				}
				audio.addEventListener(
								'ended',
								function() {
									console.log('ended0')
									var random = Math.floor((Math.random() * 10) + 1);
									audiojq.attr("src", lstsongNames[random]);
								 audiojq.trigger('load');
								 audiojq.trigger('play');
								});
	      	}
	      	}
	  });
   }
</script>
</body>
</html>