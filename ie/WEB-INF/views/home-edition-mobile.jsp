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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/book.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/home-edition.css">
</head>

<body>

<div class="wrapper">
		<%@include file="header.jsp" %>
       
       <section class="he-mobile-main">
        <div class="he-banner-mobile">
    		<div class="container">
    			<div class="he-mobile-txt">
                	<div class="he-mobile-name">
                    	H<img src="<%=request.getContextPath()%>/NewStyles/images/he-icon.png">me
                    </div>
                    <div class="he-mobile-name">
                    	Edition
                    </div>
                </div>
        	</div>
            </div>
            <h3>You might be hearing about mindfulness a lot lately - but what is it really? Mindfulness or mindful awareness is the practice of paying attention to the present moment on purpose without judgment. </h3>
    	</section>
    	<div class="he-mobile-head">
        	BENEFITS of PROGRAM
        </div>
        <div class="he-mobile-list-first">
        	<ul>
            	<li>
                	<a href="javascript:;" onclick="showDiv('academic')"><h5 class="ace-ben">Academic Benefits</h5></a>
                    <div class="ace-dtl-none" id="academic">
                    	<h5>Improved Grades and Test Scores</h5>
                        <h5>Improved Climate for Learning</h5>
                        <h5>Improved Participation & Engagement</h5>
                        <h5>Increased Social Awareness</h5>
                        <h5>Improved Focus and Self-control</h5>
                    </div>
                </li>
                <li>
                	<a href="javascript:;" onclick="showDiv('health')"><h5 class="hea-ben">Health Benefits</h5></a>
                    <div class="hea-dtl-none" id="health">
                    	<h5>Reduced anxiety and stress</h5>
                        <h5>Enhanced immune function</h5>
                        <h5>Improved Sleep</h5>
                        <h5>Enhanced feelings of wellbeing</h5>
                        <h5>Increased resilience</h5>
                    </div>
                </li>
                <li>
                	<a href="javascript:;" onclick="showDiv('overall')"><h5 class="ove-ben">Overall Benefits</h5></a>
                    <div class="ove-dtl-none" id="overall" >
                    	<h5>Reduced behavioral conflict including bullying</h5>
                        <h5>Lower school dropout rate</h5>
                        <h5>Reduce the likelihood of juvenile crime</h5>
                        <h5>Educational outcomes that help decrease poverty</h5>
                        <h5>Management of emotional stress, outside classroom</h5>
                    </div>
                </li>
            </ul>
        </div>
        <div class="he-mobile-head">
        	Experience Home Edition
        </div>
        <div class="he-mobile-list">
        	<ul>
            	<li>
                	<a href="<%=request.getContextPath()%>/home-edition-new"><h3>Subscription Price for 3 Months<span>$10</span></h3>
                    <h4>SIGN UP NOW</h4></a>
                </li>
                <li>
                	<a href="<%=request.getContextPath()%>/home-edition-new"><h3>Subscription Price for 1 Year<span>$30</span></h3>
                    <h4>SIGN UP NOW</h4></a>
                </li>
            </ul>
            <div class="he-mobile-btn">
            	<a href="<%=request.getContextPath()%>/home-edition-learn">Learn More</a>
            </div>
        </div> 
    
	</div>

<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>

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

function showDiv(showOption){
	if(showOption=='academic'){
		var classace=$("#academic").attr('class');
		if(classace=='ace-dtl-none'){
		$("#academic").addClass('ace-dtl');
		$("#academic").removeClass('ace-dtl-none');
		$("#health").addClass('hea-dtl-none');
		$("#overall").addClass('ove-dtl-none');
		$("#health").removeClass('hea-dtl');
		$("#overall").addClass('ove-dtl');
		
		}
		else
		{
		$("#academic").addClass('ace-dtl-none');
		$("#academic").removeClass('ace-dtl');
		$("#health").addClass('hea-dtl-none');
		$("#overall").addClass('ove-dtl-none');
		$("#health").removeClass('hea-dtl');
		$("#overall").addClass('ove-dtl');
		}
	}
	
	if(showOption=='health'){
		var classace=$("#health").attr('class');
		if(classace=='hea-dtl-none'){
		$("#health").addClass('hea-dtl');
		$("#health").removeClass('hea-dtl-none');
		$("#overall").addClass('ove-dtl-none');
		$("#academic").addClass('ace-dtl-none');
		$("#overall").removeClass('ove-dtl');
		$("#academic").removeClass('ace-dtl');
		}
		else
		{
		$("#health").addClass('hea-dtl-none');
		$("#health").addClass('hea-dtl');
		$("#overall").addClass('ove-dtl-none');
		$("#academic").addClass('ace-dtl-none');
		$("#overall").removeClass('ove-dtl');
		$("#academic").removeClass('ace-dtl');
		}
	}
	
	
	if(showOption=='overall'){
		var classace=$("#overall").attr('class');
		if(classace=='ove-dtl-none'){
		$("#overall").addClass('ove-dtl');
		$("#overall").removeClass('ove-dtl-none');
		$("#health").addClass('hea-dtl-none');
		$("#academic").addClass('ace-dtl-none');
		$("#health").removeClass('hea-dtl');
		$("#academic").removeClass('ace-dtl');
		}
		else
		{
		$("#overall").addClass('ove-dtl-none');
		$("#overall").removeClass('ove-dtl');
		$("#health").addClass('hea-dtl-none');
		$("#academic").addClass('ace-dtl-none');
		$("#health").removeClass('hea-dtl');
		$("#academic").removeClass('ace-dtl');
		}
	}
	
	
	
}

</script>
</body>
</html>
