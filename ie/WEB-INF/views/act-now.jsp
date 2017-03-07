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
<title>Act now</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
</head>

<body>
<div class="wrapper">
<%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        
        <!--inner_header starts-->
        <!--<div class="inner_header"> <img src="images/browse-donation-header.jpg"  alt=""/> </div>-->
        
        <!--about_us starts-->
        <div class="about_us">
            <div class="content_inner">
                <div class="pracProgress_hdr">
                    <h2>Act Now</h2>
                    <div class="green_line_btm"></div>
                </div>
                
                <div class="act_detail_img">
                <img src="<%=request.getContextPath()%>/NewStyles/images/act.jpg"  alt=""/> 
                </div>
               	
                <div class="act-cntnt">
                	<div class="left-act-cntnt">
                        
                      <div class="steps-act">
                        	<ul>
                        		<li><h3 class="act-step-1">Tell Your Friends About Inner Explorer</h3></li>
                                <li>
                                	<div class="act-sharing-new">
                                    	<a href="http://www.linkedin.com/shareArticle?mini=true&url=${baseURL}" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;" title="Linkedin"><img src="<%=request.getContextPath()%>/NewStyles/images/act-link.png"></a>
                                        <a href="http://www.facebook.com/sharer.php?u=${baseURL}" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;" title="Facebook"><img src="<%=request.getContextPath()%>/NewStyles/images/act-fb.png"></a>
                                        <a href="https://twitter.com/share?url=${baseURL}" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;" title="Twitter"><img src="<%=request.getContextPath()%>/NewStyles/images/act-twt.png"></a>
                                        <%-- <a href="http://pinterest.com/pin/create/button/?url=http://innerexplorer.org&media=https://www.innerexplorer.org/wp-content/uploads/2014/12/inner-explorer-mindful-awareness-in-schools.jpg&description=Compass" class="pin-it-button" count-layout="none" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;" title="Pinterest"><img src="<%=request.getContextPath()%>/NewStyles/images/act-pin.png"></a> --%>
                                        <a href="http://smile.amazon.com/ref=smi_ge_rl_rd_gw?_encoding=UTF8&newts=1&pldnNewCustomer=1&ref_=smi_ge_rsr_btnr1_setch#" title="Amazon Smile" target="_blank"><img src="<%=request.getContextPath()%>/NewStyles/images/amazon.png"></a>
                                    </div>
                                </li>
                            	<li><h3 class="act-step-2">Follow us on Social Media Channels</h3></li>
                            	 <li>
                                	<div class="act-sharing-new">
                                    	<a href="https://www.linkedin.com/company/inner-explorer-inc-" target="_blank" title="Linkedin"><img src="<%=request.getContextPath()%>/NewStyles/images/act-link.png"></a>
                                        <a href="https://www.facebook.com/InnerExplorer" target="_blank" title="Facebook"><img src="<%=request.getContextPath()%>/NewStyles/images/act-fb.png"></a>
                                        <a href="https://twitter.com/Inner_Explorer" target="_blank" title="Twitter"><img src="<%=request.getContextPath()%>/NewStyles/images/act-twt.png"></a>
                                        <%-- <a href="http://pinterest.com/pin/create/button/?url=http://innerexplorer.org&media=https://www.innerexplorer.org/wp-content/uploads/2014/12/inner-explorer-mindful-awareness-in-schools.jpg&description=Compass" class="pin-it-button" count-layout="none" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;" title="Pinterest"><img src="<%=request.getContextPath()%>/NewStyles/images/act-pin.png"></a> --%>
                                        <a href="http://smile.amazon.com/ref=smi_ge_rl_rd_gw?_encoding=UTF8&newts=1&pldnNewCustomer=1&ref_=smi_ge_rsr_btnr1_setch#" title="Amazon Smile" target="_blank"><img src="<%=request.getContextPath()%>/NewStyles/images/amazon.png"></a>
                                    </div>
                                </li>
                            	<li><h3 class="act-step-3">Take Action, Join the Revolution</h3></li>
                          </ul>
                        </div>
				
				<section class="started_listing_new">
  	<div class="container">
    	<div class="listing-section-new"> 
        	<ul>
        		<li>
            		
                    <a href="<%=request.getContextPath()%>/signup-step1" class="list-admn-new">&nbsp;</a>
                    <p>As a School Administrator, I am interested in rolling-out
Mindful Awareness Program</p>
            	</li>   
            	<li>
            		
                    <a href="<%=request.getContextPath()%>/teacher-signon" class="list-tch-new">&nbsp;</a>
                    <p>As a Teacher, I am interested in starting a Mindful Awareness Program for my class</p>
            	</li>  
            	<li>
            		
                    <a href="<%=request.getContextPath()%>/home-edition" class="list-parnt-new">&nbsp;</a>
                    <p>As a Parent, I am interested in bringing Mindul Awareness Program to my kid’s class</p>
            	</li>  	
            </ul>
        </div>
    </div>
  </section> 
				
				
                    </div>
                    
                    <div class="rght-act-cntnt">
                    	<!-- <h3>Video of the Day</h3> -->
                   
                        <div class="latest-twts">
                        	<h3>Latest Tweets</h3>
                        	
                        	
                        	<a class="twitter-timeline" href="https://twitter.com/Inner_Explorer" data-widget-id="699308146817372160">Tweets by @Inner_Explorer</a>
                        	
                        	
                        	<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?
                        			'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";
                        			fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
                           
                        </div>
                    </div>
                    
                </div> 
                
             
               
            </div>
        </div>
        <!--about_us ends--> 
        
        <!--inner_header ends--> 
        
    </div>
    <!--inner_wrapper ends--> 
</div>
<form action="signup" method="GET" id="subscriptionForm">
    <input type="hidden" name="planId" id="planId"/>
     
</form>
<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.fancybox.pack.js?v=2.1.5"></script>
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
</body>
</html>
