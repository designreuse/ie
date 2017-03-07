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
 <spring:eval expression="@propertyConfigurer.getProperty('service.url')" var="baseURL" />
<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Home Edition</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/book.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/home-edition.css">
<link rel="stylesheet" type="text/css" href="http://innerexplorer.org/wp-content/themes/compass/css/home-style.css">
</head>

<body>
<spring:eval var="bucketPath" expression="@propertyConfigurer.getProperty('bucket_path')" />
<div class="wrapper">
		<%@include file="header.jsp" %>
		
		
		<section class="slider2">
	
	
    		<div class="callbacks_container">
      			<ul class="rslides callbacks callbacks1" id="slider4">
												<li id="callbacks1_s0" class="callbacks1_on" style="display: list-item; float: left; position: relative; opacity: 1; z-index: 2; transition: opacity 500ms ease-in-out;">
								<div class="hm_bnr" style="background: url(<%=request.getContextPath()%>/NewStyles/images/p-he-banner1.jpg) no-repeat;">
								</div>
								<div class="bnr-postr-mn">
									<div class="container">
										<div class="bnr-postr-in">
											
											<h2>It's amazing how much 10 minutes can do for your family.</h2>
											<h4>Inner Explorer is the easiest way to practice mindfulness for 10 minutes a day. And 10 mindful minutes are all you need to help kids change behavior, find better ways to focus and give everyone more positive family time.</h4>
											
											<div class="clr-btn-cntr">
												<a href="<%=request.getContextPath()%>/home-edition-new">START</a>
											</div>
										</div>    
									</div>

								</div> 
														</li><li id="callbacks1_s1" class="" style="display: list-item; float: none; position: absolute; opacity: 0; z-index: 1; transition: opacity 500ms ease-in-out;">
								<div class="hm_bnr" style="background: url(<%=request.getContextPath()%>/NewStyles/images/p-he-banner2.jpg) no-repeat;">
								</div>
								<div class="bnr-postr-mn">
									<div class="container">
										<div class="bnr-postr-in">
											
											<h2>It's amazing how much time 10 minutes can give you.</h2>
											<h4>Inner Explorer is the easiest way to practice mindfulness for 10 minutes a day. And 10 mindful minutes are all you need to help kids focus, reduce behavior issues and give yourself more time to engage and inspire your kids.</h4>
											
											<div class="clr-btn-cntr">
												<a href="<%=request.getContextPath()%>/home-edition-new">START</a>
											</div>
										</div>    
									</div>

								</div> 
														</li><li id="callbacks1_s2" style="display: list-item; float: none; position: absolute; opacity: 0; z-index: 1; transition: opacity 500ms ease-in-out;" class="">
								<div class="hm_bnr" style="background: url(<%=request.getContextPath()%>/NewStyles/images/p-he-banner3.jpg) no-repeat;">
								</div>
								<div class="bnr-postr-mn">
									<div class="container">
										<div class="bnr-postr-in">
											
											<h2>Getting kids to focus is easier than you think.</h2>
											<h4>Studies show the daily practice of mindfulness can significantly improve a child's ability to focus. That's why Inner Explorer has made daily practice so easy. With just 10 mindful minutes a day, you help kids pay better attention, reduce behavior issues, reduce their stress and yours, and give yourself more time to engage and inspire your kids.</h4>
											
											<div class="clr-btn-cntr">
												<a href="<%=request.getContextPath()%>/home-edition-new">START</a>
											</div>
										</div>    
									</div>

								</div> 
														</li><li id="callbacks1_s3" style="display: list-item; float: none; position: absolute; opacity: 0; z-index: 1; transition: opacity 500ms ease-in-out;" class="">
								<div class="hm_bnr" style="background: url(<%=request.getContextPath()%>/NewStyles/images/p-he-banner4.jpg) no-repeat;">
								</div>
								<div class="bnr-postr-mn">
									<div class="container">
										<div class="bnr-postr-in">
											
											<h2>Let's change the way they feel about bullies...</h2>
											<h4>...and the way bullies generally feel with the daily practice of mindfulness. Just 10 mindful minutes a day and you can help kids manage toxic stress and anger, reduce incidents of bullying and increase compassion. All you have to do is push play because Inner Explorer has made it easier than ever.</h4>
											
											<div class="clr-btn-cntr">
												<a href="<%=request.getContextPath()%>/home-edition-new">START</a>
											</div>
										</div>    
									</div>

								</div> 
							 
      		</li></ul><a href="#" class="callbacks_nav callbacks1_nav prev">Previous</a><a href="#" class="callbacks_nav callbacks1_nav next">Next</a>
    	</div>
    </section>
		
		
        <%-- <section class="book-banner-he">
    		<div class="container">
    			<div class="he-banner-inner">
        			<div class="he-book-content">
        				<div class="he-book-content-out">
	        				<ul>
	            				<li>
	                    			H<img src="<%=request.getContextPath()%>/NewStyles/images/he-icon.png">ME
	                    		</li>
	                        	<li>
	                    			EDITION
	                    		</li>
	                    	</ul>
                    	
                    	<div class="he-banner-btn">
                			<a href="<%=request.getContextPath()%>/home-edition-new">SIGN UP</a>
                		</div>
                		</div>
            		</div>           	
        		</div>
        	</div>
    	</section> --%>
        <section class="about-book-main">
    	<div class="about-book-head chngd-head">
        	Summer of Mindfulness
        </div>
        <div class="about-book-content-main">
        	<div class="container">
					<div class="learn-with-book-content">
						<p>You might be hearing about mindfulness a lot lately - but
							what is it really? Mindfulness or mindful awareness is the
							practice of paying attention to the present moment on purpose
							without judgment. It's used every day by individuals, businesses,
							and others to combat stress and promote positive thinking. Inner
							Explorer has spent nearly five years developing a cutting-edge
							platform to help teachers practice daily with their students to
							nurture readiness to learn in Pre-K through high school
							classrooms. We've heard from so many parents who have seen the
							drastic changes in their children and want to bring Inner
							Explorer into their homes. Now you can practice mindful awareness
							at home with your children this summer and experience the
							benefits for yourself.<br><br>The key is daily practice, no matter what
							time of year. Interested to learn how you can bring Inner
							Explorer to your child's classroom for the 2016-2017 school year?
							Contact us at info@innerexplorer.org</p>
					</div>
				</div>
        </div>
    </section>
    <section class="OurprgRow p-top-20">
    	<div class="container">
      		<h2 class="head-font-light lh35">Benefits <!-- of Mindful Based Learning --></h2>
      		<div class="green_line_btm"></div>
      		<div class="inner-Explorer-news mrgtp_0">
        		<ul>
					<li>
						<div class="banefits-img">
							<div class="img height-auto"><img width="89" height="89" alt="academic-benefits" class="newsimage wp-post-image" src="http://innerexplorer.org/wp-content/uploads/2016/01/academic-benefits1.png">
							</div>
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
						<div class="banefits-img"><div class="img height-auto"><img width="89" height="89" alt="health-benefits" class="newsimage wp-post-image" src="http://innerexplorer.org/wp-content/uploads/2016/01/health-benefits1.png"></div></div>
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
						<div class="banefits-img"><div class="img height-auto"><img width="89" height="89" alt="overall-benefits" class="newsimage wp-post-image" src="http://innerexplorer.org/wp-content/uploads/2016/01/overall-benefits1.png"></div></div>
						<div style="padding-top:0px" class="imgTxt newsTxt"> 
						<div class="researchcontent benefitsNew">
							<h4 class="researchHead">Overall Benefits</h4>
							<p>Reduced behavioral conflict including bullying</p>
							<p>Lower school dropout rate</p>
							<p>Reduce the likelihood of juvenile crime</p>
							<p>Educational outcomes that help decrease poverty</p>
							<p>Management of emotional stress, outside classroom</p>																		
						</div>
						</div>
					</li>
        </ul>
      </div>
	  
    </div>
  </section>
  
      <section class="trial-track-main">
			<div class="container">
				<div class="trail-track">
					<div class="learn-with-book-head">
						Trial Tracks
					</div>
					<div class="trail-he-video-out">
						<div class="trail-he-video">
							<ul>
								<li>
									<div class="trail-he-img">
										<img src="<%=request.getContextPath()%>/NewStyles/images/he-v-list-1.jpg" alt="">
									</div>
									<div class="trail-he-player">
										<p>Intro & Posture For Young Kids</p>
										<audio preload="none" id="play-1" controls="" style="width: 100%"><source src="${bucketPath}/audioFiles/Day 1 - Potential 1 Intro IE Posture_1_3.mp3" type="audio/mpeg"></audio>
									</div>
								</li>
								<li>
									<div class="trail-he-img">
										<img src="<%=request.getContextPath()%>/NewStyles/images/he-v-list-2.jpg" alt="">
									</div>
									<div class="trail-he-player">
										<p>Practice Session for Parents</p>
										<audio preload="none" id="play-2" controls="" style="width: 100%"><source src="${bucketPath}/audioFiles/Day 2 - Potential 2 Intro Breath Relax_1_3.mp3" type="audio/mpeg"></audio>
									</div>
								</li>
							</ul>
						</div>
					 </div>   
				</div>
			</div>
		</section>
    <div class="experience-he-main">
    	<div class="container">
    		<div class="experience-he-out">
        	<div class="experience-he">
            	<ul>
                	<li>
                    	<div class="experience-he-img">
                        	<h3>Experience Home Edition</h3>
                        </div>
                        <div class="he-sub-price">
                        </div>
                        <div class="experience-he-inner">
                        	<ul>
                            	<li><p>Practice mindfulness</p></li>
                                <li><p>Age based custom tracks</p></li>
                                <li><p>Complementary activities to enhance the experience</p></li>
                                <li><p>Ability to become Brand Ambassador for local school(s)</p></li>
								<li><p>Access to IE Radio</p></li>                                
								<li><p>Start a fund raising campaign</p></li>
                                <li><p>Share Inner Explorer Radio</p></li>
                                <li><p>Gift Home Edition subscription to friends & family</p></li>
                                <li><p>Ability to customize the account for your family</p></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                    	<div class="experience-he-img">
                        	<img src="<%=request.getContextPath()%>/NewStyles/images/3mnths-he.jpg" alt="">
                        </div>
                        <div class="he-sub-price">
                        	<p>Subscription Price for 3 months</p>
                            <h2>$10</h2>
                        </div>
                        <div class="experience-he-inner">
                        	<ul>
                            	<li><img src="<%=request.getContextPath()%>/NewStyles/images/exper-tick.png" alt=""></li>
                                <li><img src="<%=request.getContextPath()%>/NewStyles/images/exper-tick.png" alt=""></li>
                                <li><img src="<%=request.getContextPath()%>/NewStyles/images/exper-tick.png" alt="" style="padding: 3px 0px 3px 0px;"></li>
                                <li><img src="<%=request.getContextPath()%>/NewStyles/images/exper-tick.png" alt="" style="padding: 3px 0px 3px 0px;"></li>

<li><img src="<%=request.getContextPath()%>/NewStyles/images/exper-tick.png" alt=""  style="padding: 3px 0px 3px 0px;"></li>
                                <li></li><li></li><li></li><li></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                    	<div class="experience-he-img">
                        	<img src="<%=request.getContextPath()%>/NewStyles/images/1year-he.jpg" alt="">
                        </div>
                        <div class="he-sub-price">
                        	<p>Subscription Price for 1 Year</p>
                            <h2>$30</h2>
                        </div>
                        <div class="experience-he-inner">
                        	<ul>
                            	<li><img src="<%=request.getContextPath()%>/NewStyles/images/exper-tick.png" alt=""></li>
                                <li><img src="<%=request.getContextPath()%>/NewStyles/images/exper-tick.png" alt=""></li>
                                <li><img src="<%=request.getContextPath()%>/NewStyles/images/exper-tick.png" alt=""  style="padding: 3px 0px 3px 0px;"></li>
                                <li><img src="<%=request.getContextPath()%>/NewStyles/images/exper-tick.png" alt=""  style="padding: 3px 0px 3px 0px;"></li>
                                <li><img src="<%=request.getContextPath()%>/NewStyles/images/exper-tick.png" alt=""  style="padding: 3px 0px 3px 0px;"></li>
                                <li><img src="<%=request.getContextPath()%>/NewStyles/images/exper-tick.png" alt=""></li>
                                <li><img src="<%=request.getContextPath()%>/NewStyles/images/exper-tick.png" alt=""></li>
                                <li><img src="<%=request.getContextPath()%>/NewStyles/images/exper-tick.png" alt=""></li>
 <li><img src="<%=request.getContextPath()%>/NewStyles/images/exper-tick.png" alt=""></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="he-banner-btn mtop30">
					<a href="<%=request.getContextPath()%>/home-edition-new">Sign Up</a>
				</div>
            </div>
        </div>
    </div>
    
     <section class="youtube-book">
    	<div class="container">
        	<div class="youtube-book-head">
            	Video Gallery
            </div>
            <div class="master-of-mind-book">
            	
                <div class="master-mind-center">
                    <div class="master-mind-youtube-video">      
												 <iframe width="560" height="315" src="http://voice.adobe.com/a/9Yd9V/embed/" frameborder="0" allowfullscreen></iframe>
                    </div>
                   
                </div>
            </div>
        </div>
    </section>
	</div>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %> 

<script src="http://innerexplorer.org/wp-content/themes/compass/js/responsiveslides.min.js"></script>
<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script> --%>
<script type="text/javascript" src="http://innerexplorer.org/wp-content/themes/compass/js/sticky-header.js"></script> 
<script>
jQuery(document).ready
(function($){
	$("#header").sticky({ topSpacing: 0 });
	$(".fancybox").fancybox();
	/* $.daisyNav(); */
	mobilecheck();
	
});

document.addEventListener('play', function(e){
    var audios = document.getElementsByTagName('audio');
    for(var i = 0, len = audios.length; i < len;i++){
        if(audios[i] != e.target){
            audios[i].pause();
        }
    }
}, true);

window.mobilecheck = function() {
	  var check = false;
	  (function(a){if(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino/i.test(a)||/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0,4)))check = true})(navigator.userAgent||navigator.vendor||window.opera);
	  var learn = '${learn}';
	  if(check && learn!='Y'){
	  window.location.href="<%=request.getContextPath()%>/home-edition-mobile";
	  }
	  return check;
	}

</script>
</body>
</html>
