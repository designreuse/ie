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

<!DOCTYPE html>
<html lang="en-US" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://ogp.me/ns/fb#" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="pingback" href="http://innerexplorer.org/xmlrpc.php">
	<!--[if lt IE 9]>
	<script src="http://innerexplorer.org/wp-content/themes/compass/js/html5.js"></script>
	<![endif]-->
	<title>About the Book</title>
	<script>(function(html){html.className = html.className.replace(/\bno-js\b/,'js')})(document.documentElement);</script>
<link rel="alternate" type="application/rss+xml" title="Inner Explorer &raquo; Feed" href="http://innerexplorer.org/feed/" />
<link rel="alternate" type="application/rss+xml" title="Inner Explorer &raquo; Comments Feed" href="http://innerexplorer.org/comments/feed/" />
		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"http:\/\/s.w.org\/images\/core\/emoji\/72x72\/","ext":".png","source":{"concatemoji":"http:\/\/innerexplorer.org\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.3.4"}};
			!function(a,b,c){function d(a){var c=b.createElement("canvas"),d=c.getContext&&c.getContext("2d");return d&&d.fillText?(d.textBaseline="top",d.font="600 32px Arial","flag"===a?(d.fillText(String.fromCharCode(55356,56812,55356,56807),0,0),c.toDataURL().length>3e3):(d.fillText(String.fromCharCode(55357,56835),0,0),0!==d.getImageData(16,16,1,1).data[0])):!1}function e(a){var c=b.createElement("script");c.src=a,c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g;c.supports={simple:d("simple"),flag:d("flag")},c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.simple&&c.supports.flag||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
		<style type="text/css">
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>

<link rel='stylesheet' id='bbp-default-css'  href='http://innerexplorer.org/wp-content/plugins/bbpress/templates/default/css/bbpress.css?ver=2.5.8-5815' type='text/css' media='screen' />
<link rel='stylesheet' id='contact-form-7-css'  href='http://innerexplorer.org/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=4.3' type='text/css' media='all' />
<link rel='stylesheet' id='twentyfifteen-fonts-css'  href='https://fonts.googleapis.com/css?family=Noto+Sans%3A400italic%2C700italic%2C400%2C700%7CNoto+Serif%3A400italic%2C700italic%2C400%2C700%7CInconsolata%3A400%2C700&#038;subset=latin%2Clatin-ext' type='text/css' media='all' />
<link rel='stylesheet' id='genericons-css'  href='http://innerexplorer.org/wp-content/themes/compass/genericons/genericons.css?ver=3.2' type='text/css' media='all' />

<!-- <link rel='stylesheet' id='twentyfifteen-style-css'  href='http://innerexplorer.org/wp-content/themes/compass/style.css?ver=4.3.4' type='text/css' media='all' /> -->
<!--[if lt IE 9]>
<link rel='stylesheet' id='twentyfifteen-ie-css'  href='http://innerexplorer.org/wp-content/themes/compass/css/ie.css?ver=20141010' type='text/css' media='all' />
<![endif]-->
<!--[if lt IE 8]>
<link rel='stylesheet' id='twentyfifteen-ie7-css'  href='http://innerexplorer.org/wp-content/themes/compass/css/ie7.css?ver=20141010' type='text/css' media='all' />
<![endif]-->
<link rel='stylesheet' id='fancybox-css'  href='http://innerexplorer.org/wp-content/plugins/easy-fancybox/fancybox/jquery.fancybox-1.3.7.min.css?ver=1.5.7' type='text/css' media='screen' />
<script type='text/javascript' src='http://innerexplorer.org/wp-includes/js/jquery/jquery.js?ver=1.11.3'></script>
<script type='text/javascript' src='http://innerexplorer.org/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.2.1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var RestrictAjax = {"ajaxurl":"http:\/\/innerexplorer.org\/wp-admin\/admin-ajax.php"};
/* ]]> */
</script>
<script type='text/javascript' src='http://innerexplorer.org/wp-content/plugins/forum-restrict/forum_restrict.js?ver=4.3.4'></script>
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://innerexplorer.org/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://innerexplorer.org/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress 4.3.4" />
<link rel='canonical' href='http://innerexplorer.org/master-of-mindfulness/' />
<link rel='shortlink' href='http://innerexplorer.org/?p=385' />
	<style type="text/css">.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}</style>

<!-- Easy FancyBox 1.5.7 using FancyBox 1.3.7 - RavanH (http://status301.net/wordpress-plugins/easy-fancybox/) -->
<script type="text/javascript">
/* <![CDATA[ */
var fb_timeout = null;
var fb_opts = { 'overlayShow' : true, 'hideOnOverlayClick' : true, 'showCloseButton' : true, 'width' : 700, 'height' : 400, 'padding' : 9, 'centerOnScroll' : true, 'enableEscapeButton' : true, 'autoScale' : true };
var easy_fancybox_handler = function(){
	/* Inline */
	jQuery('a.fancybox-inline, area.fancybox-inline, li.fancybox-inline a').fancybox( jQuery.extend({}, fb_opts, { 'type' : 'inline', 'autoDimensions' : false, 'scrolling' : 'auto', 'easingIn' : 'easeOutBack', 'easingOut' : 'easeInBack', 'opacity' : false, 'hideOnContentClick' : false }) );
	/* Auto-click */ 
	jQuery('#fancybox-auto').trigger('click');
}
/* ]]> */
</script>

<!-- START - Facebook Open Graph, Google+ and Twitter Card Tags 1.7.3.1 -->
<meta property="og:locale" content="en_US"/>
<meta property="og:site_name" content="Inner Explorer"/>
<meta property="og:title" content="Master of Mindfulness"/>
<meta itemprop="name" content="Master of Mindfulness"/>
<meta property="og:url" content="http://innerexplorer.org/master-of-mindfulness/"/>
<meta property="og:type" content="article"/>
<meta property="og:description" content="For the last 40 years, I have spent my career looking for social justice and educational equity. I&#039;ve worked with brilliant people over the decades and it breaks my heart that poverty is worse now than when I left college in 1975.&nbsp;

In 2007, from Park Day School in Oakland, CA I helped l"/>
<meta itemprop="description" content="For the last 40 years, I have spent my career looking for social justice and educational equity. I&#039;ve worked with brilliant people over the decades and it breaks my heart that poverty is worse now than when I left college in 1975.&nbsp;

In 2007, from Park Day School in Oakland, CA I helped l"/>
<meta property="og:image" content="http://innerexplorer.org/wp-content/uploads/2016/01/mindful-static1.jpg"/>
<meta itemprop="image" content="http://innerexplorer.org/wp-content/uploads/2016/01/mindful-static1.jpg"/>
<!-- END - Facebook Open Graph, Google+ and Twitter Card Tags -->

	
	<link rel="icon" href="http://innerexplorer.org/wp-content/themes/compass/images/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" type="text/css" href="http://innerexplorer.org/wp-content/themes/compass/css/flexslider.css">
	<link rel="stylesheet" type="text/css" href="http://innerexplorer.org/wp-content/themes/compass/css/carousel.css">
	<!-- <link rel="stylesheet" type="text/css" href="http://innerexplorer.org/wp-content/themes/compass/css/daisynav.css"> -->
	<link rel="stylesheet" href="http://innerexplorer.org/wp-content/themes/compass/css/jquery-anyslider.css">
	
	<!-- <link rel="stylesheet" type="text/css" href="http://innerexplorer.org/wp-content/themes/compass/css/style.css"> -->
	<!-- <link rel="stylesheet" type="text/css" href="http://innerexplorer.org/wp-content/themes/compass/css/developer.css"> --> 
	
	<script type="text/javascript">
		
		var ajaxurl = "http://innerexplorer.org/wp-admin/admin-ajax.php";
	</script>
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-73908394-1', 'auto');
ga('send', 'pageview');

</script>

</head>

<body class="page page-id-385 page-template page-template-mindfullpage page-template-mindfullpage-php">
<div class="wrapper" id="homep">
		 <header id="header">
    <div class="container ">
        <div class="logo">
					<a href="<%=request.getContextPath()%>/donor" title="">
					<!-- <img src="http://innerexplorer.org/wp-content/themes/compass/images/logo.jpg" alt="Inner Explorer" title="Inner Explorer" /> -->
					</a>
				</div>
        <div class="hdRight">
                <nav>
                <div data-menu-id="demo-menu" class="menu-toggle-button active">
						<img alt="" src="http://innerexplorer.org/wp-content/themes/compass/images/toggle-menu.jpg">
					</div>
               <ul id="demo-menu" class="menu-list">
               
                 <li><a href="<%=request.getContextPath()%>/donor" class="font_strong dk_black prac-t-icon" title="">Practice</a></li>
               	 <li><a href="<%=request.getContextPath()%>/donor/book-microsite" class="font_strong buy-b-icn" title="">Book</a></li>
				 <li><a href="<%=request.getContextPath()%>/donor/radio" class="font_strong dk_black rdi-d-icn" title="">Radio</a></li>    
				 <li><a href="<%=request.getContextPath()%>/donor/parentActivity" class="font_strong act-v-icn" title="">Activity</a></li>           
				 <li><a href="<%=request.getContextPath()%>/donor/action" class="font_strong share-hd-icn" title="">Share</a></li>
                 <li><a href="<%=request.getContextPath()%>/donor/parentSocialMap" class="font_strong dk_black scl-m-icon" title="">Social Map</a></li>
                 <li><a href="<%=request.getContextPath()%>/donor/brand-ambassador-main" class="font_strong dk_black dsh-t-icon" title="">Ambassador</a></li>
                 <li><a href="<%=request.getContextPath()%>/donor/parent-dash-tab" class="font_strong dk_black cmpg-hd-icon" title="">Campaign</a></li>
                 <li><a href="<%=request.getContextPath()%>/donor/profile" class="font_strong pro-t-icon" title="">Profile</a></li>
                       	
                       	
                       	<%-- <li class="xtra_nav_margin"><a href="javascript:;" class="font_strong icons_hdr" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/nav-icon-5.png">Community</a></li> --%> 
                        
                        <%-- <li class="xtra_nav_margin"><a href="${url}" class="font_strong icons_hdr" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/nav-icon-com.png">Community</a></li> --%>
                      
                            
                      
                         <%-- <li class="xtra_nav_margin"><a href="<%=request.getContextPath()%>/teacher/manage" class="font_strong icons_hdr" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/nav-icon-7.png">Profile</a></li>
                        <li class="xtra_nav_margin"><a href="<%=request.getContextPath()%>/teacher/practiceHistory" class="font_strong icons_hdr" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/nav-icon-8.png">Practice History</a></li> --%>
                      
                
    
                    </ul>
                </nav>
                <div class="startRight" style="margin-top: 18px !important;">
                	<p>Welcome, ${loginName}</p>
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout';" class="startBtn"/>
					</div>
            </div>
    </div>

</header>
<%-- 	
	<header id="header">
	  <div class="container" id="content">
	  
		
				<div class="logo"> <a href="http://innerexplorer.org/" title=""><img src="http://innerexplorer.org/wp-content/themes/compass/images/logo.jpg" alt="Inner Explorer" title="Inner Explorer" /></a> </div>
		<div class="hdRight">
		  <nav>
			<div class="menu-toggle-button" data-menu-id="demo-menu"><img alt="" src="http://innerexplorer.org/wp-content/themes/compass/images/toggle-menu.jpg"></div>
			<ul id="demo-menu" class="menu-list homenav">
						<li>	
				<a href="http://innerexplorer.org" title="Home" class="home_icon"></a>
			</li>
			<li>
				<div class="searchBox">
					<input type="button" id="login"  class="search_icon login">
					<div class="login_panel">
						<form action="http://innerexplorer.org/ie/searchUser/" class="search-form" method="get" role="search">
<label>
	<span class="screen-reader-text">Search for:</span>
	<input type="search" title="Search for:" name="s" value="" placeholder="Search …" class="search-field">
</label>
<input type="submit" value="" class="search-submit screen-reader-text">
</form>
					  <!--form>
						<input type="button" class="searchbar_btn"  >
						<input type="text" class="searchbar" placeholder="Search">
					  </form-->
					</div>
				</div>
     		</li>
			 
			</ul>
		  </nav>
		  
		  <div class="startRight" style="margin-top:4px"> <a href="http://innerexplorer.org/ie/login">
			<input type="button" class="startBtn" value="Login">
			</a> </div>
			<!-- 
			<div class="startRight" style="margin-top:4px"> <a href="http://innerexplorer.org/ie/act-now">
			<input type="button" class="startBtn" value="Act Now">
			</a> </div>
			-->
		</div>
	  </div>
	  	</header> --%>

		
<link rel="stylesheet" type="text/css" href="http://innerexplorer.org/wp-content/themes/compass/css/book.css"> 
	<section class="book-banner">
    	<div class="container">
    		<div class="book-banner-inner">
        		<div class="book-content">
            		<div class="book-name">
                    	Master of mindfulness
                    </div>
                    <div class="book-author">
                    	BY LAURIE GROSSMAN, ANGELINA ALVAREZ | MR. MUSUMECI'S 5TH GRADE CLASS
                    </div>
                    <div class="book-central">
                    	Faster than a speeding spitball, more powerful than a playground bully, able to breeze through homework and finish nightly chores in a single bound, it's "Master of Mindfulness" here to conquer stress, worry, and any trouble that comes your way.<!--
 
Do you ever feel angry, disappointed, or stressed out about family problems, school, bullies, or trouble with friends? If so, mindfulness can help. "Master of Mindfulness" is a unique and empowering book written "for" kids "by" kids, with cool illustrations and tips that show you how to be confident, get focused, stay calm, and tap into your own inner strength so that you can be your own superhero no matter what life throws your way -->
                    </div>
                    <div class="book-banner-btn">
                	<!--<a href="http://innerexplorer.org/ie/donateBook">Donate Now</a>-->
                	<a target="_blank" style="margin-left:0px;" href="#amazon-sale">Buy This Book</a>
                </div>
            	</div>
            	<div class="book-banner-image">
            		<img src="http://innerexplorer.org/wp-content/themes/compass/images/book-poster.png">
            	</div>
        	</div>
        </div>
    </section>
    <section class="about-book-main">
    	<div class="about-book-head">
        	Foreword by Jon Kabat-Zinn, PhD
        </div>
        <div class="about-book-content-main">
        	<div class="container">
            	<div class="jon-kabat-img">
                		<img src="http://innerexplorer.org/wp-content/themes/compass/images/Jon-Kabat.png">
                    </div>
            	<div class="about-book-content">
        			Kudos to the children in Mr. Musumeci's fifth grade class for writing this book for their peers. It is obvious from both the pictures and the text that mindfulness has been an important part of their learning to navigate through difficult times by befriending their own minds and recognizing new ways to deal with the hard stuff differently. What a useful classroom strategy to catalyze real Learning by Learning first how to deal with intrusive thoughts and emotions and with outer circumstances at home and at school more creatively and wholesomely. Bravo to these real heroes – never mind the super.
                    <h3>Jon Kabat-Zinn</h3>
                     <p>Founder of Mindfulmess-Based Stress Reduction (MBSR)</p>
 <p>Center for mindfulness in medicine, Health Care and Society</p>
 <p>Professor of Medicine Emeritus</p>
 <p>University of Massachusetts Medical School</p>
                </div>
            </div>
        </div>
    </section>
    <section id="learn-with-book" class="learn-with-book">
    	<div class="learn-with-book-head">
        	Topics Covered In The Book
        </div>
        <div class="container">
        <div class="learn-with-book-content">
        	Do you ever feel angry, disappointed, or stressed out about family problems, school, bullies, or trouble with friends? If so, mindfulness can help. "Master of Mindfulness" is a unique and empowering book written "for" kids "by" kids, with cool illustrations and tips that show you how to be confident, get focused, stay calm, and tap into your own inner strength so that you can be your own superhero no matter what life throws your way 
        </div>
        </div>
        <div class="learn-book-list">
			<div class="container">
            	<div class="learn-book-list-main">
                	<ul>
                    	<li>
                        	<div class="learn-book-icon mindfullnesspopup" popuid='popupfirst' >
                            	<img src="http://innerexplorer.org/wp-content/themes/compass/images/learn-1.png">
                            </div>
                            <div class="learn-list-head">
                            	MINDFULNESS
                            </div>
                            <div class="learn-list-data">
                            	What is mindfulness? 
                            </div>
                            
                            
                            <div id="popupfirst" style="display:none">
                            	<div class="popup-outr">
                                    <div class="ourStory-Popup" style="max-width:500px; text-align:center">
                                        
                                        <div class="hdr"> MINDFULNESS <div class="close"><a href="javascript:void(0);"><img class="newsClose" title="Close" alt="" src="http://innerexplorer.org/wp-content/themes/compass/images/delete-red-icon.png"></a></div> </div>
                                        <div class="ourStory-Txt"  style="text-align:center"><!--<img src="//http://innerexplorer.org/wp-content/themes/compass/images/learn-1.png"> --><p class="aligncntr mind-pop"> <img src="http://innerexplorer.org/wp-content/themes/compass/images/mindfulness-pop1.jpg"></p> </div>
                                    </div>
                                </div>
                                <script>
								jQuery(document).ready(function( $ ) {
									$('.newsClose').click(function(){ 
										$(".newpopup").hide();		
									});
								});
								</script>
                            </div>
                        </li>
                        <li>
                        	<div class="learn-book-icon mindfullnesspopup" popuid='popupsecond'>
                            	<img src="http://innerexplorer.org/wp-content/themes/compass/images/learn-2.png">
                            </div>
                            <div class="learn-list-head">
                            	BENEFITS
                            </div>
                            <div class="learn-list-data">
                            	How you know you need mindfulness
                            </div>
                            
                            <div id="popupsecond" style="display:none">
                            	<div class="popup-outr">
                                    <div class="ourStory-Popup" style="max-width:500px; text-align:center">
                                        
                                        <div class="hdr"> BENEFITS <div class="close"><a href="javascript:void(0);"><img class="newsClose" title="Close" alt="" src="http://innerexplorer.org/wp-content/themes/compass/images/delete-red-icon.png"></a></div> </div>
                                        <div class="ourStory-Txt" style="text-align:center"><!-- <img src="//http://innerexplorer.org/wp-content/themes/compass/images/learn-2.png"> --><p class="aligncntr mind-pop"><img src="http://innerexplorer.org/wp-content/themes/compass/images/mindfulness-pop2.jpg"></p>   </div>
                                    </div>
                                </div>
                                <script>
								jQuery(document).ready(function( $ ) {
									$('.newsClose').click(function(){ 
										$(".newpopup").hide();		
									});
								});
								</script>
                            </div>
                            
                            
                        </li>
                        <li>
                        	<div class="learn-book-icon">
                            	<img src="http://innerexplorer.org/wp-content/themes/compass/images/learn-3.png">
                            </div>
                            <div class="learn-list-head">
                            	USEFUL TIPS
                            </div>
                            <div class="learn-list-data">
                            	Under what circumstances it would be helpful to use mindfulness
                            </div>
                        </li>
                        <li>
                        	<div class="learn-book-icon">
                            	<img src="http://innerexplorer.org/wp-content/themes/compass/images/learn-4.png">
                            </div>
                            <div class="learn-list-head">
                            	NEUROSCIENCE
                            </div>
                            <div class="learn-list-data">
                            	The brain science that explains why mindfulness works
                            </div>
                        </li>
                        <li>
                        	<div class="learn-book-icon">
                            	<img src="http://innerexplorer.org/wp-content/themes/compass/images/learn-5.png">
                            </div>
                            <div class="learn-list-head">
                            	PRACTICE
                            </div>
                            <div class="learn-list-data">
                            	How to practice mindfulness with the scripts in the book or on your own
                            </div>
                        </li>
                        <li>
                        	<div class="learn-book-icon">
                            	<img src="http://innerexplorer.org/wp-content/themes/compass/images/learn-6.png">
                            </div>
                            <div class="learn-list-head">
                            	BE A HERO
                            </div>
                            <div class="learn-list-data">
                            	How to be your own superhero in times of stress 
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <section class="stories_wrap">
    <section id="testimonialsct">
      <article class="container">
        <div class="testimonialsct">
          <div class="about-author-head">
            	Images from Book
            </div> 
          <div class="slider-wrapper" style="height:580px;">
            <div class="slider slider4">
              <div>
                <div class="testimonial-slider">
                  <div class="testimonial-photo_new width550 width100p">
                    <div class="img-user"> <img src="http://innerexplorer.org/wp-content/themes/compass/images/mind-book-1.jpg"> </div>
                  </div>
                  <div class="testimonial-slider_get-strt">
                     
                  </div>
                </div>
              </div>
              <div>
                <div class="testimonial-slider">
                  <div class="testimonial-photo_new width550 width100p">
                    <div class="img-user"> <img src="http://innerexplorer.org/wp-content/themes/compass/images/mind-book-2.jpg"> </div>
                  </div>
                  <div class="testimonial-slider_get-strt">
                    
                  </div>
                </div>
              </div>
              <div>
                <div class="testimonial-slider">
                  <div class="testimonial-photo_new width550 width100p">
                    <div class="img-user"> <img src="http://innerexplorer.org/wp-content/themes/compass/images/mind-book-3.jpg"> </div>
                  </div>
                  <div class="testimonial-slider_get-strt">
                     
                  </div>
                </div>
              </div>
              <div>
                <div class="testimonial-slider">
                  <div class="testimonial-photo_new width550 width100p">
                    <div class="img-user"> <img src="http://innerexplorer.org/wp-content/themes/compass/images/mind-book-4.jpg">  </div>
                  </div>
                  <div class="testimonial-slider_get-strt">
                     
                  </div>
                </div>
              </div> 
              <div>
                <div class="testimonial-slider">
                  <div class="testimonial-photo_new width550 width100p">
                    <div class="img-user"> <img src="http://innerexplorer.org/wp-content/themes/compass/images/mind-book-5.jpg">  </div>
                  </div>
                  <div class="testimonial-slider_get-strt">
                     
                  </div>
                </div>
              </div> 
            </div>
          </div>
        </div>
      </article>
     
    </section> 
  </section>
  <section class="stories_wrap book-bg-white">
   <section id="testimonialsct">
      <article class="container">
        <div class="testimonialsct">
          <div class="about-author-head"> About the Author's </div>
          <div class="slider-wrapper slide-h-aut">
            <div class="slider slider5" >
			<div>	
				<div class="author-slide-tab">
                	<ul>
                    	<li class="bg-green-tab"><a onClick="changeSlide(1)" href="javascript:;">Laurie Grossman</a></li>
                    	<li><a href="javascript:;" onClick="changeSlide(2)">ANGELINA ALVAREZ</a></li>
                    	<li><a href="javascript:;" onClick="changeSlide(3)">MR. MUSUMECI</a></li>
                	</ul>
            	</div>
				<div class="author-herself-main">
					<div class="author-herself">
						<div class="author-herself-img">
							<img src="http://innerexplorer.org/wp-content/themes/compass/images/author-img.png">
						</div>
						<div class="author-herself-data">
							<div class="author-name">
								Laurie Grossman
							</div>
							<div class="author-share">
								<ul>
									<li><a href="https://www.facebook.com/MasterofMindfulness" class="author-facebook"></a></li>
									<li><a href="https://twitter.com/MMindfulnes" class="author-twt"></a></li>
									<li><a href="https://www.youtube.com/channel/UC7UG4ydRYfTT6HFofOTfhEg" class="author-gglp"></a></li>
                                    <li><a href="https://www.linkedin.com/in/lauriegrossman" class="author-linked"></a></li>
								</ul>
							</div>
							<!--<div class="author-sign">
								<img src="http://innerexplorer.org/wp-content/themes/compass/images/author-sign.png">
							</div>-->
						</div>
					</div>
				</div>
				<div class="author-say">
                Laurie Grossman, one of the founders of the mindfulness in education movement, has been an activist since 1975. She believes that mindfulness in schools is the tool most likely to help achieve social justice. Over the last two decades, she started two innovative programs: one that created partnerships between private and public schools, and one that brought mindfulness into schools. In 2007, as part of Park Day School’s Community Outreach Program, she and two colleagues launched a pilot program of mindfulness in an Oakland, CA, elementary school that was covered in The New York Times and on NBC. Grossman is cofounder of Mindful Schools, now one of the largest mindfulness-in-education programs in the world. She currently works with Inner Explorer, an organization focused on bringing daily mindfulness practices into schools to improve educational outcomes and the well-being of children and teachers. She is passionate about Inner Explorer because the organization has made mindfulness scalable, providing easy and immediate access to every K–12 classroom, anywhere, anytime.
				</div>
			</div>
			<div>	
				<div class="author-slide-tab">
                	<ul>
                    	<li><a href="javascript:;" onClick="changeSlide(1)">Laurie Grossman</a></li>
                    	<li class="bg-green-tab"><a href="javascript:;" onClick="changeSlide(2)">ANGELINA ALVAREZ</a></li>
                    	<li><a href="javascript:;" onClick="changeSlide(3)">MR. MUSUMECI</a></li>
                	</ul>
            	</div>
				<div class="author-herself-main">
					<div class="author-herself">
						<div class="author-herself-img">
							<img src="http://innerexplorer.org/wp-content/themes/compass/images/authorangelina.png"> 
						</div>
						<div class="author-herself-data">
							<div class="author-name">
								ANGELINA ALVAREZ
							</div>
							<div class="author-share">
								<ul>
									<li><a href="javascript:;" class="author-facebook"></a></li>
									<li><a href="javascript:;" class="author-twt"></a></li>
									<li><a href="javascript:;" class="author-gglp"></a></li>
                                    <li><a href="javascript:;" class="author-linked"></a></li>
								</ul>
							</div>
							<!--<div class="author-sign">
								<img src="http://innerexplorer.org/wp-content/themes/compass/images/author-sign.png">
							</div>-->
						</div>
					</div>
				</div>
				<div class="author-say">
                Designer Angelina Alvarez holds a degree in photography from the San Francisco Art Institute. She believes that every child should have the opportunity to grow up with a foundation of mindfulness practice. Alvarez works with Mindful Life Project in Richmond, CA, a nonprofit organization that teaches mindfulness, yoga, therapeutic art, and hip-hop/performing arts to elementary school students in underserved communities.Alvarez works with Mindful Life Project in Richmond, CA, a nonprofit organization that teaches mindfulness, yoga, therapeutic art, and hip-hop/performing arts to elementary school students in underserved communities.Alvarez works with Mindful Life Project in Richmond, CA, a nonprofit organization that teaches mindfulness, yoga, therapeutic art, and hip-hop/performing arts to elementary school students in underserved communities.
				</div>
			</div>
			<div>	
				<div class="author-slide-tab">
                	<ul>
                    	<li><a href="javascript:;" onClick="changeSlide(1)">Laurie Grossman</a></li>
                    	<li><a href="javascript:;" onClick="changeSlide(2)">ANGELINA ALVAREZ</a></li>
                    	<li class="bg-green-tab"><a href="javascript:;" onClick="changeSlide(3)">MR. MUSUMECI</a></li>
                	</ul>
            	</div>
				<div class="author-herself-main">
					<div class="author-herself">
						<div class="author-herself-img">
							<img src="http://innerexplorer.org/wp-content/themes/compass/images/author-mason.png"> 
						</div>
						<div class="author-herself-data">
							<div class="author-name">
								 MR. MUSUMECI
							</div>
							<div class="author-share">
								<ul>
									<li><a href="javascript:;" class="author-facebook"></a></li>
									<li><a href="javascript:;" class="author-twt"></a></li>
									<li><a href="javascript:;" class="author-gglp"></a></li>
                                    <li><a href="javascript:;" class="author-linked"></a></li>
								</ul>
							</div>
							<!--<div class="author-sign">
								<img src="http://innerexplorer.org/wp-content/themes/compass/images/author-sign.png">
							</div>-->
						</div>
					</div>
				</div>
				<div class="author-say">
					Mr. Musumeci has spent two decades teaching, caring, and advocating for children in New York, NY, and Oakland, CA. As teacher at Reach Academy in East Oakland since 2009, he has been a proponent of mindfulness, and was delighted when one of his students suggested the class create a mindfulness superhero. His class was comprised of twenty-six wonderful, lively, and smart fifth graders who love mindfulness. Reach Academy is a transitional K–5 school where the vast majority of students are on free and reduced lunch, and 99 percent of the students are children of color. Mr. Musumeci’s 5th Grade Class is excited to publish a book of their own about mindfulness for other kids because they have benefitted so much from the practice. His class was comprised of twenty-six wonderful, lively, and smart fifth graders who love mindfulness. Reach Academy is a transitional K–5 school where the vast majority of students are on free and reduced lunch, and 99 percent of the students are children of color. Mr. Musumeci’s 5th Grade Class is excited to publish a book of their own about mindfulness for other kids.
				</div>
			</div>
			
		    </div>
		  </div>
		 </div>
			
        </article>
    </section>
    </section>
    <section class="gallary-main-outer">
    	<div class="container">
        	<div class="about-author-head">
            	Picture Gallery
            </div>
            <div class="misc_tabs mtop20 bdr0none">
            	<div class="misc_tabar bg-none author-slide-tab">
                	<ul>
                    	<li id="mtab1" class=" selected"><a class="trial" href="javascript:showTab(1,3)">Making of the Book</a></li>
                    	<li id="mtab2" ><a class="fp" href="javascript:showTab(2,3)">Laurie's Africa Trip</a></li>
                    	<li id="mtab3" ><a class="hybrid" href="javascript:showTab(3,3)">More to Come</a></li>
                	</ul>
            	</div>
                <div class="misc_content">
                	<div id="tab1">
                    	<div class="gallary-main">
                <ul id="gallery">
                    <li><a href="http://innerexplorer.org/wp-content/themes/compass/images/making-book-1.jpg"><img src="http://innerexplorer.org/wp-content/themes/compass/images/making-book-thumb-1.jpg"></a></li>
                    <li><a href="http://innerexplorer.org/wp-content/themes/compass/images/making-book-2.jpg"><img src="http://innerexplorer.org/wp-content/themes/compass/images/making-book-thumb-2.jpg"></a></li>
                    <li><a href="http://innerexplorer.org/wp-content/themes/compass/images/making-book-3.jpg"><img src="http://innerexplorer.org/wp-content/themes/compass/images/making-book-thumb-3.jpg"></a></li>
                    <li><a href="http://innerexplorer.org/wp-content/themes/compass/images/making-book-4.jpg"><img src="http://innerexplorer.org/wp-content/themes/compass/images/making-book-thumb-4.jpg"></a></li>
                    <li><a href="http://innerexplorer.org/wp-content/themes/compass/images/making-book-5.jpg"><img src="http://innerexplorer.org/wp-content/themes/compass/images/making-book-thumb-5.jpg"></a></li>
                    <li><a href="http://innerexplorer.org/wp-content/themes/compass/images/making-book-6.jpg"><img src="http://innerexplorer.org/wp-content/themes/compass/images/making-book-thumb-6.jpg"></a></li>
                    <li><a href="http://innerexplorer.org/wp-content/themes/compass/images/making-book-7.jpg"><img src="http://innerexplorer.org/wp-content/themes/compass/images/making-book-thumb-7.jpg"></a></li>
                    <li><a href="http://innerexplorer.org/wp-content/themes/compass/images/making-book-8.jpg"><img src="http://innerexplorer.org/wp-content/themes/compass/images/making-book-thumb-8.jpg"></a></li>
                </ul>
        </div>
                    </div>
                    <div id="tab2" style="display:none;">
                    	<div class="gallary-main">
                <ul id="gallery">
                    <li><a href="http://innerexplorer.org/wp-content/themes/compass/images/Amboseli principal.jpg"><img src="http://innerexplorer.org/wp-content/themes/compass/images/Amboseli-principal-thumb.jpg"></a></li>
                    <li><a href="http://innerexplorer.org/wp-content/themes/compass/images/Kenyan Middle.jpg"><img src="http://innerexplorer.org/wp-content/themes/compass/images/Kenyan-Middle-thumb.jpg"></a></li>
                    <li><a href="http://innerexplorer.org/wp-content/themes/compass/images/kenya principal.jpg"><img src="http://innerexplorer.org/wp-content/themes/compass/images/kenya-principal-thumb.jpg"></a></li>
                    <li><a href="http://innerexplorer.org/wp-content/themes/compass/images/middle school-kids.jpg"><img src="http://innerexplorer.org/wp-content/themes/compass/images/middle-school-kids-thumb.jpg"></a></li>
                    <li><a href="http://innerexplorer.org/wp-content/themes/compass/images/Principal Ann Tayiai.jpg"><img src="http://innerexplorer.org/wp-content/themes/compass/images/Principal-Ann-Tayiai-thumb.jpg"></a></li>
                </ul>
        </div>
                    </div>
                    <div id="tab3" style="display:none;">
                    	<div class="gallary-main">
                <ul id="gallery">
                    <li><a href="http://innerexplorer.org/wp-content/themes/compass/images/Amboseli-principal.jpg"><img src="http://innerexplorer.org/wp-content/themes/compass/images/Amboseli-principal-thumb.jpg"></a></li>
                    <li><a href="http://innerexplorer.org/wp-content/themes/compass/images/Kenyan-Middle.jpg"><img src="http://innerexplorer.org/wp-content/themes/compass/images/Kenyan-Middle-thumb.jpg"></a></li>
                    <li><a href="http://innerexplorer.org/wp-content/themes/compass/images/kenya-principal.jpg"><img src="http://innerexplorer.org/wp-content/themes/compass/images/kenya-principal-thumb.jpg"></a></li>
                    <li><a href="http://innerexplorer.org/wp-content/themes/compass/images/middle-school-kids.jpg"><img src="http://innerexplorer.org/wp-content/themes/compass/images/middle-school-kids-thumb.jpg"></a></li>
                    <li><a href="http://innerexplorer.org/wp-content/themes/compass/images/Principal-Ann-Tayiai.jpg"><img src="http://innerexplorer.org/wp-content/themes/compass/images/Principal-Ann-Tayiai-thumb.jpg"></a></li>
                </ul>
        </div>
                    </div>
                </div>
            </div>
    		
        </div>
    </section>
    <section class="amazon-book-sale" id="amazon-sale">
    	<div class="amazon-head">
        	Get your copy today at these stores
        </div>
        <div class="amazon-book-buy">
        	<ul>
        		<li><a href="http://www.amazon.com/Master-Mindfulness-Superhero-Times-Stress/dp/1626254648" target="_blank"><img src="http://innerexplorer.org/wp-content/themes/compass/images/amazon-buy.png"></a></li>
                <li><a href="http://www.indiebound.org/book/9781626254640" target="_blank" ><img src="http://innerexplorer.org/wp-content/themes/compass/images/amazon-buy-2.png" ></a></li>
                <li><a href="http://www.barnesandnoble.com/w/master-of-mindfulness-laurie-grossman/1122294015?ean=9781626254640" target="_blank" ><img src="http://innerexplorer.org/wp-content/themes/compass/images/amazon-buy-3.png"></a></li>
            </ul>
        </div>
    </section>
    <!--<section class="latest-twts-new">
    	<div class="twts-head">
        	Latest Tweets
        </div>
        <div class="twts-icon">
        	<a href="javascript:;"><img src="http://innerexplorer.org/wp-content/themes/compass/images/twt-icon-new.png"></a>
        </div>
        <div class="twt-content">
        	<div class="container">
            	<div class="twt-content-inner">
        			<a href="javascript:;">@chriswray5</a> Hey Chris, please drop us a few more details via <a href="https://t.co/7ziKRSGfQf">https://t.co/7ziKRSGfQf</a> if the issue persists, Thsnks! ^TC
            	</div>
            </div>
        </div>
    </section> --> 
    <section class="stories_wrap">
    <section id="testimonialsct">
      <article class="container">
        <div class="testimonialsct">
           <div class="misc_tabar bg-none author-slide-tab" style="position: relative;z-index:2;">
                <ul> 
                
                    <li id="mtab5" class="selected"><a onClick="showTab3(1)" href="javascript:;" class="fp">Editorial Reviews</a></li>
                    <li id="mtab6"><a onClick="showTab3(2)" href="javascript:;" class="hybrid">Customer Reviews</a></li>
                </ul>
            </div>
          <div class="slider-wrapper innerslideone" style="height:1020px;">
            <div class="slider slider4" style="height:1020px;">
              <div>
              	<!--<div class="author-slide-tab">
                	<ul>
                    	<li class="bg-green-tab"><a href="javascript:;">Editional Reviews</a></li>
                    	<li><a href="javascript:;">Customer Reviews</a></li>
                	</ul>
            	</div>-->
                <div class="testimonial-slider">
						<div class="book-testimonial-inner">
							<ul>
                            	<li>
									<div class="book-client-img-right">
										<img src="http://innerexplorer.org/wp-content/themes/compass/images/review-Tim-Ryan.png">
									</div>
									<div class="book-client-right-content">
										<div class="client-name-test">
											Tim Ryan
										</div>
										 <div class="book-client-say">
											“Slowly but surely, a quiet revolution is taking place across the county. More and more folks are turning to the practice of mindfulness to cope with the stresses of modern life. Time and time again we’ve seen mindfulness deployed with great success in boardrooms, hospitals, and classrooms. But, as this book illustrates, mindfulness isn’t just for the adults—students too, no matter the age, can benefit greatly from it. This proven practice can help our kids face a world of challenges with clarity and focus. The more our students know the ins and outs of how their own minds work, the better prepared they’ll be to lead a fulfilling and productive life. I am extremely heartened to see Mr. Musumeci’s fifth-grade class taking on this project.”
										</div>
									</div>
								   
								</li>
								<li>
									<div class="book-client-img-left">
										<img src="http://innerexplorer.org/wp-content/themes/compass/images/review-Gina.png">
									</div>
									<div class="book-client-left-content">
										<div class="client-name-test">
											Gina M. Biegel
										</div>
										 <div class="book-client-say">
											 “Given the landscape of today’s teen’s mental and physical health difficulties, the earlier you can plant the seeds of mindfulness the stronger the roots become and the sprouts more prodigious. After working with thousands of teens in education and therapy, I believe that if they had been offered these skills earlier, they would have fared better and had stronger roots from which to approach and manage the landscape of today’s adolescent. Master of Mindfulness gets it! It gets that these skills know no age boundaries, class boundaries, or race boundaries. Mindfulness helps children to fare well in this growing, fast-paced, and technologically stimulated lifescape that we call the 21st century. Bravo Grossman, Alvarez, Musumeci, and most prominently the 5th grade children!”
										</div>
									</div>
								   
								</li>
                                <li>
									<div class="book-client-img-right">
										<img src="http://innerexplorer.org/wp-content/themes/compass/images/review-Linda.png">
									</div>
									<div class="book-client-right-content">
										<div class="client-name-test">
											Linda Graham
										</div>
										<div class="book-client-say">
											“Master of Mindfulness brings such joy to the reader—students, teachers, parents—by showing us the power of mindfulness to help young people cope with their own thoughts, their peers, their world—more resiliently, more authentically, more creatively. These mindfulness-based tools mature students’ capacities to skillfully navigate their increasingly complex world as adults. A true gift.”
										</div>
									</div>
									
								</li>
                                <li>
									<div class="book-client-img-left">
										<img src="http://innerexplorer.org/wp-content/themes/compass/images/review-Majorie.png">
									</div>
									<div class="book-client-left-content">
										<div class="client-name-test">
											Marjorie Chaset
										</div>
										 <div class="book-client-say">
											 “Safety is an embodied place that lives inside our physical self. Learning to experience safety is the first step in healing the behavioral and emotional effects of trauma and profoundly overwhelming life experiences. If we want to teach kids how to take charge of their lives, how to make wise choices, how to be empowered to realize their dreams, we first need to teach them how to feel safe. The transformative practice that the teachers and students describe in Master of Mindfulness is the cornerstone of building an internal safe place. Give a copy of this book to every kid you know!"
										</div>
									</div>
								   
								</li>
                                
							</ul>
						</div> 
                </div>
              </div>
              <div>
                <div class="testimonial-slider">
						<div class="book-testimonial-inner">
							<ul>
								<li>
									<div class="book-client-img-right">
										<img src="http://innerexplorer.org/wp-content/themes/compass/images/review-Daniel.png">
									</div>
									<div class="book-client-right-content">
										<div class="client-name-test">
											Daniel J. Siegel
										</div>
										<div class="book-client-say">
											“Imagine being able to feel clear and calm, even when things get tough. That’s what this wonderful book can teach you right now—how to become a Master of Mindfulness! Kids, teens, and even adults can all strengthen their minds by learning how to focus attention in an open way on what is happening right now. Get ready and enjoy!”
										</div>
									</div>
									
								</li>
                                <li>
									<div class="book-client-img-left">
										<img src="http://innerexplorer.org/wp-content/themes/compass/images/review-sarastone.png">
									</div>
									<div class="book-client-left-content">
										<div class="client-name-test">
											Sara Stone
										</div>
										<div class="book-client-say">
											“As a leader in a large urban district, I have seen firsthand the positive impact of students having mindfulness experiences throughout the day. I have witnessed students, after learning the tools of mindfulness, stop themselves in a moment of stress, and practice breathing and visualizing with great success. This book, Master of Mindfulness, written by students for students, helps children understand how to use the tools of mindfulness on a daily basis. I highly recommend investing in this practice each and every day with our students so that they can be resilient and successful in life.”
										</div>
									</div>
									
								</li>
                                <li>
									<div class="book-client-img-right">
										<img src="http://innerexplorer.org/wp-content/themes/compass/images/review-Sam-piha.png">
									</div>
									<div class="book-client-right-content">
										<div class="client-name-test">
											Sam Piha
										</div>
										 <div class="book-client-say">
											“The latest research in education and youth development talks a lot about the importance of character building, grit, social-emotional learning, non-cognitive skills, etc., to prepare young people for success in school, work, and life. This research names important skills such as awareness of one’s feelings, empathy, and the ability to control one’s behavior. But how do you promote these skills? In our work supporting the quality of expanded learning programs, there is no better practice than teaching young people the skills of mindfulness. We believe that this is an important book to build awareness about the power of mindfulness programs for schools and youth program leaders.”
										</div>
									</div>
								   
								</li>
                                <li>
									<div class="book-client-img-left">
										<img src="http://innerexplorer.org/wp-content/themes/compass/images/review-scott-suyan.png">
									</div>
									<div class="book-client-left-content">
										<div class="client-name-test">
											Scott Duyan
										</div>
										<div class="book-client-say">
											“Master of Mindfulness is a child-centric and beginner’s introduction to the practice of mindfulness. Written by fifth graders with a little help from their mindful adult friends, Master of Mindfulness links a child's need to be mindful with practical applications for how a mindfulness practice might be used in the daily life of a child. How can mindfulness help in dealing with the powerful emotions that can sometimes overwhelm children? How can mindfulness help a young athlete or musician? How can mindfulness help a child deal with a sibling during a disagreement? And more. Full of funny illustrations and photos of children, this book would be helpful to any adult or teacher hoping to introduce mindfulness to children in a language that they understand and can use.”
										</div>
									</div>
									
								</li>
                                
							</ul>
						</div>
                </div>
              </div> 
              <div>
                <div class="testimonial-slider">
						<div class="book-testimonial-inner">
							<ul>
                            	<li>
									<div class="book-client-img-right">
										<img src="http://innerexplorer.org/wp-content/themes/compass/images/review-Daniel-Rech.png">
									</div>
									<div class="book-client-right-content">
										<div class="client-name-test">
											Daniel Rechtschaffen
										</div>
										<div class="book-client-say">
											“This wonderful book is full of mindful wisdom taught from students who have used these profound practices themselves and are now teaching others. These simple and profound lessons will help youth to find balance, happiness, and lifelong mindfulness tools.”
										</div>
									</div>
									
								</li>
                                <li>
									<div class="book-client-img-left">
										<img src="http://innerexplorer.org/wp-content/themes/compass/images/review-Steven-Hickman.png">
									</div>
									<div class="book-client-left-content">
										<div class="client-name-test">
											Steven D. Hickman
										</div>
										<div class="book-client-say">
											“A delightful and masterful way to meet kids where they are when it comes to mindfulness. This is a book that truly honors ‘inner wisdom’ in a profound way by trusting that those who practice mindfulness (whether they are kids or adults) know the topic best. Using the defining theme of being our own ‘mindfulness superhero,’ Grossman, Alvarez, and the fifth graders in Mr. Musumeci’s class have created an engaging and enlightening resource for everyone. I’m going to start calling on my own shark fin regularly from now on!”
										</div>
									</div>
									
								</li>
                            </ul>
                        </div>
                </div>
               </div>             
            </div>
          </div>
          
          
          <!---   Inner Slide Two   --->
          
          <div class="slider-wrapper innerslidetwo" style="height:1020px;">
            <div class="slider slider4" style="height:1020px;">
              <div>
              	<!--<div class="author-slide-tab">
                	<ul>
                    	<li class="bg-green-tab"><a href="javascript:;">Editional Reviews</a></li>
                    	<li><a href="javascript:;">Customer Reviews</a></li>
                	</ul>
            	</div>-->
                <div class="testimonial-slider">
						<div class="book-testimonial-inner">
							<ul>
								<li>
									<div class="book-client-img-left">
										<img src="http://innerexplorer.org/wp-content/themes/compass/images/default-customer.png">
									</div>
									<div class="book-client-left-content">
										<div class="client-name-test">
											Jackie Krentzman<img src="http://innerexplorer.org/wp-content/themes/compass/images/book-star-2.png">
										</div>
										 <div class="book-client-say">
											 “This book is essential reading for any teacher, parent or young child. It gives the reader an understanding of the power of mindful meditation and how it impacts children in a positive way. The storytelling is engaging and kids will love it!”
										</div>
									</div>
								   
								</li>
                                <li>
									<div class="book-client-img-right">
										<img src="http://innerexplorer.org/wp-content/themes/compass/images/default-customer.png">
									</div>
									<div class="book-client-right-content">
										<div class="client-name-test">
											Grateful Grandma<img src="http://innerexplorer.org/wp-content/themes/compass/images/book-star-1.png">
										</div>
										<div class="book-client-say">
											“This book is written by a class of fifth graders to be used by other children. I think the idea of teaching and using Mindfulness to children who have difficulty controlling their feelings and actions is a great idea. This book could be used as a tool by CYWs, teachers and even parents. It gives several examples of when Mindfulness is used by the authors, then at the end goes through some exercises that should be used to practise it until you are comfortable with the techniques. The pictures are a combination of photographs and drawings. I think this book would be valuable in all school libraries.”
										</div>
									</div>
									
								</li>
                                <li>
									<div class="book-client-img-left">
										<img src="http://innerexplorer.org/wp-content/themes/compass/images/default-customer.png">
									</div>
									<div class="book-client-left-content">
										<div class="client-name-test">
											Amazon Customer<img src="http://innerexplorer.org/wp-content/themes/compass/images/book-star-2.png">
										</div>
										 <div class="book-client-say">
											 "This book is a must have for parents. I am a mother of two, Mindfulness has help both of them through alot. The illustrations in this book are wonderful and kids can relate. The back of the book, give great instructions on mediation."
										</div>
									</div>
								   
								</li>
                                <li>
									<div class="book-client-img-right">
										<img src="http://innerexplorer.org/wp-content/themes/compass/images/default-customer.png">
									</div>
									<div class="book-client-right-content">
										<div class="client-name-test">
											Amazon Customer<img src="http://innerexplorer.org/wp-content/themes/compass/images/book-star-2.png">
										</div>
										<div class="book-client-say">
											“Love the Art in the Book brings me back to my childhood. Great read for anyone with a child.”
										</div>
									</div>
									
								</li>
							</ul>
						</div> 
                </div>
              </div>
              <!--<div>
                <div class="testimonial-slider">
						<div class="book-testimonial-inner">
							<ul>
								<li>
									<div class="book-client-img-left">
										<img src="http://innerexplorer.org/wp-content/themes/compass/images/book-client-1.png">
									</div>
									<div class="book-client-left-content">
										<div class="client-name-test">
											Daniel J. Siegel<img src="http://innerexplorer.org/wp-content/themes/compass/images/book-star-1.png">
										</div>
										 <div class="book-client-say">
											“Imagine being able to feel clear and calm, even when things get tough. That’s what this wonderful book can teach you right now—how to become a Master of Mindfulness! Kids, teens, and even adults can all strengthen their minds by learning how to focus attention in an open way on what is happening right now. Get ready and enjoy!”
										</div>
									</div>
								   
								</li><li>
									<div class="book-client-img-right">
										<img src="http://innerexplorer.org/wp-content/themes/compass/images/book-client-2.png">
									</div>
									<div class="book-client-right-content">
										<div class="client-name-test">
											Daniel Rechtschaffen<img src="http://innerexplorer.org/wp-content/themes/compass/images/book-star-2.png">
										</div>
										<div class="book-client-say">
											“This wonderful book is full of mindful wisdom taught from students who have used these profound practices themselves and are now teaching others. These simple and profound lessons will help youth to find balance, happiness, and lifelong mindfulness tools.”
										</div>
									</div>
									
								</li>
                                <li>
									<div class="book-client-img-left">
										<img src="http://innerexplorer.org/wp-content/themes/compass/images/book-client-1.png">
									</div>
									<div class="book-client-left-content">
										<div class="client-name-test">
											Daniel J. Siegel<img src="http://innerexplorer.org/wp-content/themes/compass/images/book-star-1.png">
										</div>
										 <div class="book-client-say">
											“Imagine being able to feel clear and calm, even when things get tough. That’s what this wonderful book can teach you right now—how to become a Master of Mindfulness! Kids, teens, and even adults can all strengthen their minds by learning how to focus attention in an open way on what is happening right now. Get ready and enjoy!”
										</div>
									</div>
								   
								</li><li>
									<div class="book-client-img-right">
										<img src="http://innerexplorer.org/wp-content/themes/compass/images/book-client-2.png">
									</div>
									<div class="book-client-right-content">
										<div class="client-name-test">
											Daniel Rechtschaffen<img src="http://innerexplorer.org/wp-content/themes/compass/images/book-star-2.png">
										</div>
										<div class="book-client-say">
											“This wonderful book is full of mindful wisdom taught from students who have used these profound practices themselves and are now teaching others. These simple and profound lessons will help youth to find balance, happiness, and lifelong mindfulness tools.”
										</div>
									</div>
									
								</li>
							</ul>
						</div>
                </div>
              </div> -->
            </div>
          </div>
          
          <!--   inner slide two block -->
        </div>
      </article>
    </section>
    </section>
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
                    <div class="master-mind-sub-btn">
                		<a href="https://www.youtube.com/channel/UC7UG4ydRYfTT6HFofOTfhEg" target="_blank" ><img src="http://innerexplorer.org/wp-content/themes/compass/images/yousub-btn.png"></a>
                	</div>
                </div>
            </div>
        </div>
    </section>
   	<%-- <section class="contactSct" id="contact">
    <div class="containerSmall">
      <h2 class="head-font-light">Contact Laurie</h2>
      
      <div class="green_line_btm"></div>       
       <h3>Fill out the form below to contact author.</h3>
      <div class="clr"></div>
     
		<div role="form" class="wpcf7" id="wpcf7-f660-o1" lang="en-US" dir="ltr">
<div class="screen-reader-response"></div>
<form action="/master-of-mindfulness/#wpcf7-f660-o1" method="post" class="wpcf7-form" novalidate="novalidate">
<div style="display: none;">
<input type="hidden" name="_wpcf7" value="660" />
<input type="hidden" name="_wpcf7_version" value="4.3" />
<input type="hidden" name="_wpcf7_locale" value="en_US" />
<input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f660-o1" />
<input type="hidden" name="_wpnonce" value="3012def65e" />
</div>
<div class="ContactForm">
<ul>
<li>
<div class="contact-row">
<div class="outer-field-wrap">
<div class="outer-field">
				   <span class="wpcf7-form-control-wrap your-name"><input type="text" name="your-name" value="" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="First Name" /></span>
                </div>
</p></div>
</p></div>
</li>
<li>
<div class="contact-row">
<div class="outer-field-wrap">
<div class="outer-field">
				  <span class="wpcf7-form-control-wrap last-name"><input type="text" name="last-name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Last Name" /></span>
                </div>
</p></div>
</p></div>
</li>
<li>
<div class="contact-row">
<div class="outer-field-wrap">
<div class="outer-field">
                  <span class="wpcf7-form-control-wrap email"><input type="text" name="email" value="" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Email" /></span>
                </div>
</p></div>
</p></div>
</li>
<li>
<div class="contact-row">
<div class="outer-field-wrap">
<div class="outer-field">
                 <span class="wpcf7-form-control-wrap tel-774"><input type="text" name="tel-774" value="" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Mobile" /></span>
                </div>
</p></div>
</p></div>
</li>
</ul>
<div class="AreaContact">
          <span class="wpcf7-form-control-wrap your-message"><textarea name="your-message" cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea" aria-invalid="false" placeholder="Message"></textarea></span>
        </div>
<div class="btns-outer">
          <input type="submit" value="Submit" class="wpcf7-form-control wpcf7-submit submit-btn" />
       </div>
</p></div>
<div class="wpcf7-response-output wpcf7-display-none"></div></form></div>        
    </div>
	
  </section> --%>
    <!--inner_wrapper ends--> 
  <div class="newpopup"></div>  
 

 
</div>
<div style="display:none" class="fancybox-hidden">
	<div id="inlinediv" class="product-page product-pop-up">
		<div class="row">
			<div class="col-md-12 col-sm-6 col-xs-3">
				<div class="product-main-image">
					<div id="message"></div>
						<div id="recorder">
							<!-- <b>We are the Innovation Accelerators</b> --><!-- <br><br> -->
								Welcome to the Inner Explorer website.  These Terms of Use and Conditions (“Terms”) govern your use of the Inner Explorer (“our”) website (“Site”).  Please read the terms in full before using our Site.  By accepting these Terms, or by using this Site, you agree to be legally bound by these Terms, and our Privacy Policy and Notice of Privacy Practices. If you do not agree to these terms, please do not use our Site.  We reserve the right to modify these Terms at any time without prior notice, and your use of the Site binds you to the changes made.  We do occasionally update these terms so please refer to them in the future.<br><br>
							<b>Access to Site</b><br>
								You will be able to access our Site without having to register any details with us.<br><br>
							<b>Use of Site</b><br>
								Our Site, images, data, text, audios, videos, photographs, custom graphics, logos, button icons, descriptions and all other material provided and the collection and compilation and assembly thereof are the exclusive property of Inner Explorer or its parent, and are protected by U.S. and international copyright laws.
The contents of our Site may be used for informational purposes only.  Any other use of such contents, including the reproduction, modification, distribution, transmission, republication, display or performance of the contents without our prior written consent is expressly forbidden.
Any other trademarks or service marks appearing anywhere on our Site are the property of their respective owners.  To the extent any product name or logo does not appear with a trademark (™) does not constitute a waiver of any and all intellectual property rights that Inner Explorer or its businesses has established in any of its products, features, or service names or logos.
You may not use, reproduce, modify, transmit, display, publish, sell, create derivative works, or distribute by any means, method, or process whatsoever, now known or hereafter developed, any content of this Site for commercial profit or gain.  Nothing in these Terms or on the Site shall be construed as conferring any intellectual property or other proprietary rights to You.  You agree to observe copyright and other applicable laws and may not use the content in any manner that infringes or violates the rights of any person or entity.  We hold all rights to the content on this website.
As a condition of your use of the Site, you will not use the Site, or any contents or services, for any purpose that is unlawful in any applicable jurisdiction where our Site are being used, or prohibited by these terms, conditions, and notices, and you agree to abide by the terms and conditions set forth in the “User Conduct” section. You may not use the Site contents or services in any manner that could damage, disable, overburden, or impair any of our equipment or interfere with any other party’s use and enjoyment of the Site, or any contents or services.  You may not attempt to gain access to any portion of the Site, or any of its contents or services, other than those for which you are authorized.
While every effort is made to ensure the timeliness and accuracy of the Site content and services, we  make no warranties either express or implied, and assume no liability or responsibility for the completeness, use, accuracy, reliability, correctness, timeliness or usefulness, of any of the results obtained from its use.
We make no representation or warranty, express or implied, with respect to the content of the Site, or links to other sites, including but not limited to accurateness, completeness, correctness, timeliness or reliability.  We make no representation or warranty regarding the merchantability or fitness for a particular purpose or use with respect to any content or services whatsoever that may be accessed through this Site, or the results to be obtained from using the Site.  We make no representation or warranty that the Site or content is free from defects or viruses.  Your use of external links and third-party websites is at your own risk and subject to the terms and conditions of use for such links and sites.
While every effort is made to ensure that all content provided on the Site does not contain computer viruses and/or harmful materials, you should take reasonable and appropriate precautions to scan for computer viruses or otherwise protect your computer and you should ensure that you have a complete and current backup of the applicable items on your computer.  We disclaim any liability for the need for services or replacing equipment or data resulting from your use of the Site.  While every effort is made to ensure smooth and continuous operation, we do not warrant the Site will operate error free.
<br><br>
<b>Site Uptime</b><br>
								We take all reasonable steps to ensure that our Site is available 24 hours every day, 365 days per year. However, websites do sometimes encounter downtime due to server and other technical issues. Therefore, we will not be liable if this Site is unavailable at any time.
Our Site may be temporarily unavailable due to issues such as system failure, maintenance or repair, or for reasons beyond our control. Where possible, we will try to give our users advance warning of maintenance issues, but shall not be obliged to do so.
<br><br>
<b>User Conduct</b><br>
								Any material you send or post to our Site shall be considered non-proprietary and non-confidential.  We do not collect or store any personally identifiable information about you while using our Site but please do not send any such information to us.  See also our Privacy Policy and Notice of Privacy Practices, which can be found here.
When using our Site, you shall not post or send to or from the Site:
(a) content for which you have not obtained all necessary consents;
(b) content that is discriminatory, obscene, pornographic, defamatory, liable to incite racial hatred, in breach of confidentiality or privacy, which may cause annoyance or inconvenience to others, which encourages or constitutes conduct that would be deemed a criminal offense, give rise to a civil liability, or otherwise is contrary to the law in any applicable jurisdiction where our Site is being used;
(c)  content which is harmful in nature including, and without limitation, computer viruses, Trojan horses, corrupted data, or other potentially harmful software or data.
We will fully cooperate with any law enforcement authorities or court order requiring us to disclose the identity or other details or any person posting materials to our Site in breach of the this Section.
You shall not use our Site while distracted or preoccupied, such as when operating a motor vehicle.  You should access our Site only with due regard for your own safety and the safety of others.
<br><br>
<b>Links to and from Third Party Websites</b><br>
								Any links furnished on our Site may allow you to leave our Site.  These third party websites are not under our control and we disclaim any responsibility for the contents of such linked sites or any link(s) contained in any such linked site(s) or any changes or updates to any of these sites.  We further disclaim any responsibility for any form of transmission received from any linked third party website or advertising.  If we provide these links to you, it is done simply as a convenience to you and inclusion of any link herein shall in no way be construed as an endorsement by us of the site(s). Additionally, we do not collect or process your credit/debit card payment information.  All payment data is collected and processed through a third party vendor.
If you would like to link to our Site, you may only do so on the basis that you link to, but do not replicate, any page of our Site, and subject to the following conditions:
(a) you do not in any way imply that we are endorsing any services or products unless this has been specifically agreed with us;
(b) you do not misrepresent your relationship with us or present any false information about us;
(c) you do not link from a website that is not owned by you; and
(d) your website does not contain content that is offensive, controversial, infringes any intellectual property rights or other rights of any other person or does not comply in any way with the law of the United States of America.
If you choose to link our website in breach of this Section, you shall fully indemnify us for any loss or damage suffered as a result of your actions.
<br><br>
<b>Disclaimers</b><br>
								All information on our Site is of a general nature and is furnished for your knowledge and understanding and as an informational resource only.  The documents and any related graphics published on this server could include technical inaccuracies or typographical errors.  Changes are periodically added to the information contained on our Site.  We may make improvements and/or changes to any of the products depicted or described herein at any time.  We expressly disclaim any responsibility or liability for any adverse consequences or damages resulting from your use of the Site or reliance on the information from either.
THE SITE IS PROVIDED ON AN “AS IS” AND “AS AVAILABLE” BASIS.  WE MAKE NO WARRANTIES, EXPRESS OR IMPLIED, REPRESENTATIONS OR ENDORSEMENTS WHATSOEVER WITH REGARD TO ANY PRODUCTS, INFORMATION OR SERVICE PROVIDED THROUGH THIS SITE, INCLUDING, TITLE, NON-INFRINGEMENT, OR ANY OTHER WARRANTY, CONDITION, GUARANTY, OR REPRESENTATION, WHETHER ORAL OR IN WRITING, OR IN ELECTRONIC FORM.
<br><br>
<b>Limitation of Liability</b><br>
								YOUR USE OF OUR SITE IS ENTIRELY AT YOUR OWN RISK. WE WILL NOT BE RESPONSIBLE TO YOU OR TO ANY THIRD PARTIES FOR ANY DIRECT OR INDIRECT, INCIDENTAL, CONSEQUENTIAL, SPECIAL, OR PUNITIVE DAMAGES OR LOSSES OR INJURY YOU MAY INCUR IN CONNECTION WITH YOUR USE OR INABILITY TO USE THE SITE OR THE PRODUCTS, OR YOUR RELIANCE ON OR USE OF THE SITE, THE INFORMATION, OR SERVICES PROVIDED, OR THAT RESULT FROM MISTAKES, OMISSIONS, INTERRUPTIONS, DELETIONS OR ANY FAILURE OF PERFORMANCE, OR ANY OF THE DATA OR OTHER MATERIALS TRANSMITTED THROUGH OR RESIDING ON OUR SITE, REGARDLESS OF THE TYPE OF CLAIM OR THE NATURE OF THE CAUSE OF ACTION, EVEN IF WE HAVE ADVISED OF THE POSSIBILITY OF SUCH DAMAGE OR LOSS.
<br><br>
<b>Indemnification</b><br>
								You agree to defend, indemnify, and hold us, our officers, directors, employees, volunteers, agents, licensors, and suppliers, harmless from and against any claims, actions or demands, liabilities and settlements including without limitation, reasonable legal and accounting fees, resulting from or alleged to result from, your use of and access to the Site or your violation of these Terms or your violation of any third party right, including without limitation any trademark, copyright or other proprietary or privacy right.
<br><br>
<b>Assignment</b><br>
								These Terms, and any rights and licenses granted hereunder, may not be transferred or assigned by you.
<br><br>
<b>Applicable Law</b><br>
								We make no representations that the content or the Site are appropriate or may be used or downloaded outside the United States. Access to the Site and/or the content may not be legal in certain countries outside the United States.  If you access the Site from outside the United States, you do so at your own risk and are responsible for compliance with the laws of the jurisdiction from which you access the website.
Our Site is created and controlled in the Commonwealth of Massachusetts, United States of America.  The Site, and its contents, and any disputes arising therefrom shall be construed and interpreted under the laws of the Commonwealth of Massachusetts, and applicable United States federal laws.  Use of our Site constitutes agreement of the user to the jurisdiction of the state and federal courts located therein.
Our Site is subject to the United States export control laws and regulations, and may be subject to export or import regulations in other countries. You agree to strictly comply with all such laws and regulations and acknowledge that you have the responsibility to obtain authorization to export, re-export, or import of any data on our Site, as may be required.
<br><br>
<b>Our Contact Information</b><br>
<p>Inner Explorer</p>
<p>430 Franklin Village Dr. #325</p>
<p>Franklin, MA, 02038</p>
<p>Phone: 888-466-9732</p>
<p>Email: info@innerexplorer.org</p>
<br><br>

								
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<footer>
  <div class="container">
    <div class="footerLeft">
      <p>Copyright © 2016 Inner Explorer</p>
    </div>
    <div class="footerRight">
      <ul>
        <li><a class="fancybox-inline" href="#inlinediv">Privacy Policy</a></li>
        <li><a class="fancybox-inline" href="#inlinediv">Terms & Conditions</a></li>
      </ul>
    </div>
  </div>

 
</footer>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> 
<!-- Map Script  -->
<script src="http://innerexplorer.org/wp-content/themes/compass/js/jquery.vmap.js" type="text/javascript"></script>   
<script src="http://innerexplorer.org/wp-content/themes/compass/js/jquery.vmap.usa.js" type="text/javascript"></script>
<script src="http://innerexplorer.org/wp-content/themes/compass/js/jquery.vmap.sampledata.js" type="text/javascript"></script>
<!-- Map Script  -->	
 <script src="http://innerexplorer.org/wp-content/themes/compass/js/jquery.counterup.js"></script> 
<script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script> 
<script language="javascript" type="text/javascript" src="http://innerexplorer.org/wp-content/themes/compass/js/tab.js" ></script> 
<script src="http://innerexplorer.org/wp-content/themes/compass/js/jquery.cookies.js" type="text/javascript"></script>
<script language="javascript">
	 
	function showTab(current,max){
		for (i=1;i<=max;i++){
			getMyHTMLElement('tab' + i).style.display = 'none';
			getMyHTMLElement('mtab' + i).className = '';
		}
		getMyHTMLElement('tab' + current).style.display = '';
		getMyHTMLElement('mtab' + current).className = 'selected';
	}
	
	function showTab3(slide){
		 
		if(slide==1){
			$('.innerslideone').css('display','block');
			$('.innerslidetwo').css('display','none');
			$('#mtab6').removeClass('selected');
			$('#mtab5').addClass('selected');
		}else if(slide==2){
			$('.innerslideone').css('display','none');
			$('.innerslidetwo').css('display','block');
			$('#mtab5').removeClass('selected');
			$('#mtab6').addClass('selected');
		}
	}
			 
	function audioPlay(tracknumber){
		$.each($('audio'), function () {
			this.pause();
		});
		
		var audio = $('audio')[tracknumber];
		if (audio.paused){
			audio.play();
		} else {
			audio.pause();
		}
		return true;
	} 
	function audioPause(){
		$.each($('audio'), function () {
			this.pause(); 
		});  
		
		return true;
	} 
	$(function(){
		
		/*
		$("#track1").click(function(){
				var audio = $('audio')[0];
				if (audio.paused){
					audio.play();
				} else {
					audio.pause();
				}
		});
		$("#track2").click(function(){
				var audio = $('audio')[1];
				if (audio.paused){
					audio.play();
				} else {
					audio.pause();
				}
		});
		$("#track3").click(function(){
				var audio = $('audio')[2];
				if (audio.paused){
					audio.play();
				} else {
					audio.pause();
				}
		});
		$("#track4").click(function(){
				var audio = $('audio')[3];
				if (audio.paused){
					audio.play();
				} else {
					audio.pause();
				}
		});
		*/
		 
	});
	
    jQuery(document).ready(function( $ ) {
		setTimeout(function(){
		 $('.innerslidetwo').css('display','none');
		}, 4000);
		
		/*
    	var pageID = '385';
 
    	if(pageID != '555'){
			if($.cookie("url")!="http://innerexplorer.org" || typeof $.cookie("url")==="undefined"){ 
				$.cookie("url", "http://innerexplorer.org", { expires : 10 });
				window.location.replace("http://innerexplorer.org/ie/splash1");
			} 
 
		}
		*/
		
        $(".login_panel .search-submit").val('');
		
		$('.counter').counterUp({
            delay: 10,
            time: 1000
        });
		 
		$('.trackplay').click(function(){
			$.each($('.trackplay'), function () {
				$(this).attr('src','http://innerexplorer.org/wp-content/themes/compass/images/play-demo.png');
							
			}); 
			
			number = $(this).attr('numb');
			audioplayer = $(this).attr('audioplay');
			
			if(parseInt(audioplayer)==0){
				audioPlay(number); 
				$.each($('.trackplay'), function () {
					$(this).attr('audioplay',0);
				});
				$(this).attr('audioplay',1);
				$(this).attr('src','http://innerexplorer.org/wp-content/themes/compass/images/pause-demo.jpg');
			}else{
				audioPause(); 
				$.each($('.trackplay'), function () {
					$(this).attr('audioplay',0);
				});
				//$(this).attr('src','http://innerexplorer.org/wp-content/themes/compass/images/play-demo.png');
			}
			
			//$(this).attr('src','http://innerexplorer.org/wp-content/themes/compass/images/play-pause.png');
		});
		 
		$('.learnclass').click(function(){ 
			var newID = $(this).attr('news_id');
			var postType = $(this).attr('postType');
			var action = $(this).attr('action');
			$.ajax({
				url: ajaxurl,
				data: {
					'action':action,
					'newID' : newID,
					'postType':postType
				},
				success:function(data) {
					// This outputs the result of the ajax request
					$(".newpopup").show();	
					$('.newpopup').html('');
					$('.newpopup').html(data);
				},
				error: function(errorThrown){
					console.log(errorThrown);
				}
			});    
		});		
		
		
		$('.mindfullnesspopup').click(function(){ 
			var popuid = $(this).attr('popuid');
			var data = $('#'+popuid).html();	 
			// This outputs the result of the ajax request
			$(".newpopup").show();	
			$('.newpopup').html('');
			$('.newpopup').html(data);				 
		});
		
		
    });
    
    function showPopUpVideo(data) {
			var data = $('.'+data).html();
			$(".newpopup").show();	
			$('.newpopup').html('');
			$('.newpopup').html(data);	
	}
	
	function showPopUpVideoadd(data,src) {
			$("#addvideolink").attr("src",src);
			var data = $('.'+data).html();
			$(".newpopup").show();	
			$('.newpopup').html('');
			$('.newpopup').html(data);	
	}
</script> 
<script src="http://innerexplorer.org/wp-content/themes/compass/js/jquery.easing.1.3.js"></script> 
<script src="http://innerexplorer.org/wp-content/themes/compass/js/jquery.anyslider.js"></script> 
<script src="http://innerexplorer.org/wp-content/themes/compass/js/jquery.poptrox.min.js"></script>
 
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
$(function() {
		
		var foo = $('#gallery');
		foo.poptrox({
			usePopupCaption: true
		});
	
	});
  
  </script> 
<script src="http://innerexplorer.org/wp-content/themes/compass/js/jquery.daisynav.min.js"></script> 
<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$.daisyNav();
    
	});
	</script> 
<script type="text/javascript" src="http://innerexplorer.org/wp-content/themes/compass/js/jquery.flexisel.js"></script> 
<script defer src="http://innerexplorer.org/wp-content/themes/compass/js/jquery.flexslider.js"></script> 


<script type="text/javascript">
    $(function(){
    //  SyntaxHighlighter.all();
    });
	
	$("#flexiselDemo3").flexisel({ 
        visibleItems: 4,
        animationSpeed: 1000,
        autoPlay: true,            
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
	$("#flexiselDemo4").flexisel({
        visibleItems: 3,
        
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
	
	
        $('.slider3').anyslider({
			animation: 'fadeSlide',
			easing: 'easeInOutExpo',
			interval:0,
			keyboardNav: false,
			speed: 750
        });
        
        $('.slider4').anyslider({
			animation: 'fadeSlide',
			easing: 'easeInOutExpo',
			interval:0,
			keyboardNav: false,
			speed: 750
        });
		
		slider5 = $('.slider5').anyslider({
			animation: 'fadeSlide',
			easing: 'easeInOutExpo',
			interval:0,
			keyboardNav: false,
			speed: 750
        });
		
		 
        /*  
        $('.slider-wrapper').click(function(){
			alert('adf');
			var gg1 = slider4.data('anyslider');
			gg1.goTo(2);
		});
		*/
		 
    });
	
	function changeSlide(slide){
		var gg1 = slider5.data('anyslider');
		gg1.goTo(slide);	
	}
    </script> 
<script type="text/javascript" src="http://innerexplorer.org/wp-content/themes/compass/js/jquery.sticky.js"></script> 
<script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
      setTimeout(function() {
        $('.slider2').anyslider();
	},1000);
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
			  scrollTop: target.offset().top-80
			}, 1000);
			return false;
		  }
		}
	  });
  });
  </script>


        <meta http-equiv="imagetoolbar" content="no"><!-- disable image toolbar (if any) -->
        <script type="text/javascript">
            /*<![CDATA[*/
            document.oncontextmenu = function() {
                return false;
            };
            document.onselectstart = function() {
                if (event.srcElement.type != "text" && event.srcElement.type != "textarea" && event.srcElement.type != "password") {
                    return false;
                }
                else {
                    return true;
                }
            };
            if (window.sidebar) {
                document.onmousedown = function(e) {
                    var obj = e.target;
                    if (obj.tagName.toUpperCase() == 'SELECT'
                            || obj.tagName.toUpperCase() == "INPUT"
                            || obj.tagName.toUpperCase() == "TEXTAREA"
                            || obj.tagName.toUpperCase() == "PASSWORD") {
                        return true;
                    }
                    else {
                        return false;
                    }
                };
            }
            document.ondragstart = function() {
                return false;
            };
            /*]]>*/
        </script>
        <script type='text/javascript' src='http://innerexplorer.org/wp-content/plugins/bbpress/templates/default/js/editor.js?ver=2.5.8-5815'></script>
<script type='text/javascript' src='http://innerexplorer.org/wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js?ver=3.51.0-2014.06.20'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var _wpcf7 = {"loaderUrl":"http:\/\/innerexplorer.org\/wp-content\/plugins\/contact-form-7\/images\/ajax-loader.gif","sending":"Sending ..."};
/* ]]> */
</script>
<script type='text/javascript' src='http://innerexplorer.org/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=4.3'></script>
<script type='text/javascript' src='http://innerexplorer.org/wp-content/themes/compass/js/skip-link-focus-fix.js?ver=20141010'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var screenReaderText = {"expand":"<span class=\"screen-reader-text\">expand child menu<\/span>","collapse":"<span class=\"screen-reader-text\">collapse child menu<\/span>"};
/* ]]> */
</script>
<script type='text/javascript' src='http://innerexplorer.org/wp-content/themes/compass/js/functions.js?ver=20150330'></script>
<script type='text/javascript' src='http://innerexplorer.org/wp-content/plugins/easy-fancybox/fancybox/jquery.fancybox-1.3.7.min.js?ver=1.5.7'></script>
<script type='text/javascript' src='http://innerexplorer.org/wp-content/plugins/easy-fancybox/jquery.easing.pack.js?ver=1.3'></script>
<script type='text/javascript' src='http://innerexplorer.org/wp-content/plugins/easy-fancybox/jquery.mousewheel.min.js?ver=3.1.12'></script>

<script type="text/javascript">
jQuery(document).on('ready post-load', easy_fancybox_handler );
</script>

</body>
</html>
