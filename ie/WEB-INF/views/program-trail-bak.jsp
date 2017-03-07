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
<title>Get Started</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery-anyslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</head>
<body> 
<spring:eval var="bucketPath" expression="@propertyConfigurer.getProperty('bucket_path')" />
<div class="wrapper">
<%@include file="header.jsp" %>
 <%--  <section class="programT_new">
		<div class="container">
				<h2>Program Trial</h2>
				<div class="green_line_btm"></div>
				<div class="inner-Explorer-newsT">
						<ul>
								<li>
										<div class="banefits-img">
												<div class="img"><img width="89" height="89" alt="academic-benefits" class="newsimage wp-post-image" src="http://innerexplorer.org/wp-content/uploads/2016/01/academic-benefits.png"></div>
										</div>
										<div style="padding-top:0px" class="imgTxt newsTxt">
												<div class="researchcontent benefitsNew">
														<h4 class="researchHead">Academic Benefits</h4>
														<p>Improved Grades and Test Scores</p>
														<p>Improved Climate for Learning</p>
														<p>Improved Participation &amp; Engagement</p>
														<p>Increased Social Awareness</p>
														<p>Improved Focus and Self-control</p>
												</div>
										</div>
								</li>
								<li>
										<div class="banefits-img">
												<div class="img"><img width="89" height="89" alt="health-benefits" class="newsimage wp-post-image" src="http://innerexplorer.org/wp-content/uploads/2016/01/health-benefits.png"></div>
										</div>
										<div style="padding-top:0px" class="imgTxt newsTxt">
												<div class="researchcontent benefitsNew">
														<h4 class="researchHead">Health Benefits</h4>
														<p>Reduced anxiety and stress</p>
														<p>Enhanced immune function</p>
														<p>Improved Sleep</p>
														<p>Enhanced feelings of wellbeing</p>
														<p>Increased resilience</p>
														
												</div>
										</div>
								</li>
								<li>
										<div class="banefits-img">
												<div class="img"><img width="89" height="89" alt="overall-benefits" class="newsimage wp-post-image" src="http://innerexplorer.org/wp-content/uploads/2016/01/overall-benefits.png"></div>
										</div>
										<div style="padding-top:0px" class="imgTxt newsTxt">
												<div class="researchcontent benefitsNew">
														<h4 class="researchHead">Overall Benefits</h4>
														<p>Improved Grades and Test Scores</p>
														<p>Reduced behavioral conflict including bullying</p>
														<p>Improved School Climate</p>
														<p>Increased social awareness</p>
														<p>Improved focus and self-control</p>
												</div>
										</div>
								</li>
						</ul>
				</div>
		</div>
</section> --%>
<section class="ourprogT">
	<div class="container">
		<h2>Program Trial</h2>
		<div class="green_line_btm"></div>
		<div class="OurprgCol1_trail">
			<ul>
				<c:forEach items="${programs}" var="program" varStatus="programCount" begin="0" end="3">
				
				<li onclick="program(${program.programId});" style="cursor: pointer;">
						<div class="play-demo-con">
								<div class="play-demo-conTxt"> 
										 <input type="hidden" id="defaultProgId" value="${program.programId}">
								</div>
						</div>
						<img src="<%=request.getContextPath()%>${program.imagePath}" alt="Image"/>
						<div class="overlay_setup" id="overlay_${program.programId}">
								<p>${program.programDescDetail}</p>
								<!-- <p> Pre-k–Kindergarten</p> -->
						</div>
				</li>
				
				</c:forEach>
				
			</ul>
		</div>
		<div class="Ourprg_Trailwhite">
				<div class="OurprgCol_new">
						<h3 id="progName">Exploring Me™ Pre-k–Kindergarten</h3>
						<p id="progDesc">Our Pre-k- Kindergarten program is designed to help younger children understand their inner world of senses, thoughts and emotions. This growing awareness allows them to make the connection between their inner world and their reactions and interactions with classmates, teachers and family members. </p>
						<p id="progDesc1">This program has 50 tracks that are each 5 minutes long, in order to address the attention span of the younger students.</p>	
				</div>
				<div class="player-listTrail">
					
					<div id="trackListing">
					
					</div>
				</div>
		</div>
		
	</div>
</section>
<section class="get_start sucss-stoTrail" id="getEngaged">
	<div class="container">
		<h2>Success Stories</h2>
		<div class="green_line_btm"></div>
		<section id="testimonialsct">
			<article class="container">
				<div class="testimonialsct">
					  <div class="slider-wrapper">
							<div class="slider slider2">
								 <div>
									  <div class="testimonial-slider">
										<div class="testimonial-photo_new">
												<div class="img-user"> <img src="<%=request.getContextPath()%>/NewStyles/images/new_tst.jpg"> </div>
										</div>
										<div class="txt-testimonials_slide">
												<p>This letter was submitted to us by a kindergarten class from the Cutler School in Hamilton, MA.  The children wrote a letter to Ana, the voice of the Inner Explorer program Exploring Me.  The students love hearing Ana's voice every day and wanted to know more about her.</p>
										</div>
									  </div>
								</div>
								<div>
									<div class="testimonial-slider">
											<div class="testimonial-photo_new">
													<div class="img-user"> <img src="<%=request.getContextPath()%>/NewStyles/images/new_tst1.jpg"> </div>
											</div>
											<div class="txt-testimonials_slide">
													<p>This letter was submitted to us by a kindergarten class from the Cutler School in Hamilton, MA.  The children wrote a letter to Ana, the voice of the Inner Explorer program Exploring Me.  The students love hearing Ana's voice every day and wanted to know more about her.</p>
											</div>
									</div>
								</div>
								<div>
									<div class="testimonial-slider">
											<div class="testimonial-photo_new">
													<div class="img-user"> <img src="<%=request.getContextPath()%>/NewStyles/images/new_tst2.jpg"> </div>
											</div>
											<div class="txt-testimonials_slide">
													<p>This letter was submitted to us by a kindergarten class from the Cutler School in Hamilton, MA.  The children wrote a letter to Ana, the voice of the Inner Explorer program Exploring Me.  The students love hearing Ana's voice every day and wanted to know more about her.</p>
											</div>
									</div>
								</div>
								<div>
									<div class="testimonial-slider">
											<div class="testimonial-photo_new">
													<div class="img-user"> <img src="<%=request.getContextPath()%>/NewStyles/images/new_tst3.jpg"> </div>
											</div>
											<div class="txt-testimonials_slide">
													<p>This letter was submitted to us by a kindergarten class from the Cutler School in Hamilton, MA.  The children wrote a letter to Ana, the voice of the Inner Explorer program Exploring Me.  The students love hearing Ana's voice every day and wanted to know more about her.</p>
											</div>
									</div>
								</div>
								<div>
									<div class="testimonial-slider">
											<div class="testimonial-photo_new">
													<div class="img-user"> <img src="<%=request.getContextPath()%>/NewStyles/images/new_tst4.jpg"> </div>
											</div>
											<div class="txt-testimonials_slide">
													<p>This letter was submitted to us by a kindergarten class from the Cutler School in Hamilton, MA.  The children wrote a letter to Ana, the voice of the Inner Explorer program Exploring Me.  The students love hearing Ana's voice every day and wanted to know more about her.</p>
											</div>
									</div>
								</div>
								<div>
									<div class="testimonial-slider">
											<div class="testimonial-photo_new">
													<div class="img-user"> <img src="<%=request.getContextPath()%>/NewStyles/images/new_tst5.jpg"> </div>
											</div>
											<div class="txt-testimonials_slide">
													<p>This letter was submitted to us by a kindergarten class from the Cutler School in Hamilton, MA.  The children wrote a letter to Ana, the voice of the Inner Explorer program Exploring Me.  The students love hearing Ana's voice every day and wanted to know more about her.</p>
											</div>
									</div>
								</div>
						</div>
				</div>
				<div class="inherit mtop10">
								<a href="<%=request.getContextPath()%>/get-started"><input
									type="button" class="home_act_btn whtbg" value="Sign Up Now"></a>
							</div>
		</div>
						</article>
				</section>
	</div>
</section>
<%-- <section class="started_listing Suss-trail">
				<div class="container">
					<h2>Get Started</h2>
					<div class="green_line_btm"></div>
						<div class="listing-section">
								<ul>
										<li> <a href="<%=request.getContextPath()%>/signup-step1" class="list-admn">&nbsp;</a>
												<p>As a School Administrator i want to roll-out
														mindful awareness program</p>
										</li>
										<li> <a href="<%=request.getContextPath()%>/teacher-signon" class="list-tch">&nbsp;</a>
												<p>As a Teacher I want to start a Trial of Mindful Awareness Program for my class</p>
										</li>
										<li> <a href="<%=request.getContextPath()%>/home-edition" class="list-parnt">&nbsp;</a>
												<p>As a Parent I want to support bringing Mindul Awareness Program to my kid’s class</p>
										</li>
								</ul>
						</div>
				</div>
		</section> --%>
  
  
  
  
</div>

<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.counterup.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/waypoints.min.js"></script> 
<script>
    jQuery(document).ready(function( $ ) {
    	var progId = $("#defaultProgId").val();
    	$('#overlay_'+progId).addClass("overlay_setup_active");
    	
    	program(progId);
    	
        $('.counter').counterUp({
            delay: 10,
            time: 1000
        });
    });
</script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.easing.1.3.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.anyslider.js"></script> 
<script>
  
  $(document).ready(function() {
    $("#login").click(function(e) {
        $(".login_panel").toggle();
        e.stopPropagation();
    });

    $(document).click(function(e) {
        if (!$(e.target).is('.login_panel, .login_panel *')) {
            $(".login_panel").hide();
        }
    });
});
  
  </script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$.daisyNav();
    
	});
	</script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script> 
<script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
    });
  </script>
  
<script type="text/javascript">
    $(function(){
    //  SyntaxHighlighter.all();
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
	
</script> 
<script>
    $(function () {


        $('.slider2').anyslider({
	animation: 'fadeSlide',
			easing: 'easeInOutExpo',
			keyboardNav: false,
			speed: 750
        });
    });
    </script> 
 
<script>
  $(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});
  function stopAudio(){
	  //pause playing
	  $(".audioDemo").trigger('pause');
	  //set play time to 0
	  $(".audioDemo").prop("currentTime",0);
	}
  function program(progId){
		stopAudio();
		 $.each($('[id^=overlay_]'),function(i,ele){
				//$(ele).removeAttr('style');
				$(ele).removeClass('overlay_setup_active');
			});
		$('#overlay_'+progId).addClass("overlay_setup_active");
		/*getting track details based upon the selection*/
		var url='<%=request.getContextPath()%>/getFirstFiveProgramTracks';
		$.ajax({
		url:url,
		method:'POST',
		async :false,
		data:{progId:progId},
		success:function(response){
			
			var emaildrop="";
			var audioTrackName="";
			$.each( response.modelMap.audioList, function(index,value) {
				
				
				if(progId == 1){
					$("#progName").text("Exploring Me™ Pre-k–Kindergarten");
					$("#progDesc").text("Our Pre-k- Kindergarten program is designed to help younger children understand their inner world of senses, thoughts and emotions. This growing awareness allows them to make the connection between their inner world and their reactions and interactions with classmates, teachers and family members.");
					$("#progDesc1").text("This program has 50 tracks that are each 5 minutes long, in order to address the attention span of the younger students.");
				}
				if(progId == 2){
					$("#progName").text("Exploring Originality™ Elementary School");
					$("#progDesc").text("Our elementary school program, for grades 1 through 4, builds on students’ growing awareness of their inner world of senses, thoughts and emotions, leading to an increase in self-awareness and self-regulation. Through the daily practices, students continually connect with and appreciate their own unique skills and gifts. They begin to appreciate their originality and the originality of those around them. They develop an aptitude for making affirming choices related to self and others.");
					$("#progDesc1").text("");
				}
				if(progId == 3){
					$("#progName").text("Exploring Potential™ Middle School");
					$("#progDesc").text("Our middle school program, for grades 5 through 8, helps pre adolescents and adolescents understand their inner world of senses, thoughts and emotions, develop self-awareness, self-regulation, appreciation, and the aptitude for making skillful and affirming choices related to self and others. The daily practices also foster resilience and compassionate action which can lessen the effects of bullying. Importantly, the program provides a gateway for students to experience potential and possibility in their own lives.");
					$("#progDesc1").text("");
				}
				
				if(progId == 4){
					$("#progName").text("Exploring Relevance™ High School");
					$("#progDesc").text("Our high school program, for grades 9 through 12, engages young adults through their inner world of senses, thoughts and emotions, to develop self-awareness, self-regulation, appreciation, resilience and compassion, and to make skillful and affirming choices related to self and others. The daily practice invites students to experience potential and possibility in their lives, and to seek ways of expressing that potential in connection with a larger interrelated community.");
					$("#progDesc1").text("");
				} 
				
				audioTrackName = value.audioName;

				emaildrop+='<p>'+value.audioTitle+'</p>	<div class="Trail_grid_row"><div class="lg_player">'+
				'<audio preload="none" class="audioDemo" style="display:inline-block;" controls>'+
				  '<source id="audioTrack" src="${bucketPath}/audioFiles/'+audioTrackName+'" type="audio/mpeg">'+
				'</audio></div></div>';
				
			});
			$("#trackListing").html(emaildrop);
			
		}
	});
}
</script>
</body>
</html>


