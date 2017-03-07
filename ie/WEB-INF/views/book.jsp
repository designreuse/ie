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
<title>Buy Book</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="http://innerexplorer.org/wp-content/themes/compass/css/book.css">

</head>

<body>
<div class="wrapper">
    <header id="header">
    <div class="container ">
        <div class="logo"> <a href="http://innerexplorer.org" title="">
        </a> </div>
    </div>
</header> 
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        
        <!--about_us starts-->
        <div class="about_us">
            <div class="content_inner">
                <div class="pracProgress_hdr">
                    <h2>Buy Book</h2>
                    <div class="green_line_btm"></div>
                    <input type="button" value="Ignore" onclick="ignoreBookPage('${userId}');" 
			class="submit-btn fr"/>
                </div>
                <div class="container">
                <div class="home-mindful-main">
        	<div class="homemindful-img">
            	<img src="<%=request.getContextPath()%>/NewStyles/images/mind-book-bnr.jpg" alt="">
            </div>
            <div class="book-content-hp">
            		<div class="book-name-hp">
                    	Master of mindfulness
                    </div>
                    <div class="book-author-hp">
                    	BY LAURIE GROSSMAN, ANGELINA ALVAREZ | MR. MUSUMECI'S 5TH GRADE CLASS
                    </div>
                    <div class="book-central-hp">
                    	Faster than a speeding spitball, more powerful than a playground bully, able to breeze through homework and finish nightly chores in a single bound, it's "Master of Mindfulness" here to conquer stress, worry, and any trouble that comes your way.
                    </div>
                    
            	</div>
        </div>
                
                
                </div>
               
            </div>
        </div>
        <!--about_us ends--> 
        
        <!--inner_header ends--> 
        <section id="amazon-sale" class="amazon-book-sale">
    	<div class="amazon-head">
        	Get your copy today at these stores
        </div>
        <div class="amazon-book-buy">
        	<ul>
        		<li><a onclick="ignoreBookPage('${userId}');" target="_blank" href="http://www.amazon.com/Master-Mindfulness-Superhero-Times-Stress/dp/1626254648"><img src="<%=request.getContextPath()%>/NewStyles/images/amazon-buy.png"></a></li>
                <li><a onclick="ignoreBookPage('${userId}');" target="_blank" href="http://www.indiebound.org/book/9781626254640"><img src="<%=request.getContextPath()%>/NewStyles/images/amazon-buy-2.png"></a></li>
                <li><a onclick="ignoreBookPage('${userId}');" target="_blank" href="http://www.barnesandnoble.com/w/master-of-mindfulness-laurie-grossman/1122294015?ean=9781626254640"><img src="<%=request.getContextPath()%>/NewStyles/images/amazon-buy-3.png"></a></li>
            </ul>
        </div>
    </section>
    </div>
    <!--inner_wrapper ends--> 
    
</div>

<form action="parentAutoLogin" id="parentAutoLoginForm">
<input id="userId" type="hidden" name="userId">
</form>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>  
   <%@include file="footer.jsp" %>
   <script src="<%=request.getContextPath()%>/NewStyles/js/woco.accordion.min.js"></script> 
   	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript">

jQuery(document).ready
(function($){

	$("#header").sticky({ topSpacing: 0 });
	$.daisyNav();
	
});
function ignoreBookPage(id){
	$("#userId").val(id);
	$("#parentAutoLoginForm").submit();
}
</script>
</body>
</html>
