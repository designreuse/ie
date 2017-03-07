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
<title>Parent Dashboard</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
</head>

<body>
<spring:eval var="bucketPath" expression="@propertyConfigurer.getProperty('bucket_path')" />
	<div class="wrapper">
	<%@include file="header.jsp" %>


		<section class="makeDonateSct mtop-5" style="padding-bottom: 0">
			<div class="container">
         		<div class="pracProgress_hdr">
            		<h2>Inner Explorer Radio</h2>
            		<div class="green_line_btm" style="margin-bottom: 0"></div>
            		
            		
					<div class="teach_dash_update margin-btm-zero margin-top-zero"><h3 class="teachr_dsh bdr-btm-none">Bridge to In-Classroom experience</h3>
               		</div>
               		
               		<c:if test="${paymentType == 2}">
                 <section class="may-dashboard-main">
     	<div class="container">
        	<div class="may-dsh-icon">
            	<ul>
                	<%-- <li>
                    	<a href="javascript:;" class="may-share-home" onclick="openShareInvite();"></a>
                    	<p id="invitesRemaining">${pendingInvite} Invites Remaining</p>
                    </li> --%>
                    <li>
                    	<a href="javascript:;" class="may-share-radio-new" onclick="openRadioInvite();"></a>
                    	<p id="invitesRemaining">${radioInvite} Radio Invites Sent</p>
                    </li>
                </ul>
            </div>
        </div>
     </section>
            </c:if>
               		
               			<%--  <c:if test="${paymentSuccess eq 'N'}">
      <div class="radio-cntr-btn">
            		<input type="button" value="Upgrade" onClick="location.href='<%=request.getContextPath()%>/donor/upgradeRadio';" class="startBtn"/>
            		</div>
            		</c:if> --%>
            	</div>
			</div>
		</section>
		
		<section class="makeDonateSct mtop-5 pbtm30 ">
			<div class="container">
         <div class="pracProgress_hdr mrgtp_0">
         <%-- 	<div class="radio-logo">
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
                            	<div class="parent-track textalign-left" >
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/pause-parent.png" onclick="stopRadio()" class="radio-pau">
                           <p id="textmsg" >We are about to begin</p>
                        </div>
                        
                        <div class="btns-outer width70px mtop10">
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

	</div>
<div id="sendRadioInvitePopUp" style="display: none" class="getstartForm_teacher margin-top-zero">
			<h3 class="migChngPass pophdr">Share The Radio</h3>
		<form:form  method="post" id="sendRadioInviteForm" modelAttribute="dtoLetterToParent"  action="sendParentRadioInvite" class="register-form" >
								<h3 class="migChngPass popsubhdr" id="radioInvitesMsg">${radioInvite} Radio Invites Sent</h3>		
										<ul>
										<div id="parentInfo_0">
										<div id="divSection_0_0">
											
											<li class="margin-bottom-ten">
												<div class="input_relative">
												<div class="input_add_logo width100">
												 <label>Enter Name</label>
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field full-width-input">
															<input placeholder="Enter Name" type="text" name="parentName_0_0" id="parentName_0_0" class="ignore1"/>
														</div>
													</div>
												</div>
												</div>
												</div>
											</li>
											
											<li class="margin-bottom-ten">
												<!-- <div class="input_relative"> -->
												<!-- <div class="input_add_logo width-less"> -->
												 <label>Enter Email</label>
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input placeholder="Enter Email*" type="text" name="parentEmail_0_0" id="parentEmail_0_0" class="ignore1"/>
														</div>
													</div>
												</div>
											</li>
											
												<li class="margin-bottom-ten">
												<div class="input_relative">
												<div class="input_add_logo width100">
												 <label>Enter Name</label>
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field full-width-input">
															<input placeholder="Enter Name" type="text" name="parentName_0_1" id="parentName_0_1" class="ignore1"/>
														</div>
													</div>
												</div>
												</div>
												</div>
											</li>
											
											<li class="margin-bottom-ten">
												<!-- <div class="input_relative"> -->
												<!-- <div class="input_add_logo width-less"> -->
												 <label>Enter Email</label>
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input placeholder="Enter Email*" type="text" name="parentEmail_0_1" id="parentEmail_0_1" class="ignore1"/>
														</div>
													</div>
													
												</div>
												<div class="plusImg plus-pos" id="removeLast_0_0">
										        <a  title="Add More" onclick="addMoreClass(0,1);" id="addMoreClass_0">
										         <img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a>
										       </div> 
											</li>
																				
										     
										        
<%-- 											<li>
												<div class="input_relative">
												<div class="input_add_logo width-less">
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input placeholder="Comment" type="text" name="comments" id="comments_${schoolId}_0" class="ignore1"/>
														</div>
													</div>
												</div>
												</div>
												 <div class="plusImg" id="removeLast_${schoolId}_0"><a  title="Add More" onclick="addMoreClass(${schoolId},0);" id="addMoreClass_${schoolId}"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a></div> 
												</div>
											</li> --%>
											</div>
											</div>
											</ul>
                   <input type="button" value="SEND INVITE" class="change_trackbtn_qus" onclick="sendingEmailToParents();">
				</form:form>
	</div>
	<div id="emailDiv"></div>
	<div id="sendSubscriptionPopUp" style="display: none" class="getstartForm_teacher margin-top-zero">
		<h3 class="migChngPass pophdr">Share Home Edition</h3>
		<form:form action="saveSubscriptionParent1" id="parentSubscriptionForm" modelAttribute="dtoParentInvite" name="parentSubscriptionForm" method="post" class="register-principal">
		
		<h3 class="migChngPass popsubhdr" id="pendingInvitesMsg"></h3>
			<ul id="inviteDetail">
               <li>
               <label>Enter Name</label>
               		<div class="contact-row">
               			<div class="outer-field-wrap">
							<div class="outer-field">
								<input type="text" placeholder="Enter Name" id="name1" name="name1">
							</div>
						</div>
					</div>
				</li>
				<li>
               <label>Enter Email</label>
               		<div class="contact-row">
               			<div class="outer-field-wrap">
							<div class="outer-field">
								<input type="text" placeholder="Enter Email" id="email1" name="email1">
							</div>
						</div>
					</div>
				</li>
				<li>
               <label>Enter Name</label>
               		<div class="contact-row">
               			<div class="outer-field-wrap">
							<div class="outer-field">
								<input type="text" placeholder="Enter Name" id="name2" name="name2">
							</div>
						</div>
					</div>
				</li>
				<li>
               <label>Enter Email</label>
               		<div class="contact-row">
               			<div class="outer-field-wrap">
							<div class="outer-field">
								<input type="text" placeholder="Enter Email" id="email2" name="email2">
							</div>
						</div>
					</div>
				</li>
              </ul>
              
			<input type="submit" value="SEND INVITE" id="submitEmail" class="change_trackbtn_qus" onclick="submitEmailFrom();">
		</form:form>
	</div>
<audio style="display: none;" id="currentPlayer"
									controls preload="none">
									<source src="" type="audio/mpeg">
									
								</audio>
	 
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>  
  <%@include file="../footer.jsp" %>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
   <script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$("#header").sticky({ topSpacing: 0 });
		$("#list-view").hide();
		$.daisyNav();
	});
	</script>
	
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
   <script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>

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
    	
    	$('.radio-pau').hide();
    	 $.validator.addMethod("emailAlreadyExist", function(value, element) {
             return  emailAlreadyCheck(value);
         }, "Invite already sent to this mail address.");
            
    	jQuery.validator.addMethod("notEqual", function(value, element) {
    		var status = true;
    		$('[id^=parentEmail_]').each( function( index, el ){
    			if(($( el ).val() == value) && $( el ).attr("id") != $(element).attr("id") ){
    				status = false;
    			}
    		});
    		  return this.optional(element) || status;
    		}, "Please use unique email address.");
    	
    	
    	
      
    	
    	$.validator.addMethod("nameRegex", function(value, element) {
            return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
        }, "Field must contain letters only.");
    	
    	jQuery.validator.addMethod("laxEmail", function(value, element) {
    		if(value==$('#email1').val()){
    			return false;
    		}else{
    			return true;
    		}
    		}, 'Please enter a new email address.');
    	
        $('#parentSubscriptionForm').validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            ignore: "",
            rules: {

         	email1:{
            		required: true,
            		email:true
            	},
            	
         	name1:{
         		 required: true,
                  maxlength : 20
            	},
         	name2:{
         		//required: true,
                maxlength : 20
            	},
         	email2:{
         		//required: true,
        		email:true
            	}
            	
            },


            invalidHandler: function(event, validator) { //display error alert on form submit   
            },

            highlight: function(element) { // hightlight error inputs
                $(element)
                    .closest('.outer-field').addClass('has-error'); // set error class to the control group
                $(element)
                    .closest('.fullrow').addClass('has-error'); // set error class to the control group
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
    function emailAlreadyCheck(value){
    	var email = value;
    	var url = '<%=request.getContextPath()%>';
    	$.ajax({
    		url : url+'/donor/checkParentInviteEmailExist',
    		data:{email:email},
    		method : 'POST',
    		async:false,
    		success : function(result) {
    			var emailStatus;
    			if(result == false){
    				//alert('hai');
    				$('#emailDiv').addClass('existClass');
    				 if($('#emailDiv').hasClass('notExistClass')){
    				   $('#emailDiv').removeClass('notExistClass');
    				 }
    			}
    			else{
    				//alert('nai hai');
    				$('#emailDiv').addClass('notExistClass');
    				if($('#emailDiv').hasClass('existClass')){
    					   $('#emailDiv').removeClass('existClass');
    					 }
    			}
    		}
    	});

    	if($('#emailDiv').hasClass('existClass')){
    		return false;
    	}else if($('#emailDiv').hasClass('notExistClass')){
    		return true;
    	}else{
    		//alert('nnaaiii');
    		return true;
    	}
    	
    }
    
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
    	 	$('.radio-pau').attr("src","<%=request.getContextPath()%>/NewStyles/images/play-ie-p.png");
    		$('#myImage').attr("src","<%=request.getContextPath()%>/NewStyles/images/speaker-grey.png");
    	}
    	else
    		{
    		//var audiojq =  $("#currentPlayer");
    			$('.radio-pau').attr("src","<%=request.getContextPath()%>/NewStyles/images/pause-parent.png");
    		//	audiojq.trigger('pause');
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
	 $('.radio-pau').show();
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
				//songNames holds the comma separated name of songs
				var songNames =[];//= songs;//document.getElementById('hdnSongNames').value;
				
				for(var i=0; i< response.tracks.length;i++)
					songNames.push("${bucketPath}/audioFiles/"+response.tracks[i].audioName);

				var lstsongNames = songNames;
				var curPlaying = 0;
				// Attaches an event ended and it gets fired when current playing song get ended
				
				if(songNames.length > 0)
				{
					/* var random = Math.floor((Math.random() * songNames.length-1) + 1); */
					var random = Math.floor((Math.random() * 10) + 1);
					//var urls = audio.getElementsByTagName('source');
					//urls[0].src = lstsongNames[random];
					//Loads the audio song
					audiojq.attr("src", lstsongNames[random]);
					$('#textmsg').text("Playing: "+response.tracks[random].audioTitle);
					 audiojq.trigger('load');
					 audiojq.trigger('play');
					 
					//audio.load();
					//Plays the audio song
				//	audio.play();
						
				}
				
				
				audio.addEventListener(
								'ended',
								function() {
									//var urls = audio.getElementsByTagName('source');
									// Checks whether last song is already run
									console.log('ended0')
									//if (urls[0].src	.indexOf(lstsongNames[lstsongNames.length - 1]) == -1) {
										
										/* if (curPlaying == lstsongNames.length - 1)
											curPlaying = 0;
										else
											++curPlaying; */
											
										var random = Math.floor((Math.random() * songNames.length-1) + 1);
										
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
 
 function openShareInvite(){
		
		$.ajax({
		    type : 'POST',
		    url : '<%=request.getContextPath()%>/donor/getSubscriptionDetail',
		    success:function(result){
		    if(result.length <= 2){
		    	if(result.length != 0){
		    		$("#pendingInvitesMsg").text((2-result.length)+" Invite Left");
		    	}else{
		    		$("#pendingInvitesMsg").text("You can send invites to 2 users.");
		    	}
		    }else{
		    	$("#pendingInvitesMsg").text("");
		    }
		    if(result.length >= 2){
		    	$("#submitEmail").hide();
		    }
			    $.each(result,function(index,value){
			    	if(index==0){
			    		$("#name1").val(value.name1);
			    		$("#email1").val(value.email1);
			    		$("#name1").attr("readOnly","true");
			    		$("#email1").attr("readOnly","true");
			    		
			    	}
			    	if(index==1){
			    		$("#name2").val(value.name1);
			    		$("#email2").val(value.email1);
			    		$("#name2").attr("readOnly","true");
			    		$("#email2").attr("readOnly","true");
			    	}
			    	
			    });
		    }
			});
		
		
		
		$.fancybox({
			 'minWidth':200,
			 'maxWidth':600,
			 'padding':25,
			 'minHeight':300,
		     'autoScale': true,
		     'autoDimensions': true,
		     'centerOnScroll': true,
		     'href' : '#sendSubscriptionPopUp'
		  });
	}
 $(document).on('click', '.fancybox-close', function () {
	 $("#parentSubscriptionForm")[0].reset();
	 $('#email1-error').text(" ");
	 $('#email2-error').text(" ");
	 $('#name1-error').text(" ");
	 $('#name1-error').text(" ");
	 
	  $("#sendRadioInviteForm")[0].reset();
	 
	 $('[id^=parentName_]').each( function( index, el ) {
			$( el ).text(" ");
			if(index>0){
				removeClassDetailsLast(0,index);
			}
			$('#'+el.id).removeClass('error');
		});
		$('[id^=parentEmail_]').each( function( index, el ) {
			$( el ).text(" ");
			$('#'+el.id).removeClass('error');
		}); 
	
		
});
 function openRadioInvite(){
		
		$.fancybox({
			 'minWidth':250,
			 'maxWidth':600,
			 'padding':25,
			 'minHeight':300,
		     'autoScale': true,
		     'autoDimensions': true,
		     'centerOnScroll': true,
		     'href' : '#sendRadioInvitePopUp'
		  });
		
		
	}
 
 function submitEmailFrom(){
		
		/* 	if($('#email1').val().trim().length>0  && $('#email1').val()==$('#email2').val()){
				alert('you are entering same email again.');
				$('#email2').val("");
				 $('#name2').rules('add', {
				    	required: true, 
			    		//minlength : 10,
			    		maxlength : 30
			    		//digits	: true
			    	});
			}  */
			//alert($('#email1').val());
			 if($('#name2').val().trim().length>0){
				  $('#name2').rules('add', {
				    	required: true, 
			    		//minlength : 10,
			    		maxlength : 30
			    		//digits	: true
			    	});
				  $('#email2').rules('add', {
			    	    required: true,
			    	    email: true,
			    	    laxEmail:true
			    	    /* emailAlreadyExist: true, */
			    	});
				  
			    }
			 else if($('#email2').val().trim().length>0){
				 $('#name2').rules('add', {
				    	required: true, 
			    		//minlength : 10,
			    		maxlength : 30
			    		//digits	: true
			    	});
				  $('#email2').rules('add', {
			    	    required: true,
			    	    email: true,
			    	    laxEmail:true
			    	    /* emailAlreadyExist: true, */
			    	});
			 }
			 else{
				// alert('el');
			    	 $('#name2').rules('remove');
			    	 $('#email2').rules('remove');
			    }
			  
		}
 function sendingEmailToParents(){
		$("#sendRadioInviteForm").validate({ ignore: []});
		$("#sendRadioInviteForm").validate();

		$('[id^=parentName_]').each( function( index, el ) {
			var id  = '#'+el.id;
			//console.log($(id));
			//$(id).removeClass('error');
			if(id != '#parentName_0_1'){
		    $( el ).rules('add', {
		    	required: true, 
	    		//minlength : 10,
	    		maxlength : 30
	    		//digits	: true
	    	});
			}
			
			else if(id == '#parentName_0_1'){
				if($('#parentName_0_1').val().trim().length>0){
					
					$('#parentName_0_1').rules('add', {
						required: true,
			    		maxlength : 30
			    	});
					
					$('#parentEmail_0_1').rules('add', {
				    	   required: true,
				    	    email: true,
				    	    notEqual:true,
				    	    emailAlreadyExist:true 
				    	});
					
				}
				else if($('#parentEmail_0_1').val().trim().length>0){
					$('#parentEmail_0_1').rules('add', {
				    	   required: true,
				    	    email: true,
				    	    notEqual:true,
				    	    emailAlreadyExist:true 
				    	})
					
				
					$('#parentName_0_1').rules('add', {
			    	    required: true,
			    	    maxlength : 30
			    	});
				}
				else{
					 $('#parentName_0_1').rules('remove');
					 $('#parentEmail_0_1').rules('remove');
				}
				
			}
			else{
				 $('#parentName_0_1').rules('remove');
				 $('#parentEmail_0_1').rules('remove');
			}
		});
		$('[id^=parentEmail_]').each( function( index, el ) {
			var id  = '#'+el.id;
			//console.log(id);
			//$(id).removeClass('error');
			if(id != '#parentEmail_0_1'){
		    $( el ).rules('add', {
	    	    required: true,
	    	    email: true,
	    	    notEqual:true,
	    	    emailAlreadyExist:true 
	    	});
			}
			 else if(id == '#parentEmail_0_1' && $(id).val().trim().length>0){
				 $( el ).rules('add', {
			    	    required: true, 
			    	    email: true,
			    	    notEqual:true,
			    	    emailAlreadyExist:true 
			    	})
			} 
		    
		});

		
		if($("#sendRadioInviteForm").valid()){
			//alert("hiiii"+true);
			
			$('[id^=parentName_]').each( function( index, el ) {
				$( el ).attr('name',"parentName");
			});
			$('[id^=parentEmail_]').each( function( index, el ) {
				$( el ).attr('name',"parentEmail");
			});
			/* $('[id^=comments_]').each( function( index, el ) {
				$( el ).attr('name',"comments");
			}); */
			 $("#sendRadioInviteForm").submit();
			return true;
		}else{
			return false;
		}

	}
 function addMoreClass(programId,index){
		var divId = index + 1;
		var htmlContents='<a title="Remove" onclick="removeClassDetails('+programId+','+ index + ');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></a>';
		$($("#removeLast_"+programId+"_" + index + '')).empty();
		$($("#removeLast_"+programId+"_" + index + '')).html(htmlContents);
		$("#addMoreClass_"+programId).remove();
		$("#parentInfo_"+programId).append('<div id="divSection_'+programId+'_'+ divId + '">'+
				
	    '<li><label>Enter Name</label><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
	    '<input type="text" name="parentName_'+programId+'_'+ divId +'" placeholder="Enter Name"   class="ignore1" id="parentName_'+programId+'_'+ divId + '" /></div></div></div>'+
	    '</li>'+
	    '<li><div class="input_relative"><div class="input_add_logo width100"><label>Enter Email</label> <div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
	    '<input type="text" name="parentEmail_'+programId+'_'+ divId +'" placeholder="Enter Email*" class="ignore1"  id="parentEmail_'+programId+'_'+ divId + '"/></div></div></div></div>'+//</li>'+
	   // '<li><div class="input_relative"><div class="input_add_logo width-less"><div class="contact-row"><div class="outer-field-wrap">'+
	   // '<div class="outer-field"><input placeholder="Comment" type="text" name="comments_'+programId+'_'+ divId +'" id="comments_'+programId+'_'+ divId +'" class="ignore1"/></div></div></div></div>'+
	    '<div class="plusImg plus-pos" id="removeLast_'+programId+'_'+divId+'"><a style="margin: 0 10px 0 0;" onclick="removeClassDetailsLast('+programId+','+ divId +');" id="removeParent_'+programId+'">'+ 
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
</script>

</body>
</html>
 