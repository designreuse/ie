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
<title>Dashboard</title>
    <c:if test="${companyName eq '1'}">
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<c:if test="${companyName eq '2'}">
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
</head>

<body>
<spring:eval var="bucketPath" expression="@propertyConfigurer.getProperty('bucket_path')" />
<div class="wrapper">
    <%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper">
    
    <!--inner_header starts-->
    <%-- <div class="inner_header">
     <img src="<%=request.getContextPath()%>/NewStyles/images/about-us-header.jpg"  alt=""/> 
     </div> --%>
     
     
     
     
     
      <section class="tehDsh-step1 ">
			<div class="container">
				<div class="pracProgress_hdr">
            	<h2>Teacher Dashboard</h2>
            	<div class="green_line_btm"></div>
            </div>
        
        
		<div class="tdm_player_notes">
							
			<div class="mp3_playerbar_notes" style="position: relative;width:100%">
			
   				<c:forEach var="audio" items="${audioList}" varStatus="loop" >
     				<c:if test="${audio.isEnable eq 'Y'.charAt(0)}">
     				
     					 <fmt:formatDate pattern="dd MMM yyyy" value="${createdDate}" var="date" />
    					<p>${audio.audioDescription} - on ${date}</p>
						<audio style="width: 50%;float: left;" id="player-${audio.audioId}" controls data-audio-id="${audio.audioId}" data-program-id="${audio.programId}" data-length="${audio.cursorEnd}" data-audio-feedback="${audio.feedbackId}">
							<source src="${bucketPath}/audioFiles/${audio.audioName}" type="audio/mpeg"></source>
						</audio>
						<img style=" position: absolute;left: 51%;top:41px;" src="<%=request.getContextPath()%>/NewStyles/images/bonustrack.png" alt="Logo" title="logo" width="50px;" height="30px;"/>
   						<div class="daily_notes_content" style="margin: 0px;padding: 12px;float: right;display: inline-block;width: 42%;background: #dce1dd;">
        				<h5>Daily Notes</h5>
         				<p>${audio.audioNote}</p>
        			</div>
   					</c:if>
   				</c:forEach>
    		</div>
    		
    		
    		      	
 	<div class="suggested_qus-wrapper">
    	<p>Suggested Questions</p>
        	<ul style="margin-left: 311px;margin-top: -119px;">
        	<c:forEach var="audio" items="${audioList}" varStatus="loop" >
	     		<c:if test="${audio.isEnable eq 'Y'.charAt(0)}">
	     			<c:forEach var="audioQuestion" items="${audio.audioQuestions}" varStatus="loop" >
	     				<li style="margin-top: 132px;margin-left: -303px;"><p>Q${loop.count} ${audioQuestion.questionDesc}</p></li>
	     			</c:forEach>
	     	 		
	     	</c:if>
     		</c:forEach>
        </ul>
    </div>
    		
		</div>				
	   </div>
	</section>
		
     
     
<%--      
     
     
     <!--teacher_dashboard_main starts-->
     <section class="tehDsh-step1 ">
			<!-- <div class="containerSmall"> -->
				<h2>Teacher Dashboard</h2>
				<div class="green_line_btm"></div>
				<div class="txtcenter_align mrgtp25"><input type="button" value="Restart Training" class="startBtn" onclick="location.href='<%=request.getContextPath()%>/teacher/teacher-dash-step1';"/>
					</div>
<div class="tdm_player">

	<div class="tdm_player_notes">
	<p>Lesson No. 3 - on 10 Sep 2015</p>
	
	<div class="mp3_playerbar">
      <img src="<%=request.getContextPath()%>/NewStyles/images/player_bar.gif"  alt=""/> 
      
      
     
	
   <c:forEach var="audio" items="${audioList}" varStatus="loop" >
  
     <c:if test="${audio.isEnable eq 'Y'.charAt(0)}">
     
  
 	 
	<audio id="player-${audio.audioId}" controls
									data-audio-id="${audio.audioId}"
									data-program-id="${audio.programId}"
									data-length="${audio.cursorEnd}"
									data-audio-feedback="${audio.feedbackId}">
		<source src="<%=request.getContextPath()%>/audioFiles/${audio.audioName}" type="audio/mpeg"></source>
	</audio>
	
	<img style="margin-left: 570px;margin-top: -22px;" src="<%=request.getContextPath()%>/NewStyles/images/bonustrack.png" alt="Logo" title="logo" width="50px;" height="30px;"/>
   </c:if>
   <c:if test="${audio.isEnable eq 'N'.charAt(0)}">
   <center><p>${audio.audioDescription}</p></center>
    <audio id="player-${audio.audioId}" controls data-audio-id="${audio.audioId}">
  		<source src="" type="audio/mpeg" ></source>
	</audio>
	<br>
   </c:if>
   </c:forEach>
        
      </div>	
      	
      	
      	
 <div class="suggested_qus-wrapper">
    	<p>Suggested Questions</p>
        <ul style="margin-left: 311px;margin-top: -119px;">
        <c:forEach var="audio" items="${audioList}" varStatus="loop" >
	     <c:if test="${audio.isEnable eq 'Y'.charAt(0)}">
	     	<c:forEach var="audioQuestion" items="${audio.audioQuestions}" varStatus="loop" >
	     		<li style="margin-top: 132px;margin-left: -303px;"><p>Q${loop.count} ${audioQuestion.questionDesc}</p></li>
	     	</c:forEach>
	     	 <div class="daily_notes_content">
        	<h5>Daily Notes</h5>
         <p>${audio.audioNote}</p>
        </div>
	     </c:if>
     	</c:forEach>
        </ul>
    </div>
    			
	
    
    	
</div> --%>
	
				
	
   <form name="feedback" id="feedback" action="teacher/savefeedback" method="POST">
   <div class="leave_feedbk" id="leave_feedbk">
   <div class="getstartForm">
   <ul>
	<li>
		<div class="contact-row">
		<div class="common_label">
		<label>How many students participated</label>
		</div>
			<div class="outer-field-wrap">
				<div class="outer-field">
				<input placeholder="No. Of Students" name="studentNumber" type="text"/>
				</div>
			</div>
		</div>
	</li>
	<li>
		<div class="contact-row">
				<div class="common_label">
		<label>How was the audio quatlty</label>
		</div>
			<div class="outer-field-wrap">
				<div class="outer-field">
					<select name="audioQuality" class="select-dept">
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
      <input id="rating" name="rating" type="hidden" value="" />
       <label>How would you rate for todays session?</label>
      <div class="star_rating mrgtp_0 mrgtm_20" id="audiofeedback">
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt="" onclick="changeRating(1);"/></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt="" onclick="changeRating(2);"/></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt="" onclick="changeRating(3);"/></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt="" onclick="changeRating(4);"/></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt="" onclick="changeRating(5);"/></span>
      
      </div>
      </div>
   <div class="fieldbox_leave">   
   <label>Share your observation from today's session</label>
      <textarea rows="6" id="comment" name="comment"></textarea>
      </div>
      

      <div class="fieldbox_leave mrgtp25">
      <input type="submit" value="SUBMIT" class="input_submit_btn">
      </div>
      </div>	
      </form>
				
</div>				
			</div>
		</section>
     <!--teacher_dashboard_main ends-->
     
    <!--inner_header ends-->
    
    
    </div>
    <!--inner_wrapper ends-->
</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %>
<%-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script> --%> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
<script type="text/javascript">	
	$(document).ready(function($){
		
		$("#leave_feedbk").hide();
		
		$.daisyNav();
		
	    //audio element click
		$("audio").bind('play', function () {
			    //alert("clicked."+$(this).attr('data-audio-id'));
			    sendData($(this).attr('data-audio-id'),$(this).attr('data-program-id'),$(this).attr('data-length'),$(this).attr('data-audio-feedback'));
			    			});
	});
	  $(document).ready(function() {     
		   	//ComponentsPickers.init();

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
		                       		required: true,
		                       		digits : true,
		                       		/* minlength : 3,*/
		                       		maxlength : 4 
		                       	},
		                       	comment:{
		                       		required: true,
		                       		maxlength : 1000
		                       	}/* ,
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
		                           form.submit();
		                       }
		                   });

		   });
	
	function sendData(id,programId,audioLength,feedbackExist){
		
		
		console.log("########### feedback ::"+feedbackExist);
		
		//alert(id);
		var audioElement = document.getElementById('player-'+id);
    
		// PLAYER PAUSE FUNCTION
	    audioElement.addEventListener('pause', function(e){
	        console.log('Audio playback has been paused ...');
	        console.log('Playback paused at : '+ e.target.currentTime +" seconds");
	        console.log('Playback paused at : '+ e.target.duration +" seconds");
	        console.log('Playback paused cursor end  : '+ audioLength +" seconds");
	      
	        if(audioLength != e.target.duration){
	        	 $.ajax({  
	 	            type : "POST",   
	 	            url : "<%=request.getContextPath()%>/teacher/audioTrackInfo",   
	 	            data : "cursorEnd=" + e.target.currentTime + "&audioId=" + id + "&programId="  
	 	              + programId+"&complete=0",   
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
	        }, false);
	       

	    // PLAYER ENDED FUNCTION
	    audioElement.addEventListener('ended', function(e){
	        console.log('Playback has ended');
	        $.ajax({  
	            type : "POST",   
	            url : "<%=request.getContextPath()%>/teacher/audioTrackInfo",   
	            data : "cursorEnd=" + e.target.currentTime + "&audioId=" + id + "&programId="  
	              + programId+"&complete=1", 
	             async:false,
	            success : function(response) {  
	             if(response == "showFeedback"){
	            	 //$("#leave_feedbk").focus();
	            	 if(feedbackExist != 1){
	            		 $("#leave_feedbk").show();
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
	    },false);

	}
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
    	consle.log(document.getElementById("rating").value);
    }
    function clearForm(){
    	location.href = "<%=request.getContextPath()%>/teacher/feedback";
<%--     	$('#leaveFeedback').val('');
    	var audiofeedback = '';
        for(var i=1;i<=5;i++){
            	audiofeedback+='<img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""   onclick="changeRating('+i+');">';
		}
        $("#audiofeedback").html('');
        $("#audiofeedback").html(audiofeedback); --%>
    }
	
</script>
</body>
</html>
