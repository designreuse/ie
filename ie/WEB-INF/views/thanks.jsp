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
<title>Thank You</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</head>
<body>
<div class="wrapper">
		<%@include file="header.jsp" %>
<section class="getStartSct mtop-5">
    <div class="steps_getstarted">
			<div class="container">
				<div class="pracProgress_hdr">
     <h2>Thank You</h2>
     <div class="green_line_btm"></div>
     </div>
     <div class="sub_heading_new_ty">
     	You have taken the 1st important step to bring Mindful Awareness Program to a School of your choice
     </div>
     <div class="new_ty_video_main">
     	<iframe width="620" height="315" src="https://www.youtube.com/embed/MMpHsUEo9Dc?enablejsapi=1&playerapiid=myvideo&version=3&rel=0" frameborder="0" allowfullscreen></iframe>
     </div>
     <div class="new_ty-list">
     	<ul>
        	<li>
            	<div class="text-cntr-ty">
                	<h4>Next Steps You Should Take</h4>
                    <p>You need to follow up with school and school can sign up using following steps</p>
                    <ul>
                        <li>An Email has already been sent to the contact for selected school</li>
                        <li>You should follow up with the School Administrator and encourage them to sign up </li>
                        <li>Schools can sign up online at this URL: <a href="http://innerexplorer.org/ie/signup?planId=1">http://innerexplorer.org/ie/signup?planId=1</a></li>
                        <li>Select "Get Started" from the Homepage Banner</li>
                        <li>Choose to be a Pioneer teacher or School Administrator</li>
                        <li>Fill the form and start Inner Explorer experience</li>
                    </ul>
                    <p>Link to Sign up</p>
                    <a href="http://innerexplorer.org/ie/get-started">http://innerexplorer.org/ie/get-started</a>
                </div>
            </li>
            <li>
            	<div class="text-left-ty">
                	<h4>Frequently Asked Questions</h4>
                    <p>We understand that mindful awareness education will be a new concept to many, including students, parents, teachers, and administration. We’re addressing some of the more frequently asked questions about mindful awareness, as well specific questions about how Inner Explorer works.</p>
                </div>
                <div class="text-left-ty-acc">
                	<div class="accordion">
                    	<h1>What is mindful awareness?</h1>
                        <div>
                            Mindfulness (or Mindful Awareness) is about bringing an open awareness to each experience as it’s happening. Think of a task like brushing your teeth or washing dishes. Do you pay attention to the task, or are you lost in thought about some event from the past or a plan for the future? Being mindful is simply paying attention to the teeth brushing or dish washing while you’re doing it. Very few of us really pay attention to activity as it’s happening. When we do, an entirely new world opens up to us. Our direct experiences are all we have…this moment. The more we tune into this moment, the more fully we can live our lives. We learn to slow down the chattering mind and notice our senses, thoughts, and emotions without judging them as right or wrong. We then become familiar with the beauty, wisdom, passion, and compassion that exist inside of us all. It’s learning to appreciate the very foundation of who and what we are. This habit of <span><a href="javascript:;">connecting with each moment has many health and wellness benefits as well.</a></span> It has also been shown to improve focus and attention—very important skills for school-aged children.
                        </div>
                        <h1>What is Mindful-Based Social Emotional Learning (MBSEL)?</h1>
                        <div>
                            An <span><a href="javascript:;">MBSEL evidence-based curriculum</a></span> develops similar values to a traditional SEL curriculum, but the method is entirely different. An MBSEL program helps the children embody the lessons in a holistic and integrated way. By allowing the children to connect with their direct experiences, they learn to honor their own wisdom and their own voice. Values including compassion, kindness, self-control, enthusiasm, openness, and tolerance spring naturally from this process. MBSEL provides the foundation for “Readiness to Learn”.
                        </div>
                        <h1>What is Readiness to Learn?</h1>
                        <div>
                            Readiness to Learn has become a core focus for educators because research has shown it’s a precursor to school success. It’s defined as the ability to regulate emotions and behaviors and to inhibit impulsivity. Readiness is more predictive of academic achievement that IQ! Readiness is developed through Inner Explorer programs because students simultaneously experience a reduction in stress and an increase in attention. No matter what experiences students are exposed to outside of school, these programs allow them to create strong habits of mind and heart through consistent reflective practices. The result is that they improve their grades and test scores.
                        </div>
                        <h1>How is mindful awareness relevant in K-12 education?</h1>
                        <div>
                        	

We are at a critical point in education in the US. We have experienced declining test scores, high dropout rates, and reduced global competitiveness for several decades. Even with recent gains in a few academic categories, many of our children are not adequately prepared to successfully navigate the workforce of the 21st century.<br><br>

Some theorize that the <span><a href="javascript:;">increase in poverty</a></span> is a factor in the decline since chronic stress has been shown to be a <span><a href="javascript:;">significant inhibitor</a></span> to school readiness. In fact,<br><br>

“When a child trying to learn is caught up in a distressing emotion, the centers for learning are temporarily hampered. Because attention is itself a limited capacity, the child has that much less ability to hear, understand or remember what a teacher or book is saying.”  Dr. Dan Goleman, researcher, author<br><br>

Often, the best teachers and the best curriculum can not overcome the trauma and stress that affects so many children. That is where mindful awareness practices can change the game.<br><br>

Children who participate in this type of training have demonstrated improved focus, increased creativity, higher academic performance, less stress and consistent prosocial behaviors. Bolstering these self-regulation skills through mindful awareness training predicts school achievement in reading and mathematics better than their IQ scores. The bottom line is that students improve their grades, rate themselves as more happy/content, and improve their ability to get along with their peers, their teachers and their family members. Discipline issues go down and performance and a sense of community go up.<br><br>

Many experts believe that these practices should be a regular part of the school day!

                        </div>
                        <h1>Does mindful awareness conflict with any religions?</h1>
                        <div>
                        	No, mindfulness is not a system of beliefs. It is simple attention practices that promote full awareness to the present moment. These attention practices allow students to develop the capacity to sustain their focus. This has been shown to improve academic performance. Similar to lifting weights to strengthen muscle tone, attention practices strengthen brain function. All students can participate, just like they would any other part of the school curriculum.
                        </div>
                        <h1>Is there a Program Overview Material available?</h1>
                        <div>
     Yes, Click <a href="<%=request.getContextPath()%>/NewStyles/pdf/ProgramOverviewMaterial.pdf"  title="Program Overview Material" download>Here</a> to download                   	

                        </div>
                        <h1>Can an entire school or district participate?</h1>
                        <div>
                        	Yes, that is the beauty of our <span><a href="javascript:;">Inner Explorer programs.</a></span> An entire school or district can launch the program at the same time and run it throughout the year. Children who participate consistently in the Inner Explorer programs will significantly improve their academic performance, will become more resilient and will likely be happier and more compassionate.
                        </div>
                        
                        <h1>Why should we choose Inner Explorer’s program?</h1>
                        <div>
                        	We’ve created our <span><a href="javascript:;">mindful awareness-based programs</a></span> using the latest scientific research in cognitive neuroscience, and developmental psychology. We’ve also fined-tuned the approach over the past 3 years with direct feedback and guidance from hundreds of teachers, administrators and students. Our programs address the major challenges many school systems face, including academic performance, graduation rates, discipline problems, school climate and bullying. Additionally, our programs are simple to implement and are cost effective so they can be rolled out quickly to deliver significant improvements in student achievement. Most importantly, our programs help children become more compassionate, responsible, and productive citizens.
                        </div>
          			</div>
                </div>
            </li>
        </ul>
     </div>
     <div class="ty_spread_world">
     <input type="button" title="Contact Us" value="Contact Us" 
		                 onclick="window.location.href='http://innerexplorer.org/#contact'" 
		                 class="startBtn float-none mtop20">
     	<p>Spread the Word</p>
        <p><a href="javascript:;"><img src="<%=request.getContextPath()%>/NewStyles/images/linkedin-ty.png" alt=""><a href="javascript:;"><img src="<%=request.getContextPath()%>/NewStyles/images/facebook-ty.png" alt=""><a href="javascript:;"><img src="<%=request.getContextPath()%>/NewStyles/images/twitter-ty.png" alt=""><a href="javascript:;"><img src="<%=request.getContextPath()%>/NewStyles/images/amazon-ty.png" alt=""></a></p>
     </div>
			</div>
      </div>
		</section>
	</div>
<form action="signup" method="GET" id="subscriptionForm">
    <input type="hidden" name="planId" id="planId"/>
</form>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript">
function selectPlan(plan){
	document.getElementById("planId").value = plan;
	document.getElementById("subscriptionForm").submit();
}
</script>
<script>
jQuery(document).ready
(function($){
	
	  $("#login").click(function(e) {
	        $(".login_panel").toggle();
	        e.stopPropagation();
	    });

	    $(document).click(function(e) {
	        if (!$(e.target).is('.login_panel, .login_panel *')) {
	            $(".login_panel").hide();
	        }
	    });
	
	$("#header").sticky({ topSpacing: 0 });
	$(".fancybox").fancybox();
	
	$.daisyNav();
	
});
</script>
   <script src="<%=request.getContextPath()%>/NewStyles/js/woco.accordion.min.js"></script> 
	<script>
	$(".accordion").accordion();
</script>
</body>
</html>
