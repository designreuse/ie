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
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css"> --%>
	<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/select2/select2_metro.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
.fancybox-inner{
height: auto !important;
}
</style>
</head>

<body>
<spring:eval var="bucketPath" expression="@propertyConfigurer.getProperty('bucket_path')" />
<div class="wrapper">
<%@include file="header.jsp" %>

<!--inner_wrapper starts-->
<div class="inner_wrapper"> 
    
    <!--inner_header starts-->
    <%-- <div class="inner_header"> <img src="<%=request.getContextPath()%>/NewStyles/images//about-us-header.jpg"  alt=""/> </div> --%>
    
    <!--teacher_dashboard_main starts-->
    <section class="tehDsh-step1 ">
        <div class="container">
            <div class="pracProgress_hdr">
            <h2>School Dashboard</h2>
            <div class="green_line_btm"></div>

            </div>
            <div class="feed-outer">
            <div class="scl-db-logo-outr">
            	 <div class="scl-dshbd-logo">
            <c:if test="${empty schoolDetail.logoUrl}">
            <img src="<%=request.getContextPath()%>/NewStyles/images/school-default.jpg" class="level-image height-auto-1" alt=""/>
            </c:if>
            	<c:if test="${not empty schoolDetail.logoUrl}">
            <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${schoolDetail.logoUrl}" class="level-image height-auto-1" alt=""/>
            </c:if>
            <div class="float-none margin0auto" style="margin: 5px 0 0 0;">
            ${schoolDetail.schoolName}
            </div>
            </div>
            
            <div class="rt-subs-date">
            	 <div class="princiapl_upgrade_plan">
                    <div class="pup_col_1 float-none margin0auto">
                    <%-- <c:if test="${paymentTypeMsg == 1}"> --%>
                        <!-- <h3>You are subscribed for a for 45 sessions</h3> -->
                        <c:if test="${paymentTypeMsg == 1}">
                        <c:if test="${expiryStatus eq 'N'}">
                        <h3>You are subscribed till ${expireDate}</h3>
                        </c:if>
                        <c:if test="${expiryStatus eq 'Y'}">
                        <h3>Your subscription has expired. To renew your subscription, Please goto your <a href="<%=request.getContextPath()%>/principal/manageProfile" class="subExp">manage profile</a> section. </h3>
                        </c:if>
                        </c:if>
                        <c:if test="${paymentTypeMsg != 1}">
                        <h3>You are subscribed till ${expireDate}</h3>
                        </c:if> 
                        <c:if test="${schoolDetail.isChangedMonthlyToYearly eq 'Y'}">
											<h3>Your Subscription will change from Monthly To Yearly starting from ${expireDate}</h3>
										</c:if>
                    <%--  </c:if> --%>
                    <%-- <c:if test="${paymentTypeMsg != 1}"> --%>
                        <!-- <h3>You are subscribed for lifetime membership</h3> -->
                        <!-- <h3>You are subscribed for one school year program</h3> -->
                     <%-- </c:if> --%>
                        <!-- <h4>Plan expires on 10/09/2016</h4> -->
                    </div>
                    <%-- <div  class="pup_col_2">
                        <input type="button" onclick="location.href='<%=request.getContextPath()%>/principal/reviewProgram';" class="input_upgrade_btn" value="REVIEW PROGRAM">
                    </div> --%>
                </div>
                
                 <div class="dashboard_new_btns">
                	<%-- <div  class="pup_col_2">
                        <input type="button" onclick="getPlaybackAPI(${schoolDetail.schoolId});" class="input_upgrade_btn" value="TRACK RADIO INVITES">
                    </div> --%>
                    <ul>
                    	<li><div class="tmc_3 mright15">
                		<input type="button" class="input_upgrade_btn welcome_btn_new padding-xtra" value="View Tune In Activity" onclick="getPlaybackAPI(${schoolDetail.schoolId});">
                	</div></li>
                    <li><div class="tmc_3 mright15">
                		<input type="button" class="input_upgrade_btn welcome_btn_new" value="ADD CLASSES" onclick="location.href='<%=request.getContextPath()%>/principal/select-program';">
                		<%-- <input type="button" class="input_upgrade_btn welcome_btn_new" value="INCREASE REACH WITHIN MY SCHOOL" onclick="location.href='<%=request.getContextPath()%>/principal/createClass';"> --%>
                	</div></li>
                	<li><div class="tmc_3 mright15">
                		<input type="button" class="input_upgrade_btn welcome_btn_new" value="Send Message To Teachers" onclick="showDiv(${schoolDetail.schoolId});">
                	</div></li>
                	</ul>
                </div>
                
            </div>
            
            </div>
            <!-- <div class="feed-outer-main">
            	<h3>Teacher Activities</h3>
            	<div id="feeds"></div>
            	
            </div> -->
            
            </div>
           
            <div class="principal_dashboard">
               
               
                
                
                <c:if test="${not empty campaign.startDate}">
                <div class="campaign_listing">
                    	<ul>
                        	<li>
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/camp-li-1.png">
                                <p>Campaign Start Date</p><br>
                                <p><span>${campaign.startDate}</span></p>
                            </li>
                            <li>
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/camp-li-2.png">
                                <p>Days Remaining</p><br>
                                <p><span>${daysRemianing}</span></p>
                            </li>
                            <li>
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/camp-li-3.png">
                                <p>Contributions made</p><br>
                                <fmt:formatNumber var="cm" value="${campaign.donorAmount}" maxFractionDigits="0"></fmt:formatNumber>
                                <p><span>${cm}</span></p>
                            </li>
                            <li>
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/camp-li-4.png">
                                <p>Average Contribution Size</p><br>
                                <fmt:parseNumber var="i" type="number" value="${campaign.donorAmount}" />
                                 <c:if test="${ i gt 0 }">
                                 <fmt:formatNumber var="avgAmt" value="${i/campaign.donorCount}" maxFractionDigits="0"></fmt:formatNumber>
                                	<p><span>$${avgAmt}</span></p>
                                </c:if>
                                <c:if test="${  avgAmt eq 0}">
                                	<p><span>$0</span></p>
                                </c:if> 
                            </li>
                        </ul>
                    </div>
                </c:if>
                
                
                
               <%--  <div class="total_maximum_class techVideoSctCenter">
                <div class="tmc_1 welcome_changes">
                <h3>No. of Programs</h3>
                <p>${dtoPrincipal.programCount}</p>
                </div>
                  <div class="tmc_2 welcome_changes">
                <h3>No. of Classes</h3>
                <p>${dtoPrincipal.classCount}</p>
                </div>
                
                </div> --%>
                
                
                <div class="total_maximum_class">
                <div class="tmc_1">
                <h3>Total No. of Programs</h3>
                <p>${dtoPrincipal.programCount}</p>
                </div>
                  <div class="tmc_2">
                <h3>Maximum No. of Classes</h3>
                <p>${dtoPrincipal.classCount}</p>
                </div>
                 <div class="tmc_2_1">
                <h3>Radio Listener Count(Daily)</h3>
                <p>${dtoPrincipal.radioListenerCount}</p>
                </div>
                <%-- <div class="tmc_3">
                <input type="button" class="input_upgrade_btn welcome_btn_new" value="INCREASE REACH WITHIN MY SCHOOL" onclick="location.href='<%=request.getContextPath()%>/principal/createClass';">
                </div> --%>
                </div>
                
                
                
                
                <%-- <div class="tmc_3">
                <input type="button" class="input_upgrade_btn welcome_btn_new" value="INCREASE REACH WITHIN MY SCHOOL" onclick="location.href='<%=request.getContextPath()%>/principal/createClass';">
                </div> --%>
             <div class="teachers_status">   
              <c:forEach var="listTeachers" items="${practiceProgress}">
              <div class="ts_col_1">
              <div class="ts_header">
              	<p>${listTeachers.programName}</p>
              </div>
              <div class="ts_img">
              <c:if test="${listTeachers.teacherImage eq '' || listTeachers.teacherImage eq null}">
              	<img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png"  alt=""/>
              </c:if>
              <c:if test="${listTeachers.teacherImage ne '' && listTeachers.teacherImage ne null}">
              	<img src="<%=request.getContextPath()%>/NewStyles/images/teacher-profile/${listTeachers.teacherImage}"  alt=""/>
              </c:if>
              </div>
              <p>${listTeachers.teacherName}</p>
              <p>${listTeachers.className}</p>
				<p>${listTeachers.completeStatus}% Complete</p>
				<div class="star_rating">
				<ul>
	        	<c:forEach var="i" begin="1" end="${listTeachers.avgRating}" step="1">
	            	<li><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png"  alt=""/></li>
	           </c:forEach>
	           <c:forEach var="i" begin="${listTeachers.avgRating}" end="4" step="1">
	               <li><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png"  alt=""/></li>
	            </c:forEach>
				</ul>
				</div>
				
				
				
				<%-- <p>Last Logged in 
				<c:if test="${not empty listTeachers.lastLoggedIn}">
				<fmt:formatDate value="${listTeachers.lastLoggedIn}" type="date"/>
				</c:if>
				<c:if test="${empty listTeachers.lastLoggedIn}">
				<span>N/A</span>
				</c:if>
				</p> --%>
              <c:if test="${not empty listTeachers.lastLoggedIn}">
              	<p>Last Logged in <fmt:formatDate value="${listTeachers.lastLoggedIn}" type="date"/>
              	</p>
              </c:if>
				
				<c:if test="${empty listTeachers.lastLoggedIn}">
				<p>Never logged in </p>
				</c:if>
              <%-- <input type="button" class="js-open-modal blueBtn" value="PLAY TRACK" onclick="getAudioDetail('${listTeachers.classTeacherRelationId}');" data-modal-id="popup1"> --%>
              <%-- <a href="javascript:;" style="display: inline-block;
    margin-top: 10px;" class="js-open-modal blueBtn" onclick="getAudioDetail('${listTeachers.classTeacherRelationId}');" data-modal-id="popup1">PLAY TRACK</a> --%>
              </div>  
              </c:forEach>
<%--               <c:forEach var="listTeachers" items="${listTeachers}">
              <div class="ts_col_1">
              <div class="ts_header">
              	<p>${listTeachers.schoolClass.schoolProgram.planProgram.descriptionDetail}</p>
              </div>
              <div class="ts_img">
              <c:if test="${listTeachers.image eq '' || listTeachers.image eq null}">
              	<img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png"  alt=""/>
              </c:if>
              <c:if test="${listTeachers.image ne '' && listTeachers.image ne null}">
              	<img src="<%=request.getContextPath()%>/NewStyles/images/teacher-profile/${listTeachers.image}"  alt=""/>
              </c:if>
              </div>
              <p>${listTeachers.name}</p>
              <p>${listTeachers.schoolClass.className}</p>
				<p>0% Complete</p>
				<div class="star_rating">
				<ul>
				<li><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png"  alt=""/></li>
				<li><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png"  alt=""/></li>
				<li><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png"  alt=""/></li>
				<li><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png"  alt=""/></li>
				<li><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png"  alt=""/></li>
				<li><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""/></li>
				</ul>
				</div>
              </div>  
              </c:forEach> --%>
        </div>
            </div>
        </div>
    </section>
    <!--teacher_dashboard_main ends--> 
    
    <!--inner_header ends--> 
    
</div>
<!--inner_wrapper ends-->
</div>
<div class="ourStory-Popup" id="letterToParentDashTrack" style="display: none;">
            <h4>Track Invite</h4>
            <div class="ur_grid ur_grid_pop">
            	
        <table class="table table-stri 200,ped table-hover table-bordered"  id="sample_6">
         <thead>
        	<tr>
        			<th><strong>Parent Email</strong></th>
					<th><strong>Date of Invitation</strong></th>
					<th><strong>Status</strong></th>
					<th><strong>Name</strong></th>
					<th><strong>Teacher Email</strong></th>
					</tr></thead>
					<tbody></tbody> 
</table>

        
        </div>
        
    </div>

	<div id="send_message" class="modal-box">
	<div class="modal_change_track">
		<div class="modal_bodycont" >
			<a class="cls-btn js-modal-close close" href="javascript:;">X</a>
				<h5>Send Message To All Teachers</h5>
				<div class="change_track">
					<label>Message</label>
					<div class="inputcontain_new">
						<textarea id="msg" name="msg" style="width: 400px;"></textarea>
						<input type="button" value="Send Message" class="change_trackbtn_qus" onclick="sendMessgeToTeachers();">
					</div>
				</div>
		</div>
	</div>
</div>
	<div id="popup1" class="modal-box">
		<div class="modal_change_track">
			<div class="modal_bodycont">
				<a class="cls-btn js-modal-close close_fb" href="javascript:;">X</a>
				<h5>Track of the Day</h5>

				<div class="change_track_ph">
					<span id="trackDesc"></span>
					<audio id="audioId" controls>
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
	<div class="chat-sidebar" id="chatBar" style="display:none;">
    
    <div class="homeChat-hdr"> Teacher Activities   <a onclick="closeChatBar();" style="float: right;margin-right: 5px; color: white;"><img  style="width:18px; position:relative; top:1px;"  alt="" src="<%=request.getContextPath()%>/NewStyles/images/arrow_down.png"/></a></div>
    <div id="feeds">
    
    </div>
   </div> 


<div class="homeChat-hdr" id="openChatBar" style="display:none;">Teacher Activities  <a onclick="openChatBar();" style="float: right;margin-right: 5px; color: white; cursor:pointer;"><img  style="width:18px; position:relative; top:1px;"  alt="" src="<%=request.getContextPath()%>/NewStyles/images/arrow_up.png"/></a></div>

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
		$("#openChatBar").show();
		$.daisyNav();
		initDialog();
	});
	</script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script> 
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
<script type="text/javascript">
    $(function(){
      /* SyntaxHighlighter.all(); */
      
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
    function sendMessgeToTeachers(){
    	//$("#schoolId").val(teacherId);
    	   var message = $("#msg").val();
    	   var url='<%=request.getContextPath()%>/principal/sendMessageEmailToTeachers';
    	   //alert("about to post the data" + message);
    		$.ajax({
    			url:url,
    			method:'POST',
    			async :false,
    			data:{msg:message},
    			cache:false,
    			success:function(response){
    				location.reload();
    				alert("Data has been posted successfully.");
    		},
    		}); 
	}
    function getPlaybackAPI(teacherId){
    	//$("#schoolId").val(teacherId);
    	
    		$("#sample_6").dataTable().fnDestroy();
    		$("#sample_6").html('');
    	   var url='<%=request.getContextPath()%>/principal/getLetterToParentDetails';
    		$.ajax({
    			url:url,
    			method:'POST',
    			async :false,
    			data:{teacherId:teacherId},
    			cache:false,
    			success:function(response){
    				
    				if(response != null  && response.modelMap.dtoUsers!=null){
    					var audioQualityDetail='';
    					audioQualityDetail+='<thead><tr><th><strong>Parent Email</strong></th>'+
    					'<th ><strong>Name Of Parent</strong></th><th ><strong>Date of Invitation</strong></th>'+
    					'<th><strong>Status</strong></th><th><strong>Teacher Email</strong></th></tr></thead><tbody>';
    					
    					$.each( response.modelMap.dtoUsers, function(index,value) {
    						audioQualityDetail+='<tr><td ><p>'+value.email+'</p></td>'+
    						'<td ><p>'+value.commnets+'</p></td>'+
    						'<td><p>'+value.timeZone+'</p></td>'+
    						'<td><p>'+value.title+'</p></td>'+
    						'<td><p>'+value.teacherEmail+'</p></td></tr>';
    					});
    		    	
    		    	audioQualityDetail+='</tbody>';
    		    	
    			$("#sample_6").html(audioQualityDetail);
    		    $("#sample_6").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
    				
    				 $.fancybox({
    					 'minWidth':900,
    					 'padding':45,
    					 'minHeight':150,
    				     'autoScale': true,
    				     'autoDimensions': true,
    				     'centerOnScroll': true,
    				     'href' : '#letterToParentDashTrack'
    				  });
    	
    				}
    			}
    		}); 
    }	
    
    
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

<script type="text/javascript">
window.setTimeout('myFunction()',1000);

function myFunction() {
	var url='<%=request.getContextPath()%>/principal/getFeeds';
	$.ajax({
			url:url,
			method:'GET',
			async :false,
			cache:false,
			success:function(response){
				var htmlContent = '<ul class="side-feed">';
				$.each(response.modelMap.dtoTeacher,function(index,value){
					var img = value.img;
					htmlContent += '<li>'+
        			'<div class="feed-user-img">';
        			if(typeof img === "undefined"){
        				htmlContent +='<img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png">';
        			}
        			else{
        				htmlContent +='<img src="<%=request.getContextPath()%>/NewStyles/images/teacher-profile/'+img+'">';
        			}
        			htmlContent +='</div>'+
        			'<p>'+value.teacherName+' has '+value.status+' at <span>'+value.activityTime+'</span></p>'+
        			'</li>';
				});
				htmlContent += '</ul>';
				$("#feeds").html(htmlContent);
			}
		});
	window.setTimeout('myFunction()',15000);
	
	
	/*  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("demo_").innerHTML = xhttp.responseText;
	      
	    
	    }
	  };
	  xhttp.open("GET", url, true);
	  xhttp.send(); */
	
	 /* window.setTimeout('myFunction()',15000); */ 
}
function openChatBar(){
	$("#chatBar").show();
	$("#openChatBar").hide();
	 //$("body").css("padding-right", "198px");
}
function closeChatBar(){
	$("#chatBar").hide();
	$("#openChatBar").show();
	 //$("body").css("padding-right", "0px");
}
function showDiv(schoolId){
	$("#send_message").show();
}
function closeDiv(){
	$("#send_message").hide();
}
</script>

</body>
</html>
