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
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Invite Teachers to Inner Explorer</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">


<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">

<!-- new -->
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jssor.slider-21.1.5.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/slider.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/refer-a-friend-style.css">

<style>
.table{width:100% !important}
.xl {
  overflow: hidden !important;
}
.image-outer img{height:auto !important;border-bottom:1px solid #d8d8d8}
.btn_mk_n{  border-bottom: 3px solid #d9d9d9;
    box-shadow: 1px 1px 3px #d9d9d9;}
    
</style>
  
  

   <header id="header">
    <div class="container ">
        <div class="logo">
					<a href="<%=request.getContextPath()%>/teacher" title=""></a>
				</div>
        <div class="hdRight">
                <nav>
                <div data-menu-id="demo-menu" class="menu-toggle-button active"><img src="http://innerexplorer.org/wp-content/themes/compass/images/toggle-menu.jpg" alt=""></div>
               <ul id="demo-menu" class="menu-list">
               <!-- <li class="xtra_nav_margin">     <a href="http://innerexplorer.org" title="Home">
			<input type="button" class="home_icon">
           </a></li> -->
           
             <c:if test="${expiryStatus eq 'N'}">
                        <c:if test="${showPractice eq 'Y'}">
                        <li><a href="<%=request.getContextPath()%>/teacher/mindful-practice-new" class="font_strong icons_hdr prac-t-icon" title="">
<%--                         <img src="<%=request.getContextPath()%>/NewStyles/images/practice-icon.png"> --%>
                        Practice Area</a></li>
                        </c:if>
                        </c:if>
            
            <c:if test="${expiryStatus eq 'N'}">
                         <c:if test="${showPractice eq 'Y'}">
                        <li><a onclick="startClass1(${classTeacherRelationId});" class="font_strong icons_hdr prac-t-icon" title="" style="cursor: pointer;">
<%--                         <img src="<%=request.getContextPath()%>/NewStyles/images/practice-icon.png"> --%>
                        Transition Tracks</a></li>
                        </c:if>
                        </c:if>
                <c:if test="${not empty classTeacherRelationId}">
                   <%-- <li class="xtra_nav_margin"><a href="<%=request.getContextPath()%>/teacher" class="font_strong dk_black icons_hdr" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/nav-icon.png">Dashboard</a></li> --%>       
                      <%--  <c:if test="${seprateTeacher != 'Y' }">
                        	<li class="xtra_nav_margin"><a href="<%=request.getContextPath()%>/teacher/campaign" class="font_strong icons_hdr" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/nav-icon-5.png">Campaign</a></li>
                        </c:if>--%>
                        
                         <c:if test="${companyName eq '1'}">
                       	<li><a href="<%=request.getContextPath()%>/teacher/training" class="font_strong icons_hdr cam-t-icon" style= "background-image:url('/ie/NewStyles/images/presentation.png')" title="">
                       	 
                       	Launch</a></li>
                       	  </c:if> 
                       	  
                        
                        <c:if test="${classSize gt 1}">
                        <li><a href="<%=request.getContextPath()%>/teacher/change-class" class="font_strong icons_hdr ccls-t-icon" title="">
                        <%-- <img src="<%=request.getContextPath()%>/NewStyles/images/change-class.png"> --%>
                        Change Class</a></li>  
                        </c:if>
                       
                       
                         <li><a href="<%=request.getContextPath()%>/teacher/onboarding" class="font_strong icons_hdr tra-t-icon" title="">
<%--                         <img src="<%=request.getContextPath()%>/NewStyles/images/nav-icon-6.png"> --%>
                        Tools</a></li>
                        
                         <c:if test="${companyName eq '1'}">
                        <li><a href="<%=request.getContextPath()%>/teacher/radio" class="font_strong icons_hdr par-t-icon" title="">
<%--                         <img src="<%=request.getContextPath()%>/NewStyles/images/parent.png"> --%>
                        Parents</a></li>
                        </c:if>
                         <c:if test="${companyName eq '1'}">
                        <li><a href="<%=request.getContextPath()%>/teacher/community" class="font_strong icons_hdr com-t-icon" title="">
                        <img src="<%=request.getContextPath()%>/NewStyles/images/nav-icon-com.png">
                        Social Map</a></li>
                        </c:if> 
                     <%--    <c:if test="${companyName eq '2'}">
                        <li><a href="<%=request.getContextPath()%>/teacher/radio" class="font_strong icons_hdr par-t-icon" title="">
                        <img src="<%=request.getContextPath()%>/NewStyles/images/parent.png">
                        Parents</a></li>
                        </c:if> --%>
                          <%-- <li><a href="<%=request.getContextPath()%>/teacher/teacherSocialMap" class="font_strong icons_hdr scl-m-icon" title="">Social Map</a></li> --%>
                       
                       	<c:if test="${companyName eq '1'}">
                       	<li><a href="<%=request.getContextPath()%>/teacher/campaign" class="font_strong icons_hdr cam-t-icon" title="">
<%--                        	<img src="<%=request.getContextPath()%>/NewStyles/images/nav-icon-2.png"> --%>
                       	Campaign</a></li>
                       	  </c:if>
                        </c:if>
                       	
                        <c:if test="${not empty classTeacherRelationId}">
                        <li><a href="<%=request.getContextPath()%>/teacher/practiceHistory" class="font_strong icons_hdr his-t-icon" title="">
                       <%--  <img src="<%=request.getContextPath()%>/NewStyles/images/nav-icon-8.png"> --%>
                        History</a></li>
                          <li><a href="<%=request.getContextPath()%>/teacher/share" class="font_strong icons_hdr pro-t-icon" title=""  style= "background-image:url('/ie/NewStyles/images/friend.png')" >

                     


                       Invite</a></li>
                        <li><a href="<%=request.getContextPath()%>/teacher/manage" class="font_strong icons_hdr pro-t-icon" title="">
<%--                         <img src="<%=request.getContextPath()%>/NewStyles/images/nav-icon-7.png"> --%>
                        Profile</a></li>
                        
                     
                       
                       
                      
                         <c:if test="${companyName eq '1'}">
                        	<li><a href="<%=request.getContextPath()%>/teacher/events" class="font_strong icons_hdr cam-t-icon"  style= "background-image:url('/ie/NewStyles/images/calender.png')" title="">
 <%--                        	<img src="<%=request.getContextPath()%>/NewStyles/images/calender.png"> --%>
                        	Events</a></li>
                        	  </c:if> 
                		</c:if>
    
                    </ul>
                </nav>
                <div class="startRight">
                	<p>Welcome, ${loginName}</p>
                	<c:if test="${companyName eq '1'}">
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout?name=teacher&userIdForLogout=${userIdForLogout}&classTeacherId=${classTeacherRelationId}';" class="startBtn hdr-btn-clr"/>
						</c:if>
						<c:if test="${companyName eq '2'}">
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout?name=teachercrim';" class="startBtn hdr-btn-clr"/>
						</c:if>
						<c:if test="${companyName eq '3'}">
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout?name=teachertgi';" class="startBtn hdr-btn-clr"/>
						</c:if>
					</div>
            </div>
    </div>
 <form
		action="${pageContext.request.contextPath}/teacher/bonusTrack"
		method="GET" id="startClass1">
		<input type="hidden" id="classTeacherRelationId1"
			name="classTeacherRelationId" /> <input type="hidden" id="strtPrac"
			name="strtPrac" value="Y" />
	</form>
</header>




<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-73908394-1', 'auto');
  ga('require', 'displayfeatures');
  ga('send', 'pageview');

</script>
<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '367372516947640',
      xfbml      : true,
      cookie:true,
      version    : 'v2.8'
    });
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>
<script type="text/javascript">
$(document).ready(function(){
$('#share_button').click(function(e){
FB.ui({
	  method: 'share',
	  mobile_iframe: true,
	  href: 'http://innerexplorer.org/',
	  description: 'My class is practicing Mindfulness daily.Use ${dtoUser.referenceCode} to get $15 off on yearly plan',
	  caption:'Inner Explorer',
	  hashtag:'#Mindfulness',
	}, function(response){});
});
});

</script>
</head>
<body>
   <div class="wrapper">
		<%-- <%@include file="header.jsp"%> --%>
		
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
 


        <!--about_us starts-->
        <div class="about_us">
           <!--  <div class="content_inner">            
                <div class="pracProgress_hdr">
                    <h2>Refer-a-Friend </h2>
                    <div class="green_line_btm"></div>
                </div>				
			      </div> -->

            <div id="jssor_1" class="sliderlayer1 banner1">      
                <div data-u="slides" class="image-outer">            
            <div data-p="225.00" style="display: none;">
                <img data-u="image" src="<%=request.getContextPath()%>/NewStyles/images/invite.jpg"  />
                    <!-- <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="carousel-caption captwo">
                                  <div class="col-md-12 col-sm-12">
                                     <div class="banner-data1">
		                                   <b>What is better than practicing daily mindfulness with your classroom?</b>
											 <p> Encouraging your teacher friend to do the same and manage classroom in a better way! Therefore, at
											  Inner Explorer, we are glad to launch our new Referral program wherein you can get your fellow teacher friends to sign-up at a 37% discount on the yearly classroom license!
		                                    </p>
		                                   <div class="hidden-xs hidden-sm hidden_sml_dv ">	 
		                                    <b>How does it work?</b>
		
											<p>You can share your 'Unique referral code' with your friend, or
											You can enter your friend's name & email below and they will receive an email with details to sign-up at a discount, or
											You can broadcast your 'Unique referral code' to your Facebook & 
											Twitter network with a single click!</p>
		
											<b>How will your friend benefit?</b>
		
											<p>Using your unique code, your friend can buy the entire
											 Classroom Edition subscription for just $75, i.e., 37% discount
											  on the regular price</p>
		
											<b>How will you benefit?</b>
											<p>For every friend that signs up using your 'Unique code', you 
											will receive a $10 gift card that you can redeem for 1 Month 
											extension on your current Inner Explorer license, or further gift it.</p>
		                                    <center>WHY WAIT? START REFERRING NOW!</center>
		                                    </div>
		                                    <button type="button" class="btn btn-success show_small_dvCon hidden-md hidden-lg" data-toggle="modal" data-target="#myModalSml">
                                    Read More</button>
                                  </div>
                                  </div>
                                </div>
                            </div>
                        </div>
                    </div> -->
            </div>
           
                </div>
            </div>
            
          
									 <!-- Modal 
												<div id="myModalSml" class="modal fade" role="dialog">
												  <div class="modal-dialog">
												    <div class="modal-content  modal-contentCustom">
												      <div class="modal-header modal-headerCustom">
												        
												      </div>
												      <div class="modal-body">
												        <div class="bigScreen">
					                                  	  <b>What is better than practicing daily mindfulness with your classroom?</b>
															 <p class="italicP"> Encouraging your teacher friend to do the same and manage classroom in a better way! Therefore, at
															  Inner Explorer, we are glad to launch our new Referral program wherein you can get your fellow teacher friends to sign-up at a 37% discount on the yearly classroom license!
						                                    </p>
						                                    <b>How does it work?</b>
						
															<p>You can share your 'Unique referral code' with your friend, or
															You can enter your friend's name & email below and they will receive an email with details to sign-up at a discount, or
															You can broadcast your 'Unique referral code' to your Facebook & 
															Twitter network with a single click!</p>
						
															<b>How will your friend benefit?</b>
						
															<p>Using your unique code, your friend can buy the entire
															 Classroom Edition subscription for just $75, i.e., 37% discount
															  on the regular price</p>
						
															<b>How will you benefit?</b>
															<p>For every friend that signs up using your 'Unique code', you 
															will receive a $10 gift card that you can redeem for 1 Month 
															extension on your current Inner Explorer license, or further gift it.</p>
						                                    <center>WHY WAIT? START REFERRING NOW!</center>
														</div>
												      </div>
												      <div class="modal-footer">	
												      	 <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>											       
												      </div>
												    </div>
												
												  </div>
												</div>
									 -->   


			
			
            	<div class="get_program_school no_gaptp gnewcolor" id="giftForm">                
			           <section class="donation-section">
						        <div class="container">
								
			                    <div class="form-row">
				                    <div class="row">
                                        <div class="col-md-10">                        					 
                                            <div class="col-md-12 text-center codeMainRflDiv" id="UcodeMain">
                                               <div class="col-md-4 col-sm-12 col-xs-4 top_box_m  text-right">
                                                    <img src="<%=request.getContextPath()%>/NewStyles/images/teacher-profile/${dtoUser.profilePic}"class="img-circle img-responsive t_profile_im">
                                                </div>
                                                <div class="col-md-4 col-sm-12 col-xs-8 top_box_m" >
                                                    <span class="Ucode codeMainRfl alert  fade in"><b class="Ucodetxt">UNIQUE CODE:</b> ${dtoUser.referenceCode}</span>
                                                </div> 
                                                <div class="col-md-4 col-sm-12 col-xs-12 top_box_m  text-center">
                                                    <input type="button" value="REFERRALS TRACKER" data-toggle="modal" data-target="#trackerModal" class="submit-btn-ref rfl-bt btn_mk_n" onclick="referralsUsed('${dtoUser.referenceCode}','${dtoUser.firstName}');">
                                                
                                                </div> 
                                                <div class="col-md-8 col-md-offset-3 col-xs-12 pull-left">
                                                <img src="../NewStyles/images/fb_share.png" alt="Facebook" id ="share_button" style="height: 32px;margin-top: -20px;cursor:pointer;"/> 
        <iframe
  src="https://platform.twitter.com/widgets/tweet_button.html?size=l&url=http://innerexplorer.org/ie/get-started&via=Inner_Explorer&related=twitterapi%2Ctwitter&text=My class is practicing Mindfulness daily.Use ${dtoUser.referenceCode} to get $15 off on yearly plan&hashtags=Mindfulness"
  width="96"
  height="28"
  title="Twitter Tweet Button"
  style="border: 0; overflow: hidden;align:center;margin-top: 0px;">
</iframe> </div>
                                            </div>
                                            <div class="col-md-6 col-sm-6 col-md-offset-4 txtboxrfl_div">
                                                  <form>
                                                    <div class="control-group" id="fields">
                                                            <div role="form" autocomplete="off" id="rfForm" class="controls">
                                                                   <div class="voca">
                                                                      <!-- <div class="col-md-5 main_Form_field">
                                                                          <input class="form-control" placeholder="Teacher Name" name="name" type="text" required="">
                                                                      </div> -->
                                                                      <div class="col-md-5 col-sm-10 col-xs-10 main_Form_field pull-left">
                                                                          <input class="form-control" placeholder="Teacher Email" name="email" id="email" type="email"  required="">
                                                                      </div>                                                                   
                                                                      <div class="col-md-2 col-sm-2 col-xs-2 main_Form_field pull-left">
                                                                          <button type="submit" class="btn btn-success btn-add" >+</button>
                                                                      </div> 
                                                                         
                                                                  </div>                                                                   
                                                            </div>
                                                             <div class="clearfix"></div>  
                                                              <div class="text-center col-md-6">
                                                                <input value="Send" type="submit" class="donateBtn" onclick="sendReferenceEmail('${dtoUser.referenceCode}','${dtoUser.firstName}');">
                                                             </div>
                                                    </div> 
                                                </form>  
                                                 
                                            </div>
                                            
                                        </div>    
				                    </div>
				                    	
			                    </div>
							       </div>
					       </section>                            
              </div>
        </div>
        
    </div>


    <!-- Modal For Referral Tracker -->
            <div id="trackerModal" class="modal fade" role="dialog" data-keyboard="false" data-backdrop="static">
              <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header modal-headerCustomR">
                    <button type="button" class="closeCustomR" data-dismiss="modal">X</button>

                    <h4 class="modal-title" >REFERRALS TRACKER</h4>
                  </div>
                  <div class="modal-body">
                    <!-- ############ Add Your data Table Here ############### -->
                        <table class="table table-striped" id="sample_13" style=" width: 100% !important; ">
                              <thead>
                                <tr>
                                        <th>Email</th>
										<th>Sent</th>
										<th>Used</th>
										<th>Date</th>
                                </tr>
                              </thead>
                              
                        </table>
                    <!-- ############ End data Table ############### -->    
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                  </div>
                </div>

              </div>
            </div>
    <!-- End -->
<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js" type="text/javascript"></script>


<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen"/>

<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.fancybox.pack.js?v=2.1.5"></script>
 <script type="text/javascript">
  
  


jQuery(document).ready
(function($){
$(".fancybox").fancybox();
});
</script> 
<footer>
    <div class="container">
        <div class="footerLeft">
            <p>Copyright Â© 2016 Inner Explorer</p>
        </div>
        <div class="footerRight">
            <ul>
                <li><a href="#privacy" class="fancybox">Privacy Policy</a></li>
                <li><a href="#terms" class="fancybox">Terms & Conditions</a></li>
            </ul>
        </div>
    </div>
</footer>


<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/dateFormat.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.formatCurrency.all.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>

	<%-- <script
		src="<%=request.getContextPath()%>/NewStyles/js/bootstrapcdn.js"></script>
		
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>


		
		
		<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/select2/select2.min.js"></script>
	
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/tab.js"></script>
		<script type="text/javascript"> --%>

<script type="text/javascript">
    $(function()
        {
    $(document).on('click', '.btn-add', function(e)
    {
        e.preventDefault();

        var controlForm = $('#rfForm'),
            currentEntry = $(this).parents('.voca:first'),
            newEntry = $(currentEntry.clone()).appendTo(controlForm);

        newEntry.find('input').val('');
        controlForm.find('.btn-add:not(:last)')
            .removeClass('btn-default').addClass('btn-rmv')
            .removeClass('btn-add').addClass('btn-remove')
            
            .html('-');
    }).on('click', '.btn-remove', function(e)
    {
        $(this).parents('.voca:first').remove();

        e.preventDefault();
        return false;
    });
});

    </script>

<script>
jssor_1_slider_init = function() {
    
    var jssor_1_SlideoTransitions = [
      [{b:-1,d:1,o:-1},{b:0,d:1000,o:1}],
      [{b:1900,d:2000,x:-379,e:{x:7}}],
      [{b:1900,d:2000,x:-379,e:{x:7}}],
      [{b:-1,d:1,o:-1,r:288,sX:9,sY:9},{b:1000,d:900,x:-1400,y:-660,o:1,r:-288,sX:-9,sY:-9,e:{r:6}},{b:1900,d:1600,x:-200,o:-1,e:{x:16}}]
    ];
    
    var jssor_1_options = {
      $AutoPlay: true,
      $SlideDuration: 800,
      $SlideEasing: $Jease$.$OutQuint,
      $CaptionSliderOptions: {
        $Class: $JssorCaptionSlideo$,
        $Transitions: jssor_1_SlideoTransitions
      },
      $ArrowNavigatorOptions: {
        $Class: $JssorArrowNavigator$
      },
      $BulletNavigatorOptions: {
        $Class: $JssorBulletNavigator$
      }
    };
    
    var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);
    
    //responsive code begin
    //you can remove responsive code if you don't want the slider scales while window resizing
    function ScaleSlider() {
        var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
        if (refSize) {
            refSize = Math.min(refSize, 1920);
            jssor_1_slider.$ScaleWidth(refSize);
        }
        else {
            window.setTimeout(ScaleSlider, 30);
        }
    }
    ScaleSlider();
    $Jssor$.$AddEvent(window, "load", ScaleSlider);
    $Jssor$.$AddEvent(window, "resize", ScaleSlider);
    $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
    //responsive code end
};
</script>
  <script type="text/javascript">jssor_1_slider_init();</script>
  <script>	

	function referralsUsed(referenceCode,firstName){
		
		var url='<%=request.getContextPath()%>/teacher/referralsUsed';
        $.ajax({
				 url:url,
				 method:'POST',
				 async :false,
                 success:function(response){
if(response != null  ){
            	  
            	   $('#sample_13').dataTable().fnDestroy();
            	   var audioQualityDetail='';
				audioQualityDetail+='<thead><tr><th class="center"><strong >Email</strong></th>'+

                   '<th class="center"><strong >Sent</strong></th>'+

                   '<th class="center"><strong >Used</strong></th>'+
                   '<th class="center"><strong >Referral Sent Date</strong></th>'+

                   '<th style="display:none;"></th><th style="display:none;"></th></tr></thead><tbody>';

                   

                   $.each( response.modelMap.listOfReferralsUsed, function(index,value) {
                	   
                	  

                       audioQualityDetail+='<tr><td><p>'+value.email+'</p></td>'+

                       '<td><p>'+value.isSent+'</p></td>'+

                       '<td><p>'+value.isUsed+'</p></td>'+
                       '<td><p>'+value.isDate+'</p></td>'+

                       '<td style="display:none;"></td><td style="display:none;"></td></tr>';

                   });
 audioQualityDetail+='</tbody>';

               

           $("#sample_13").html(audioQualityDetail);

           $("#sample_13").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
 
               }

              

               

           }

       });

   }
function sendReferenceEmail(referenceCode,firstName){
		/* 	 alert("Button has been clicked")  */
			var url='<%=request.getContextPath()%>/teacher/sendReferenceEmail';
			/* var email = $("#email").val(); */
			var emails =document.getElementsByName("email");
		
			var email="";
			for (i = 0; i < emails.length; i++) {
				if(i==emails.length-1)
			    email += emails[i].value ;
				else
					 email += emails[i].value + ",";
			}
			
			if(email==""||email==undefined){
				alert("Please enter Email")
			}
			else{ 
			$.ajax({
				url:url,
				method:'POST',
				async :false,
				data:{email:email,referenceCode:referenceCode,firstName:firstName},
				cache:false,
				success:function(response){
					alert("Email sent successfully")
				}
			});
		}}
  </script>
</body>
</html>