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
<meta name="description" content="Practice Mindfulness 10 Days for FREE">

<title>Program Trial | Inner Explorer</title>

<script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(e,t,n){function r(n){if(!t[n]){var o=t[n]={exports:{}};e[n][0].call(o.exports,function(t){var o=e[n][1][t];return r(o||t)},o,o.exports)}return t[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(e,t,n){function r(){}function o(e,t,n){return function(){return i(e,[(new Date).getTime()].concat(u(arguments)),t?null:this,n),t?void 0:this}}var i=e("handle"),a=e(2),u=e(3),c=e("ee").get("tracer"),f=NREUM;"undefined"==typeof window.newrelic&&(newrelic=f);var s=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit"],l="api-",p=l+"ixn-";a(s,function(e,t){f[t]=o(l+t,!0,"api")}),f.addPageAction=o(l+"addPageAction",!0),f.setCurrentRouteName=o(l+"routeName",!0),t.exports=newrelic,f.interaction=function(){return(new r).get()};var d=r.prototype={createTracer:function(e,t){var n={},r=this,o="function"==typeof t;return i(p+"tracer",[Date.now(),e,n],r),function(){if(c.emit((o?"":"no-")+"fn-start",[Date.now(),r,o],n),o)try{return t.apply(this,arguments)}finally{c.emit("fn-end",[Date.now()],n)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,t){d[t]=o(p+t)}),newrelic.noticeError=function(e){"string"==typeof e&&(e=new Error(e)),i("err",[e,(new Date).getTime()])}},{}],2:[function(e,t,n){function r(e,t){var n=[],r="",i=0;for(r in e)o.call(e,r)&&(n[i]=t(r,e[r]),i+=1);return n}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],3:[function(e,t,n){function r(e,t,n){t||(t=0),"undefined"==typeof n&&(n=e?e.length:0);for(var r=-1,o=n-t||0,i=Array(o<0?0:o);++r<o;)i[r]=e[t+r];return i}t.exports=r},{}],ee:[function(e,t,n){function r(){}function o(e){function t(e){return e&&e instanceof r?e:e?c(e,u,i):i()}function n(n,r,o){if(!p.aborted){e&&e(n,r,o);for(var i=t(o),a=v(n),u=a.length,c=0;c<u;c++)a[c].apply(i,r);var f=s[w[n]];return f&&f.push([y,n,r,i]),i}}function d(e,t){b[e]=v(e).concat(t)}function v(e){return b[e]||[]}function g(e){return l[e]=l[e]||o(n)}function m(e,t){f(e,function(e,n){t=t||"feature",w[n]=t,t in s||(s[t]=[])})}var b={},w={},y={on:d,emit:n,get:g,listeners:v,context:t,buffer:m,abort:a,aborted:!1};return y}function i(){return new r}function a(){(s.api||s.feature)&&(p.aborted=!0,s=p.backlog={})}var u="nr@context",c=e("gos"),f=e(2),s={},l={},p=t.exports=o();p.backlog=s},{}],gos:[function(e,t,n){function r(e,t,n){if(o.call(e,t))return e[t];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,t,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[t]=r,r}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],handle:[function(e,t,n){function r(e,t,n,r){o.buffer([e],r),o.emit(e,t,n)}var o=e("ee").get("handle");t.exports=r,r.ee=o},{}],id:[function(e,t,n){function r(e){var t=typeof e;return!e||"object"!==t&&"function"!==t?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");t.exports=r},{}],loader:[function(e,t,n){function r(){if(!h++){var e=y.info=NREUM.info,t=l.getElementsByTagName("script")[0];if(setTimeout(f.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&t))return f.abort();c(b,function(t,n){e[t]||(e[t]=n)}),u("mark",["onload",a()],null,"api");var n=l.createElement("script");n.src="https://"+e.agent,t.parentNode.insertBefore(n,t)}}function o(){"complete"===l.readyState&&i()}function i(){u("mark",["domContent",a()],null,"api")}function a(){return(new Date).getTime()}var u=e("handle"),c=e(2),f=e("ee"),s=window,l=s.document,p="addEventListener",d="attachEvent",v=s.XMLHttpRequest,g=v&&v.prototype;NREUM.o={ST:setTimeout,CT:clearTimeout,XHR:v,REQ:s.Request,EV:s.Event,PR:s.Promise,MO:s.MutationObserver},e(1);var m=""+location,b={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-998.min.js"},w=v&&g&&g[p]&&!/CriOS/.test(navigator.userAgent),y=t.exports={offset:a(),origin:m,features:{},xhrWrappable:w};l[p]?(l[p]("DOMContentLoaded",i,!1),s[p]("load",r,!1)):(l[d]("onreadystatechange",o),s[d]("onload",r)),u("mark",["firstbyte",a()],null,"api");var h=0},{}]},{},["loader"]);</script>
<link rel="icon" href="/ie/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="NewStyles/css/daisynav.css">
<link rel="stylesheet" href="NewStyles/css/jquery-anyslider.css">
<link rel="stylesheet" type="text/css" href="NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="http://innerexplorer.org/css/bootstrap.min.css">

</head>
<body>
<spring:eval var="bucketPath"
		expression="@propertyConfigurer.getProperty('bucket_path')" />
	<div class="wrapper">
		<header id="header">
			<div class="container ">
				<div class="logo">
					<a href="http://innerexplorer.org" title=""> </a>
				</div>
				<div class="hdRight">

					<a href="http://innerexplorer.org" title="Home">
						<div class="searchBox">
							<input type="button" class="home_icon">
						</div>
					</a>

					<div class="startRight b4-login-mrgn">
						<a href="/ie/login"> <input type="button" title="Login"
							class="startBtn" value="Login">
						</a>
					</div>
				</div>
			</div>
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
<script type="text/javascript">setTimeout(function(){var a=document.createElement("script");var b=document.getElementsByTagName("script")[0];a.src=document.location.protocol+"//script.crazyegg.com/pages/scripts/0059/6602.js?"+Math.floor(new Date().getTime()/3600000);a.async=true;a.type="text/javascript";b.parentNode.insertBefore(a,b)}, 1);</script>

		<style type="text/css">
.email-capture-sec {
	float: left;
	width: 100%;
	text-align: center;
	background-color: #f7f7f7;
	padding: 40px 0
}

.poutdiv {
	float: left !important;
	padding: 12px 0 !important;
}

.poutnw {
	float: left !important;
	margin-right: 14px !important;
}

.email-capture-sec h2 {
	font-family: 'Open Sans', sans-serif;
	font-size: 34px;
	font-weight: normal;
	margin: 0 auto 10px;
	padding: 0;
}
p.error {
	bottom: -12px !important;
	font-size: 11px !important;
	padding: 0 7px !important;
	position: absolute !important;
	z-index: 9999 !important;
	background-color: #f2dede !important;
	border-color: #ebccd1 !important;
	color: #a94442 !important;
	border: 1px solid transparent !important;
	border-radius: 1px !important;
}
.button_language{width:100%; float:left; padding:20px 0; text-align:center}
.lang_bttn{background-color: #02a451; color: #fff; padding: 10px 30px;}
.lang_bttn:hover, .lang_bttn:focus{color:#fff} 
</style>


		<section class="ourprogT">
			<div class="container">
				<h2>Program Trial</h2>
				<div class="green_line_btm"></div>
				<div class="button_language">
					<a href="javascript:;" id="englishBtn" class="lang_bttn">English</a>
					<a href="javascript:;" id="spanishBtn" class="lang_bttn">Spanish </a>
				</div>
				<div class="col-md-12" id="english">
					<div class="OurprgCol1_trail">
					
					<ul>


						<li onclick="program(1);" style="cursor: pointer;">
							<div class="play-demo-con">
								<div class="play-demo-conTxt">
									<input type="hidden" id="defaultProgId" value="1">
								</div>
							</div> <img src="NewStyles/images/program-image/program1.png"
							alt="Image" />
							<div class="overlay_setup" id="overlay_1">
								<p>Exploring Me™ Pre-k-Kindergarten</p>
								<!-- <p> Pre-k–Kindergarten</p> -->
							</div>
						</li>



						<li onclick="program(2);" style="cursor: pointer;">
							<div class="play-demo-con">
								<div class="play-demo-conTxt">
									<input type="hidden" id="defaultProgId" value="2">
								</div>
							</div> <img src="NewStyles/images/program-image/program2.png"
							alt="Image" />
							<div class="overlay_setup" id="overlay_2">
								<p>Exploring Originality™ Elementary</p>
								<!-- <p> Pre-k–Kindergarten</p> -->
							</div>
						</li>



						<li onclick="program(3);" style="cursor: pointer;">
							<div class="play-demo-con">
								<div class="play-demo-conTxt">
									<input type="hidden" id="defaultProgId" value="3">
								</div>
							</div> <img src="NewStyles/images/program-image/program3.png"
							alt="Image" />
							<div class="overlay_setup" id="overlay_3">
								<p>Exploring Potential™ Middle</p>
								<!-- <p> Pre-k–Kindergarten</p> -->
							</div>
						</li>



						<li onclick="program(4);" style="cursor: pointer;">
							<div class="play-demo-con">
								<div class="play-demo-conTxt">
									<input type="hidden" id="defaultProgId" value="4">
								</div>
							</div> <img src="NewStyles/images/program-image/program4.png"
							alt="Image" />
							<div class="overlay_setup" id="overlay_4">
								<p>Exploring Relevance™ High</p>
								<!-- <p> Pre-k–Kindergarten</p> -->
							</div>
						</li>



					</ul>
				</div>
				<div class="Ourprg_Trailwhite">
					<div class="OurprgCol_new">
						<h3 id="progName">Exploring Me™ Pre-k–Kindergarten</h3>
						<p id="progDesc">Our Pre-k- Kindergarten program is designed
							to help younger children understand their inner world of senses,
							thoughts and emotions. This growing awareness allows them to make
							the connection between their inner world and their reactions and
							interactions with classmates, teachers and family members.</p>
						<p id="progDesc1">This program has 50 tracks that are each 5
							minutes long, in order to address the attention span of the
							younger students.</p>
					</div>
					<div class="player-listTrail">

						<div id="trackListing"></div>
					</div>
				</div>
				</div>
				
				<!--Spanish  -->
						<div class="col-md-12" id="spanish" style="display:none">
					<div class="OurprgCol1_trail">
					
					<ul>


						<li onclick="program(1);" style="cursor: pointer;">
							<div class="play-demo-con">
								<div class="play-demo-conTxt">
									<input type="hidden" id="defaultProgId" value="1">
								</div>
							</div> <img src="NewStyles/images/program-image/program1.png"
							alt="Image" />
							<div class="overlay_setup" id="overlay_1">
								<p>Exploring Me™ Pre-k-Kindergarten spansih</p>
								<!-- <p> Pre-k–Kindergarten</p> -->
							</div>
						</li>



						<li onclick="program(2);" style="cursor: pointer;">
							<div class="play-demo-con">
								<div class="play-demo-conTxt">
									<input type="hidden" id="defaultProgId" value="2">
								</div>
							</div> <img src="NewStyles/images/program-image/program2.png"
							alt="Image" />
							<div class="overlay_setup" id="overlay_2">
								<p>Exploring Originality™ Elementary</p>
								<!-- <p> Pre-k–Kindergarten</p> -->
							</div>
						</li>



						<li onclick="program(3);" style="cursor: pointer;">
							<div class="play-demo-con">
								<div class="play-demo-conTxt">
									<input type="hidden" id="defaultProgId" value="3">
								</div>
							</div> <img src="NewStyles/images/program-image/program3.png"
							alt="Image" />
							<div class="overlay_setup" id="overlay_3">
								<p>Exploring Potential™ Middle</p>
								<!-- <p> Pre-k–Kindergarten</p> -->
							</div>
						</li>



						<li onclick="program(4);" style="cursor: pointer;">
							<div class="play-demo-con">
								<div class="play-demo-conTxt">
									<input type="hidden" id="defaultProgId" value="4">
								</div>
							</div> <img src="NewStyles/images/program-image/program4.png"
							alt="Image" />
							<div class="overlay_setup" id="overlay_4">
								<p>Exploring Relevance™ High</p>
								<!-- <p> Pre-k–Kindergarten</p> -->
							</div>
						</li>



					</ul>
				</div>
				<div class="Ourprg_Trailwhite">
					<div class="OurprgCol_new">
						<h3 id="progName">Exploring Me™ Pre-k–Kindergarten Spanish</h3>
						<p id="progDesc">Our Pre-k- Kindergarten program is designed
							to help younger children understand their inner world of senses,
							thoughts and emotions. This growing awareness allows them to make
							the connection between their inner world and their reactions and
							interactions with classmates, teachers and family members.</p>
						<p id="progDesc1">This program has 50 tracks that are each 5
							minutes long, in order to address the attention span of the
							younger students.</p>
					</div>
					<div class="player-listTrail">

						<div id="trackListing"></div>
					</div>
				</div>
				</div>
				<!--End Spanish  -->
			</div>
		</section>

		<section class="email-capture-sec">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h2>21-Days Trial Experience</h2>
						<div class="green_line_btm"></div>
					</div>
					<div class="col-md-12">
						<form:form  class="contact-form" action="teacherSignUp" id ="teacher-register"
							method="post" novalidate="novalidate">
							<div class="col-md-6">
								<div class="form-group">
									<input class="form-control" id="username" placeholder="Name"
										name="username" required="" aria-required="true" type="text">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input class="form-control" name="email" id="email1"
										placeholder="Email" type="email">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input class="form-control" name="password" id="password"
										placeholder="Password" type="password">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group poutdiv">
									<p class="poutnw">
										<input class="psec" name="programIds" value="1" id="p1"
											type="radio" checked> Pre-k&ndash;Kindergarten
									</p>

									<p class="poutnw">
										<input class="psec" name="programIds" value="2" id="p2"
											type="radio"> Elementary School
									</p>

									<p class="poutnw">
										<input class="psec" name="programIds" value="3" id="p3"
											type="radio"> Middle School
									</p>

									<p class="poutnw">
										<input class="psec" name="programIds"  value="4" id="p4"
											type="radio"> High School
									</p>
									<input  name="pCode"  value="IE21DAYS" type="hidden">
								</div>
							</div>
							<div class=" mtop10">
								<input type="submit" class="home_act_btn whtbg"
									value="START 21 DAYS TRIAL">
							</div>

						</form:form>
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
												<div class="img-user">
													<img src="NewStyles/images/new_tst.jpg">
												</div>
											</div>
											<div class="txt-testimonials_slide">
												<p>This letter was submitted to us by kindergarten kid
													from the Cutler School in Hamilton, MA.</p>
											</div>
										</div>
									</div>
									<div>
										<div class="testimonial-slider">
											<div class="testimonial-photo_new">
												<div class="img-user">
													<img src="NewStyles/images/new_tst1.jpg">
												</div>
											</div>
											<div class="txt-testimonials_slide">
												<p>This letter was submitted to us by kindergarten kid
													from the Cutler School in Hamilton, MA..</p>
											</div>
										</div>
									</div>
									<div>
										<div class="testimonial-slider">
											<div class="testimonial-photo_new">
												<div class="img-user">
													<img src="NewStyles/images/new_tst2.jpg">
												</div>
											</div>
											<div class="txt-testimonials_slide">
												<p>This letter was submitted to us by kindergarten kid
													from the Cutler School in Hamilton, MA..</p>
											</div>
										</div>
									</div>
									<div>
										<div class="testimonial-slider">
											<div class="testimonial-photo_new">
												<div class="img-user">
													<img src="NewStyles/images/new_tst3.jpg">
												</div>
											</div>
											<div class="txt-testimonials_slide">
												<p>This letter was submitted to us by kindergarten kid
													from the Cutler School in Hamilton, MA.</p>
											</div>
										</div>
									</div>
									<div>
										<div class="testimonial-slider">
											<div class="testimonial-photo_new">
												<div class="img-user">
													<img src="NewStyles/images/new_tst4.jpg">
												</div>
											</div>
											<div class="txt-testimonials_slide">
												<p>This letter was submitted to us by kindergarten kid
													from the Cutler School in Hamilton, MA.</p>
											</div>
										</div>
									</div>
									<div>
										<div class="testimonial-slider">
											<div class="testimonial-photo_new">
												<div class="img-user">
													<img src="NewStyles/images/new_tst5.jpg">
												</div>
											</div>
											<div class="txt-testimonials_slide">
												<p>This letter was submitted to us by kindergarten kid
													from the Cutler School in Hamilton, MA.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="inherit mtop10">
								<a href="/ie/get-started"><input type="button"
									class="home_act_btn whtbg" value="Sign Up Now"></a>
							</div>
						</div>
					</article>
				</section>
			</div>
		</section>





	</div>

	<script src="NewStyles/js/jquery.min.js" type="text/javascript"></script>











	<link rel="stylesheet" href="NewStyles/css/jquery.fancybox.css?v=2.1.5"
		type="text/css" media="screen" />

	<script type="text/javascript"
		src="http://innerexplorer.org/ie/NewStyles/js/jquery.fancybox.pack.js?v=2.1.5"></script>
	<script type="text/javascript">
jQuery(document).ready
(function($){
$(".fancybox").fancybox();
});
</script>
	<footer>
		<div class="container">
			<div class="footerLeft">
				<p>Copyright © 2016 Inner Explorer</p>
			</div>
			<div class="footerRight">
				<ul>
					<li><a href="#privacy" class="fancybox">Privacy Policy</a></li>
					<li><a href="#terms" class="fancybox">Terms & Conditions</a></li>
				</ul>
			</div>
		</div>
	</footer>


	<div id="privacy" style="display: none;">
		<div class="product-page product-pop-up">
			<div class="row">
				<div class="col-md-12 col-sm-6 col-xs-3">
					<div class="product-main-image">
						<div id="message"></div>
						<div id="recorder" style="width: 600px; font-size: 11px;">
							Inner Explorer (“we”) are committed to protecting and preserving
							your privacy. This policy, together with our Terms of Use and
							Conditions, sets out the basis on which any personal data we
							collect from you, or that you provide to us, will be processed by
							us. By using our website (“Site”) and/or through our mobile
							application (“Mobile App”), you are accepting the practices
							described in this Privacy Policy and Notices of Privacy Practices
							(“Privacy Policy”).<br>
							<br> By using this Site and/or our Mobile App, you consent
							to the use of information that you provide us in accordance with
							this Privacy Policy. We do update this Privacy Policy from time
							to time so please review this Privacy Policy regularly. If we
							materially alter our Privacy Policy, we will notify you of such
							changes by contacting you through your user account e-mail
							address or by posting a notice on our Site or within our Mobile
							App. Your continued use of the Site and/or Mobile App will be
							deemed your agreement that your information may be used in
							accordance with the new policy. If you do not agree with the
							changes, then you should stop using the Site and/or Mobile App
							and you should notify us that you do not want your information
							used in accordance with the changes.<br>
							<br> We have structured our Site so that you can visit it
							without identifying yourself or revealing any personal
							information other than your e-mail address. If you choose to
							provide us with information by which you can be identified, you
							can be assured that it will only be used in accordance with this
							Privacy Policy. In order to access our Mobile App you will need
							to download it from a third party. Please note that these third
							parties may have different privacy policies than Inner Explorer
							and as such, before downloading the Mobile App you should review
							those third party privacy policies. Inner Explorer is not
							responsible for any policies of these third parties.<br>
							<br> <b>Privacy Notice</b><br> Please read this Privacy
							Policy carefully to fully understand how we collect, share and
							protect information about you. This Policy is incorporated into
							and is a part of the Terms of Use and Conditions of this Site and
							our Mobile App. To access the Terms of Use and Conditions click <a
								href="#terms" class="fancybox">here</a><br>
							<br> By accessing and using the Site and/or Mobile App, you
							agree that you have read and understand this Privacy Policy and
							that you accept and consent to the privacy practices and uses or
							disclosures of information about you that are described herein.<br>
							<br> In order to deliver personalized and relevant
							information to you through our Site and through our Mobile App,
							we collect certain information from users. Please do not provide
							any sensitive information or health information. If you should do
							so inadvertently, we will use and disclose that information in
							the same manner as any other information you provide to us.<br>
							<br> <b>Information We Collect</b><br> In operating our
							Site and our Mobile App, we may collect and process the following
							data about you:<br>
							<br> i. Details of your visits to our Site and the resources
							that you access, including, but not limited to, traffic data,
							location data, weblogs and other communication data, including
							your IP address, the date and time you accessed or left the Site
							and which pages you viewed. Some parts of our Site use cookies
							and other technologies to collect this information about your
							general internet usage. See section below ‘How We Use Cookies” to
							learn more.<br>
							<br> ii. Information that you provide directly to us by
							“Contacting Us” through our Site or Mobile App (i.e. name, job
							title, school, city and state, telephone number, e-mail address,
							and the content of your message).<br>
							<br> iii. Information provided to us when you communicate
							with us for any reason.<br>
							<br> <b>How We Use Cookies</b><br> A “cookie” is a
							piece of text which asks permission to be placed on your
							computer’s hard drive. Once you agree, this cookie file is stored
							on the hard drive of your computer. They help us and our
							affiliates to improve our Site. They ensure that the content from
							our Site is presented in the most effective manner for you and
							your computer.<br>
							<br> All computers have the ability to decline cookies. This
							can be done by activating the setting on your browser which
							enables you to decline the cookies. Please note that should you
							choose to decline cookies, you may be unable to access particular
							parts of our Site. We do not track our users across websites or
							across time.<br>
							<br> <b>Use of Your Information</b><br> The information
							that we collect and store relating to you is primarily used to
							enable us to provide our products and services to you in the best
							possible manner. In addition, we may use the information for the
							following purposes:<br>
							<br> i. To provide you with information relating to our
							products and services;<br>
							<br> ii. To provide third parties with statistical
							information about the users of our Site and Mobile App;<br>
							<br> iii. To monitor and conduct an analysis of our Site
							traffic and Site and Mobile App usage patterns.<br>
							<br> <b>Security</b><br> To ensure that your
							information is secure, we have put in place commercially suitable
							physical, electronic, and managerial procedures to safeguard and
							secure the information we collect on our Site and through our
							Mobile App.<br>
							<br> Nonetheless, the transmission of information via the
							internet is not completely secure and therefore we cannot
							guarantee the security of data sent to us electronically on our
							Site or Mobile App, and transmission of such data is therefore
							entirely at your own risk.<br>
							<br> <b>Disclosing Your Information</b><br> Where
							applicable, we may disclose your personal information to any
							affiliated business entities or third parties necessary to
							provide products and services to you. This includes, where
							applicable, our subsidiaries, our holding company and its other
							subsidiaries (if any), as well as third parties involved in the
							administration and operation of our products and services.<br>
							<br> We may also disclose your personal information to third
							parties:<br>
							<br> i. Where we sell any or all of our business and/or our
							assets to a third party.<br>
							<br> ii. Where we are legally required to disclose your
							information.<br>
							<br> iii. When we are contractually obligated to disclose
							it.<br>
							<br> <b>Third Party Website and Interaction</b><br> By
							accessing other third party websites or applications through our
							Site, you are consenting to the terms and privacy policies of
							those websites. We do not accept any responsibility or liability
							for their policies whatsoever as we have no control over them.<br>
							<br> <b>Users Only of Legal Age of Majority</b><br> Our
							Site and Mobile App are designed and intended for those who have
							reached the age of majority (18 years of age). By using our Site
							and/or Mobile App you affirm that you are at least 18 years of
							age or older. We are not liable for any damages that may result
							from a user’s misrepresentation of age.<br>
							<br> No one under age 13 is authorized to submit any
							information, including personally identifying information, on our
							Site or through our Mobile App. Under no circumstances may anyone
							under age 13 use our Site or Mobile App. Parents or legal
							guardians of children under 13 cannot agree to these terms on
							their behalf.<br>
							<br> <b>Contacting Us</b><br> We welcome any queries,
							comments, requests or complaints you may have regarding this
							Privacy Policy and Notice of Privacy Practices. Please do not
							hesitate to contact us at:<br>
							<br>
							<p>
								<b>Inner Explorer</b>
							</p>
							<p>
								<b>430 Franklin Village Dr. #325</b>
							</p>
							<p>
								<b>Franklin, MA, 02038</b>
							</p>
							<p>
								<b>Phone: 888-466-9732</b>
							</p>
							<p>
								<b>Email: info@innerexplorer.org</b>
							</p>
							<br>
							<br>


						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="terms" style="display: none;">
		<div class="product-page product-pop-up">
			<div class="row">
				<div class="col-md-12 col-sm-6 col-xs-3">
					<div class="product-main-image">
						<div id="message"></div>
						<div id="recorder" style="width: 600px; font-size: 11px;">
							Welcome to the Inner Explorer website and/or mobile application.
							These Terms of Use and Conditions (“Terms”) govern your use of
							the Inner Explorer (“our”) website (“Site”) and our mobile
							application (“Mobile App”). Please read the terms in full before
							using our Site and/or Mobile App. By accepting these Terms, or by
							using this Site or Mobile App, you agree to be legally bound by
							these Terms, and our Privacy Policy and Notice of Privacy
							Practices. If you do not agree to these terms, please do not use
							our Site or Mobile App. We reserve the right to modify these
							Terms at any time without prior notice, and your use of the Site
							and/or Mobile App binds you to the changes made. We do
							occasionally update these terms so please refer to them in the
							future.<br>
							<br> <b>Access to Site and Mobile App</b><br> You will
							be able to access our Site without having to register any details
							with us. However, in order to access our Mobile App you will need
							to download it through a third party.<br>
							<br> <b>Use of Site and Mobile App</b><br> Our Site,
							Mobile App, images, data, text, audios, videos, photographs,
							custom graphics, logos, button icons, descriptions and all other
							material provided and the collection and compilation and assembly
							thereof are the exclusive property of Inner Explorer or its
							parent, and are protected by U.S. and international copyright
							laws. The contents of our Site and Mobile App may be used for
							informational purposes only. Any other use of such contents,
							including the reproduction, modification, distribution,
							transmission, republication, display or performance of the
							contents without our prior written consent is expressly
							forbidden. Any other trademarks or service marks appearing
							anywhere on our Site or Mobile App are the property of their
							respective owners. To the extent any product name or logo does
							not appear with a trademark (™) does not constitute a waiver of
							any and all intellectual property rights that Inner Explorer or
							its businesses has established in any of its products, features,
							or service names or logos. You may not use, reproduce, modify,
							transmit, display, publish, sell, create derivative works, or
							distribute by any means, method, or process whatsoever, now known
							or hereafter developed, any content of this Site or Mobile App
							for commercial profit or gain. Nothing in these Terms or on the
							Site or Mobile App shall be construed as conferring any
							intellectual property or other proprietary rights to You. You
							agree to observe copyright and other applicable laws and may not
							use the content in any manner that infringes or violates the
							rights of any person or entity. We hold all rights to the content
							on this Site and Mobile App. As a condition of your use of the
							Site and/or Mobile App, you will not use the Site, the Mobile
							App, or any contents or services, for any purpose that is
							unlawful in any applicable jurisdiction where our Site and/or
							Mobile App are being used, or prohibited by these terms,
							conditions, and notices, and you agree to abide by the terms and
							conditions set forth in the “User Conduct” section. You may not
							use the Site and/or Mobile App contents or services in any manner
							that could damage, disable, overburden, or impair any of our
							equipment or interfere with any other party’s use and enjoyment
							of the Site or Mobile App, or any contents or services. You may
							not attempt to gain access to any portion of the Site or Mobile
							App, or any contents or services, other than those for which you
							are authorized. While every effort is made to ensure the
							timeliness and accuracy of the Site and Mobile App content and
							services, we make no warranties either express or implied, and
							assume no liability or responsibility for the completeness, use,
							accuracy, reliability, correctness, timeliness or usefulness, of
							any of the results obtained from its use. We make no
							representation or warranty, express or implied, with respect to
							the content of the Site, the Mobile App or links to other
							websites, including but not limited to accurateness,
							completeness, correctness, timeliness or reliability. We make no
							representation or warranty regarding the merchantability or
							fitness for a particular purpose or use with respect to any
							content or services whatsoever that may be accessed through this
							Site and/or Mobile App, or the results to be obtained from using
							the Site and/or Mobile App. We make no representation or warranty
							that the Site, the Mobile App or content is free from defects or
							viruses. Your use of external links and third-party websites is
							at your own risk and subject to the terms and conditions of use
							for such links and sites. While every effort is made to ensure
							that all content provided on the Site and Mobile App do not
							contain computer viruses and/or harmful materials, you should
							take reasonable and appropriate precautions to scan for computer
							viruses or otherwise protect your computer or device and you
							should ensure that you have a complete and current backup of the
							applicable items on your computer and/or device. We disclaim any
							liability for the need for services or replacing equipment or
							data resulting from your use of the Site or Mobile App. While
							every effort is made to ensure smooth and continuous operation,
							we do not warrant the Site or Mobile App will operate error free.<br>
							<br> <b>Site and Mobile App Uptime</b><br> We take all
							reasonable steps to ensure that our Site and Mobile App are
							available 24 hours every day, 365 days per year. However,
							websites and mobile applications do sometimes encounter downtime
							due to server and other technical issues. Therefore, we will not
							be liable if this Site or Mobile App is unavailable at any time.
							Our Site or Mobile App may be temporarily unavailable due to
							issues such as system failure, maintenance or repair, or for
							reasons beyond our control. Where possible, we will try to give
							our users advance warning of maintenance issues, but shall not be
							obliged to do so.<br>
							<br> <b>User Conduct</b><br> Any material you send or
							post to our Site and/or Mobile App shall be considered
							non-proprietary and non-confidential. We do not collect or store
							any personally identifiable information about you while using our
							Site or Mobile App but please do not send any such information to
							us. See also our Privacy Policy and Notice of Privacy Practices,
							which can be found <a href="#privacy" class="fancybox">here</a>.
							When using our Site and/or Mobile App, you shall not post or send
							to or from the Site or Mobile App: (a) content for which you have
							not obtained all necessary consents; (b) content that is
							discriminatory, obscene, pornographic, defamatory, liable to
							incite racial hatred, in breach of confidentiality or privacy,
							which may cause annoyance or inconvenience to others, which
							encourages or constitutes conduct that would be deemed a criminal
							offense, give rise to a civil liability, or otherwise is contrary
							to the law in any applicable jurisdiction where our Site or
							Mobile App is being used; (c) content which is harmful in nature
							including, and without limitation, computer viruses, Trojan
							horses, corrupted data, or other potentially harmful software or
							data. We will fully cooperate with any law enforcement
							authorities or court order requiring us to disclose the identity
							or other details or any person posting materials to our Site or
							Mobile App in breach of the this Section. You shall not use our
							Site or Mobile App while distracted or preoccupied, such as when
							operating a motor vehicle. You should access our Site and Mobile
							App only with due regard for your own safety and the safety of
							others.<br>
							<br> <b>Links to and from Third Party Websites</b><br>
							Any links furnished on our Site or Mobile App may allow you to
							leave our Site or our Mobile App. These third party websites are
							not under our control and we disclaim any responsibility for the
							contents of such linked websites or any link(s) contained in any
							such linked website(s) or any changes or updates to any of these
							websites. We further disclaim any responsibility for any form of
							transmission received from any linked third party website or
							advertising. If we provide these links to you, it is done simply
							as a convenience to you and inclusion of any link herein shall in
							no way be construed as an endorsement by us of the website(s).
							Additionally, we do not collect or process your credit/debit card
							payment information. All payment data is collected and processed
							through a third party vendor. If you would like to link to our
							Site or Mobile App, you may only do so on the basis that you link
							to, but do not replicate, any page of our Site, or Mobile App,
							and subject to the following conditions: (a) you do not in any
							way imply that we are endorsing any services or products unless
							this has been specifically agreed with us; (b) you do not
							misrepresent your relationship with us or present any false
							information about us; (c) you do not link from a website that is
							not owned by you; and (d) your website does not contain content
							that is offensive, controversial, infringes any intellectual
							property rights or other rights of any other person or does not
							comply in any way with the law of the United States of America.
							If you choose to link our Site or Mobile App in breach of this
							Section, you shall fully indemnify us for any loss or damage
							suffered as a result of your actions.<br>
							<br> <b>Disclaimers</b><br> All information on our Site
							and in our Mobile App is of a general nature and is furnished for
							your knowledge and understanding and as an informational resource
							only. The documents and any related graphics published on this
							server could include technical inaccuracies or typographical
							errors. Changes are periodically added to the information
							contained on our Site and Mobile App. We may make improvements
							and/or changes to any of the products depicted or described
							herein at any time. We expressly disclaim any responsibility or
							liability for any adverse consequences or damages resulting from
							your use of the Site, Mobile App or reliance on the information
							from either. THE SITE AND MOBILE APP ARE PROVIDED ON AN “AS IS”
							AND “AS AVAILABLE” BASIS. WE MAKE NO WARRANTIES, EXPRESS OR
							IMPLIED, REPRESENTATIONS OR ENDORSEMENTS WHATSOEVER WITH REGARD
							TO ANY PRODUCTS, INFORMATION OR SERVICE PROVIDED THROUGH THIS
							SITE OR MOBILE APP, INCLUDING, TITLE, NON-INFRINGEMENT, OR ANY
							OTHER WARRANTY, CONDITION, GUARANTY, OR REPRESENTATION, WHETHER
							ORAL OR IN WRITING, OR IN ELECTRONIC FORM.<br>
							<br> <b>Limitation of Liability</b><br> YOUR USE OF OUR
							SITE AND MOBILE APP IS ENTIRELY AT YOUR OWN RISK. WE WILL NOT BE
							RESPONSIBLE TO YOU OR TO ANY THIRD PARTIES FOR ANY DIRECT OR
							INDIRECT, INCIDENTAL, CONSEQUENTIAL, SPECIAL, OR PUNITIVE DAMAGES
							OR LOSSES OR INJURY YOU MAY INCUR IN CONNECTION WITH YOUR USE OR
							INABILITY TO USE THE SITE, MOBILE APP OR THE PRODUCTS, OR YOUR
							RELIANCE ON OR USE OF THE SITE, THE MOBILE APP, THE INFORMATION,
							OR SERVICES PROVIDED, OR THAT RESULT FROM MISTAKES, OMISSIONS,
							INTERRUPTIONS, DELETIONS OR ANY FAILURE OF PERFORMANCE, OR ANY OF
							THE DATA OR OTHER MATERIALS TRANSMITTED THROUGH OR RESIDING ON
							OUR SITE, REGARDLESS OF THE TYPE OF CLAIM OR THE NATURE OF THE
							CAUSE OF ACTION, EVEN IF WE HAVE ADVISED OF THE POSSIBILITY OF
							SUCH DAMAGE OR LOSS.<br>
							<br> <b>Indemnification</b><br> You agree to defend,
							indemnify, and hold us, our officers, directors, employees,
							volunteers, agents, licensors, and suppliers, harmless from and
							against any claims, actions or demands, liabilities and
							settlements including without limitation, reasonable legal and
							accounting fees, resulting from or alleged to result from, your
							use of and access to the Site or Mobile App or your violation of
							these Terms or your violation of any third party right, including
							without limitation any trademark, copyright or other proprietary
							or privacy right.<br>
							<br> <b>Assignment</b><br> These Terms, and any rights
							and licenses granted hereunder, may not be transferred or
							assigned by you.<br>
							<br> <b>Applicable Law</b><br> We make no
							representations that the content or the Site or Mobile App are
							appropriate or may be used or downloaded outside the United
							States. Access to the Site, Mobile App and/or the content may not
							be legal in certain countries outside the United States. If you
							access the Site or Mobile App from outside the United States, you
							do so at your own risk and are responsible for compliance with
							the laws of the jurisdiction from which you access the Site
							and/or Mobile App. Our Site and Mobile App are created and
							controlled in the Commonwealth of Massachusetts, United States of
							America. The Site, Mobile App and their contents, and any
							disputes arising therefrom shall be construed and interpreted
							under the laws of the Commonwealth of Massachusetts, and
							applicable United States federal laws. Use of our Site and/or
							Mobile App constitutes agreement of the user to the jurisdiction
							of the state and federal courts located therein. Our Site and
							Mobile App are subject to the United States export control laws
							and regulations, and may be subject to export or import
							regulations in other countries. You agree to strictly comply with
							all such laws and regulations and acknowledge that you have the
							responsibility to obtain authorization to export, re-export, or
							import of any data on our Site and/or Mobile App, as may be
							required.<br>
							<br> <b>Our Contact Information</b><br>
							<p>Inner Explorer</p>
							<p>430 Franklin Village Dr. #325</p>
							<p>Franklin, MA, 02038</p>
							<p>Phone: 888-466-9732</p>
							<p>Email: info@innerexplorer.org</p>
							<br>
							<br>


						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="NewStyles/js/jquery.counterup.js"></script>
	<script src="NewStyles/js/waypoints.min.js"></script>
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
	<script src="NewStyles/js/jquery.easing.1.3.js"></script>
	<script src="NewStyles/js/jquery.anyslider.js"></script>
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
	<script src="NewStyles/js/jquery.daisynav.min.js"></script>
	<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$.daisyNav();
    
	});
	</script>
	<script type="text/javascript" src="NewStyles/js/jquery.flexisel.js"></script>
	<script type="text/javascript" src="NewStyles/js/jquery.sticky.js"></script>
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
		var url='/ie/getFirstFiveProgramTracks';
		$.ajax({
		url:url,
		method:'POST',
		async :false,
		data:{progId:progId},
		success:function(response){
			
			var emaildrop="";
			var audioTrackName="";
			$.each( response.modelMap.audioList, function(index,value) {
				
				audioTrackName = value.audioName;
				if(progId == 1){
					$("#progName").text("Exploring Me™ Pre-k–Kindergarten");
					$("#progDesc").text("Our Pre-k- Kindergarten program is designed to help younger children understand their inner world of senses, thoughts and emotions. This growing awareness allows them to make the connection between their inner world and their reactions and interactions with classmates, teachers and family members.");
					$("#progDesc1").text("This program has 50 tracks that are each 5 minutes long, in order to address the attention span of the younger students.");
					emaildrop+='<p>'+value.audioTitle+'</p>	<div class="Trail_grid_row"><div class="lg_player">'+
					'<audio preload="none" class="audioDemo" style="display:inline-block;" controls>'+
					  '<source id="audioTrack" src="${bucketPath}bitrate/lowbitrate/Exploring-Me/English/'+audioTrackName+'"type="audio/mpeg">'+
					'</audio></div></div>';
				}
				if(progId == 2){
					$("#progName").text("Exploring Originality™ Elementary School");
					$("#progDesc").text("Our elementary school program, for grades 1 through 4, builds on students’ growing awareness of their inner world of senses, thoughts and emotions, leading to an increase in self-awareness and self-regulation. Through the daily practices, students continually connect with and appreciate their own unique skills and gifts. They begin to appreciate their originality and the originality of those around them. They develop an aptitude for making affirming choices related to self and others.");
					$("#progDesc1").text("");
					emaildrop+='<p>'+value.audioTitle+'</p>	<div class="Trail_grid_row"><div class="lg_player">'+
					'<audio preload="none" class="audioDemo" style="display:inline-block;" controls>'+
					  '<source id="audioTrack" src="${bucketPath}bitrate/lowbitrate/Exploring-Originality/English/'+audioTrackName+'" type="audio/mpeg">'+
					'</audio></div></div>';
				}
				if(progId == 3){
					$("#progName").text("Exploring Potential™ Middle School");
					$("#progDesc").text("Our middle school program, for grades 5 through 8, helps pre adolescents and adolescents understand their inner world of senses, thoughts and emotions, develop self-awareness, self-regulation, appreciation, and the aptitude for making skillful and affirming choices related to self and others. The daily practices also foster resilience and compassionate action which can lessen the effects of bullying. Importantly, the program provides a gateway for students to experience potential and possibility in their own lives.");
					$("#progDesc1").text("");
					emaildrop+='<p>'+value.audioTitle+'</p>	<div class="Trail_grid_row"><div class="lg_player">'+
					'<audio preload="none" class="audioDemo" style="display:inline-block;" controls>'+
					  '<source id="audioTrack" src="${bucketPath}bitrate/lowbitrate/Exploring-Potential/English/'+audioTrackName+'"type="audio/mpeg">'+
					'</audio></div></div>';
				}
				
				if(progId == 4){
					$("#progName").text("Exploring Relevance™ High School");
					$("#progDesc").text("Our high school program, for grades 9 through 12, engages young adults through their inner world of senses, thoughts and emotions, to develop self-awareness, self-regulation, appreciation, resilience and compassion, and to make skillful and affirming choices related to self and others. The daily practice invites students to experience potential and possibility in their lives, and to seek ways of expressing that potential in connection with a larger interrelated community.");
					$("#progDesc1").text("");
					emaildrop+='<p>'+value.audioTitle+'</p>	<div class="Trail_grid_row"><div class="lg_player">'+
					'<audio preload="none" class="audioDemo" style="display:inline-block;" controls>'+
					  '<source id="audioTrack" src="${bucketPath}bitrate/lowbitrate/Exploring-Relevance/English/'+audioTrackName+'"type="audio/mpeg">'+
					'</audio></div></div>';
				} 
				
				

				
			});
			$("#trackListing").html(emaildrop);
			
		}
	});
}
</script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
 <script type="text/javascript">
jQuery(document).ready
(function($){
    		
	 $.validator.addMethod("emailAlreadyExist", function(value, element) {
         return this.optional(element) || emailAlreadyCheckTeacher(value);
     }, "Email already exists. Click Here to <a href='<%=request.getContextPath()%>/login'> Login");
	 $.validator.addMethod("saveEmail", function(value, element) {
         return this.optional(element) || saveEmail(value);
     }, "Email already exists. Click Here to <a href='<%=request.getContextPath()%>/login'> Login");

     		$('#teacher-register').validate({
     			errorElement: 'p', //default input error message container
                // default input error message class
                 focusInvalid: false, // do not focus the last invalid input
                 rules: {
                	
                 	
                	 username: {
                         required: true,
                         //nameRegex:true,
                         maxlength : 20
                         
                     },                 
                    
                     email: {
                         required: true,
                         email: true,
                         emailAlreadyExist: true,
                         saveEmail:true
                     },
                    
                     
                     password: {
                         required: true,
                 		minlength : 6,
                 		maxlength : 20
                     },
                     programIds:
                    	 {
                    	 required:true,
                    	 },
                         invalidHandler: function(event, validator) { //display error alert on form submit   
                         },

                         highlight: function(element) { // hightlight error inputs
                             $(element)
                                 .closest('.outer-field').addClass('has-error'); // set error class to the control group
                             $(element).next('.fancybox').next('.fancybox').addClass('has-error');
                         },
                         
                         success: function(label) {
                             label.closest('.outer-field').removeClass('has-error');
                             label.next('.fancybox').next('.fancybox').removeClass('has-error');
                             label.remove();
                         },

                         errorPlacement: function(error, element) {
                             if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
                                 error.insertAfter(element.next('.fancybox').next('.fancybox'));
                             } else if (element.closest('.input-icon').size() === 1) {
                                 error.insertAfter(element.closest('.input-icon'));
                             } else {
                                 error.insertAfter(element);
                             }
                         },
                         
                         submitHandler: function(form) {
                        	 
                             form.submit();
                        	 
                         }
                    
                    
                     
                    
                 }

              /*     submitHandler: function(form) {
                	 
                	 if($(".register-form").valid()){
                		 saveParent();
                		
         				return true;
         			}else{
         				return false;
         			}
                 }  */


                 
              
             }); 
     		

     		
}); 

function saveEmail(value){
	
	var email = value;
	if(email != ""){
		$.ajax({
			url : "<%=request.getContextPath()%>/saveTempEmailForTrial",
			method : 'POST',
			headers: { 
				'Content-Type':'application/json'
				},
			data : JSON.stringify({"email":email}),
			async:false,
			success : function(result) {
				emailStatus = true;	
			}
		});
	}else{
		emailStatus = true;
	}
	return emailStatus;
}




	 
function emailAlreadyCheckTeacher(value){
	//var email = $("#email").val().trim();
	var email = value;
	if(email != ""){
		$.ajax({
			url : "<%=request.getContextPath()%>/check/availability/email",
			method : 'POST',
			headers: { 
				'Content-Type':'application/json'
				},
			data : JSON.stringify({"email":email}),
			async:false,
			success : function(result) {
				if(result.response.code == 200){
					emailStatus = true;
				} else if(result.response.code == 409){
					emailStatus = false;
				}
			}
		});
	}else{
		emailStatus = true;
	}
	return emailStatus;
}
	





    		</script>   	
	<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"errorBeacon":"bam.nr-data.net","licenseKey":"96b819336c","agent":"","beacon":"bam.nr-data.net","applicationTime":11,"applicationID":"33292744","transactionName":"MQZaZRcHX0ECARZaXghMa0EXD19VIA0MR0MJD1RUF0lBQAwFEFJcSxdKWAQKERokJzYa","queueTime":0}</script>


<script>
$(document).ready(function(){
    $("#englishBtn").click(function(){        
        $("#english").show();
        $("#spanish").hide();
    });
    $("#spanishBtn").click(function(){
    	 $("#spanish").show();
         $("#english").hide();
    });
});
</script>
</body>
</html>


