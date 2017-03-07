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

<title>Bug Management</title>

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
</style>

		<!-- Center Section -->
		<section class="center_section_editor_prof">

			<div class="container-fluid">
				<div cass="row">
					<div class="col-md-6 col-md-offset-3">
						<div class="col-md-12 pull-left text-center">
							<%-- <div class="col-md-4 col-md-offset-4 text-center">
                         <div class="editor_img_round_big circle_img">
                            <img src="<%=request.getContextPath()%>/NewStyles/images/teacher-profile/${dtoBugManagement.profilePic}"
											id="schoolSelectedLogo" alt="" class="img-responsive"/>
                         </div>  --%>
						</div>
						<div class="editor_form">
							<form class="pull-left col-md-6 col-md-offset-3 text-left">
								<div class="form-group">
									<label for="fname">Title</label> <input type="text"
										class="form-control custom_input_field" id="title"
										name="title" placeholder="Title">
								</div>
								<div class="form-group">
									<label for="lname">Descrption</label> <input type="text"
										class="form-control custom_input_field" id="description"
										name="description" placeholder="Description">
								</div>
							
								
								<div class="form-group">
									<ul>
										<li class="form-group"><select id='category' name="category">
												<option value="Category">Category</option>
												<option value="Bug Report">Bug Report</option>
												<option value="Feature Request">Feature Request</option>
												<option value="Task">Task</option>
												<option value="Enhancement Request">Enhancement Request</option>
												<option value="General">General</option>
												<option value="Patch">Patch</option>
												
										</select></li>
									</ul>
								</div>
								
								<div class="form-group">
									<ul>
										<li class="form-group"><select id='severity' name="severity">
												<option value="Severity">Severity</option>
												<option value="Feature">Feature</option>
												<option value="Trivial">Trivial</option>
												<option value="Text">Text</option>
												<option value="Tweak">Tweak</option>
												<option value="Minor">Minor</option>
												<option value="Major">Major</option>
												<option value="Critical">Critical</option>
												<option value="Block">Block</option>
												
												
										</select></li>
									</ul>
								</div>
								<div class="form-group">
									<ul>
										<li class="form-group"><select id='reporduciblity' name="reporduciblity">
												<option value="Reproducibility">Reproducibility</option>
												<option value="Always">Always</option>
												<option value="Sometimes">Sometimes</option>
												<option value="Random">Random</option>
												<option value="Not Attempted">Not Attempted</option>
												<option value="Unable to Reproduce">Unable to Reproduce</option>
												<option value="N/A">N/A</option>
												
												
										</select></li>
									</ul>
								</div>
								
								<div class="form-group">
									<ul>
										<li class="form-group"><select id='priroity' name="priroity">
												<option value="Priority">Priority</option>
												<option value="None">None</option>
												<option value="Low">Low</option>
												<option value="High">High</option>
												<option value="Normal">Normal</option>
												<option value="Urgent">Urgent</option>
												
												
										</select></li>
									</ul>
								</div>
								<div class="form-group">
									<label for="lname">Attachment</label> <input type="text"
										class="form-control custom_input_field" id="attachement"
										name="attachement" placeholder="Attachement">
								</div>
								
							
								<div class="form-group">
									<label for="lname">Name</label> <input type="text"
										class="form-control custom_input_field" id="name" name="name"
										placeholder="Name">
								</div>
								<div class="form-group">
									<label for="lname">Email</label> <input type="text"
										class="form-control custom_input_field" id="email"
										name="email" placeholder="Email">
								</div>
							<%--	<input type="hidden" id="createdDateHidden" />
								 <div class="form-group">
									<label for="createdDate">Created Date</label>
									<div id="datepicker" class="input-group date"
										name="createdDate" data-date-format="mm-dd-yyyy">
										<input class="form-control custom_input_field" type="text"
											readonly id="createdDate" placeholder="createdDate" /> <span
											class="input-group-addon custom_addon"><i
											class="glyphicon glyphicon-calendar"></i></span>
									</div>
								</div>
 --%>
								<div class="form-group text-center">
									<button class="btn btn-default save_about_ed_btn" type="button"
										name="saveButton" onClick="saveBugManagement();" value="save">SAVE</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
	</div>
	
	</section>
	<!-- End Center Section -->
	<!-- Navigation -->
	<nav
		class="navbar navbar-inverse navbar-fixed-bottom navbar-transparent"
		role="navigation">
		<div class="container-fluid">

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
		</div>
	</nav>



	<!-- jQuery -->
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>

	<script type="text/javascript">
	
	
    function openNav() {
        document.getElementById("mySidenav").style.width = "320px";
    /*    document.getElementById("sideBarDiv").style.marginLeft = "320px";*/
        document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
        $('#burger_menu_ie').hide();
      /*  document.getElementById("burger_menu_ie").style.display = "none";*/

    }

  
    
    function closeNav() {
        document.getElementById("mySidenav").style.width = "0";
        /*document.getElementById("sideBarDiv").style.marginLeft= "0";*/
        document.body.style.backgroundColor = "white";
         $('#burger_menu_ie').show();
    }
    
    function saveBugManagement(){
      	var title = $("#title").val().trim();
    	var description = $("#description").val().trim();
    	var createdDate = $("#createdDate").val();
    	var category = $("#category").val();
    	var severity = $("#severity").val();
    	var reporduciblity = $("#reporduciblity").val();
    	var priroity = $("#priroity").val();
    	var attachement = $("#attachement").val();
    	var name = $("#name").val();
    	var email = $("#email").val();
    	
    	$.ajax({
    		url:"<%=request.getContextPath()%>/saveBugDetails",
    		method:'POST',
    		
			data : {"title":title, "description":description,
				"category":category,"severity":severity,"reporduciblity":reporduciblity,
				"priroity":priroity,"attachement":attachement,"name":name,"email":email
				
			},
    		async :false,
    		success:function(response){
    			if(response=='success'){
    				alert("E-Mail Sent Successfully");
    				location.reload(true);
    			}
    			else{
    				alert("Sending Email Failed");
    			}
    		}
    	});
    }
</script>

	<script>
  $(function () {
	  var createdDate=$("#createdDateHidden").val();
	     $('#datepicker').datepicker({
	        autoclose: true,
	        todayHighlight: true
	       }).datepicker('update', new Date(createdDate));
	 });
  
  </script>
</body>

</html>
