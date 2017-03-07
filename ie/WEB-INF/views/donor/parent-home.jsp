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
<title>Home Edition Dashboard</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<style>
audio { 
   display:none;
}
</style>
</head>

<body>
<spring:eval var="bucketPath" expression="@propertyConfigurer.getProperty('bucket_path')" />
	<div class="wrapper">
	  <%@include file="header.jsp" %>
	  <!--<section class="slider-inner">
			<img src="images/browse-donation-header.jpg" alt="Slider" />
		</section>-->

		<section class="makeDonateSct mtop-5">
			<div class="container">
         		<div class="pracProgress_hdr">
            		<h2>Home Edition Dashboard</h2>
            		<div class="green_line_btm"></div>
					<div class="teach_dash_update"><h3 class="teachr_dsh bdr-btm-none">Start your Inner Explorer experience today</h3>
               		</div>
            	</div>
			</div>
		</section>
        <section class="home-edition-dshbd">
        	<div class="container">
            	<div class="overall-dashbd">
                	<div class="dashbd-inner">
                    	<p>Breathing</p>
                        <div class="dashbd-listing">
                        	<ul>
                            	<li>
                            	
                            	<span id="dummy" onclick="playSound(this, '${bucketPath}/audioFiles/getStarted.mp3');">
								   <img src="<%=request.getContextPath()%>/NewStyles/images/music-listing-1.png">
								</span>
                            	
                                    <p>Feeling Sick</p>
                                </li>
                                <li>
                                <span id="dummy" onclick="playSound(this, '${bucketPath}/audioFiles/getStarted.mp3');">
								   <img src="<%=request.getContextPath()%>/NewStyles/images/music-listing-2.png">
								</span>
                                	
                                    <p>Feeling Depressed</p>
                                </li>
                                <li>
                                <span id="dummy" onclick="playSound(this, '${bucketPath}/audioFiles/getStarted.mp3');">
								   <img src="<%=request.getContextPath()%>/NewStyles/images/music-listing-3.png">
								</span>
                                	
                                    <p>Motivating</p>
                                </li>
                                <li>
                                <span id="dummy" onclick="playSound(this, '${bucketPath}/audioFiles/getStarted.mp3');">
								   <img src="<%=request.getContextPath()%>/NewStyles/images/music-listing-4.png">
								</span>
                                	
                                    <p>Before Dinner</p>
                                </li>
                            </ul>
                        </div>
                	</div>
                    <div class="dashbd-inner">
                    	<p>Meditation</p>
                        <div class="dashbd-listing">
                        	<ul>
                            	<li>
                            	<span id="dummy" onclick="playSound(this, '${bucketPath}/audioFiles/getStarted.mp3');">
								   <img src="<%=request.getContextPath()%>/NewStyles/images/music-listing-1.png">
								</span>
                                	
                                    <p>Feeling Sick</p>
                                </li>
                                <li>
                                <span id="dummy" onclick="playSound(this, '${bucketPath}/audioFiles/getStarted.mp3');">
								   <img src="<%=request.getContextPath()%>/NewStyles/images/music-listing-2.png">
								</span>
                                	
                                    <p>Feeling Depressed</p>
                                </li>
                                <li>
                                 <span id="dummy" onclick="playSound(this, '${bucketPath}/audioFiles/getStarted.mp3');">
								   <img src="<%=request.getContextPath()%>/NewStyles/images/music-listing-3.png">
								</span>
                                	
                                    <p>Motivating</p>
                                </li>
                                <li>
                                <span id="dummy" onclick="playSound(this, '${bucketPath}/audioFiles/getStarted.mp3');">
								   <img src="<%=request.getContextPath()%>/NewStyles/images/music-listing-4.png">
								</span>
                                	
                                    <p>Before Dinner</p>
                                </li>
                            </ul>
                        </div>
                	</div>
                    <div class="dashbd-inner">
                    	<p>Depression</p>
                        <div class="dashbd-listing">
                        	<ul>
                            	<li>
                            	<span id="dummy" onclick="playSound(this, '${bucketPath}/audioFiles/getStarted.mp3');">
								   <img src="<%=request.getContextPath()%>/NewStyles/images/music-listing-1.png">
								</span>
                                	
                                    <p>Feeling Sick</p>
                                </li>
                                <li>
                                <span id="dummy" onclick="playSound(this, '${bucketPath}/audioFiles/getStarted.mp3');">
								   <img src="<%=request.getContextPath()%>/NewStyles/images/music-listing-2.png">
								</span>
                                	
                                    <p>Feeling Depressed</p>
                                </li>
                                <li>
                                <span id="dummy" onclick="playSound(this, '${bucketPath}/audioFiles/getStarted.mp3');">
								   <img src="<%=request.getContextPath()%>/NewStyles/images/music-listing-3.png">
								</span>
                                	
                                    <p>Motivating</p>
                                </li>
                                <li>
                                <span id="dummy" onclick="playSound(this, '${bucketPath}/audioFiles/getStarted.mp3');">
								   <img src="<%=request.getContextPath()%>/NewStyles/images/music-listing-4.png">
								</span>
                                	
                                    <p>Before Dinner</p>
                                </li>
                            </ul>
                        </div>
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
   <%-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script> --%>  
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
   <script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$.daisyNav();
	});
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
</script>

</body>
</html>
