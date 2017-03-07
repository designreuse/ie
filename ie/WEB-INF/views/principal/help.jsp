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
<title>Help</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>

<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">

</head>

<body>
<div class="wrapper">
<%@include file="header.jsp" %>
	  <!--<section class="slider-inner">
			<img src="images/browse-donation-header.jpg" alt="Slider" />
		</section>-->

		<section class="makeDonateSct mtop-5">
			<div class="container">
	<form:form name="sendHelp" modelAttribute="dtoHelp" action="saveHelp" method="POST">
        
         <div class="pracProgress_hdr">
            <h2>Additional Support Resources</h2>
            <div class="green_line_btm"></div>

            </div>
				
				<div class="clr"></div>
				
				<%-- <div class="getstartForm_teacher_new">
                	<h3> Building the Case</h3>
                    <div class="check_sprt">
						<p><form:checkbox path="checkBox1" value="Y"/> Have you reached out at allumni?</p>
                    </div>   
                    <div class="check_sprt">
						<p><form:checkbox path="checkBox2" value="Y"/> Did you do volunteer efforts?</p>
                    </div> 
                    <div class="check_sprt">
						<p><form:checkbox path="checkBox3" value="Y"/> Have you leverage social media platform?</p>
                    </div>  
				</div> --%>
				
				
				<div class="getstartForm_teacher_new">
                	<h3> Building the Case</h3>
                    <div class="check_sprt">
						<p>Have you reached at <span>18 Alumni</span></p>
                    </div>   
                    <div class="check_sprt">
						<p>You have organised a community sale and Community Lunch</p>
                    </div> 
                    <div class="check_sprt">
						<p>You have leverage social media platform</p>
                        <ul>
                        	<li>
                            	<a href="#"><img src="<%=request.getContextPath()%>/NewStyles/images/facebook.jpg"></a>
                                <p>125</p>
                            </li>
                            <li>
                            	<a href="#"><img src="<%=request.getContextPath()%>/NewStyles/images/twitter.jpg"></a>
                                <p>19</p>
                            </li>
                            <li>
                            	<a href="#"><img src="<%=request.getContextPath()%>/NewStyles/images/linkedin.jpg"></a>
                                <p>45</p>
                            </li>
                            <li><a href="http://smile.amazon.com/ref=smi_ge_rl_rd_gw?_encoding=UTF8&newts=1&pldnNewCustomer=1&ref_=smi_ge_rsr_btnr1_setch#" title="Amazon Smile" target="_blank"><img src="<%=request.getContextPath()%>/NewStyles/images/amazon.png"></a>
                            <p>25</p>
                            </li>
                            <%-- <li>
                            	<a href="#"><img src="<%=request.getContextPath()%>/NewStyles/images/pinterest.jpg"></a>
                                <p>25</p>
                            </li> --%>
                        </ul>
                    </div>
                    
                    <div class="check_sprt">
						<a href="<%=request.getContextPath()%>/NewStyles/pdf/inner-explorer-grant-application-sample-mini.pdf" target="_blank">Mini Grant Application</a>
                    </div>
                    <div class="check_sprt">
						<a href="<%=request.getContextPath()%>/NewStyles/pdf/inner-explorer-grant-application-sample.pdf" target="_blank">Grant Application</a>
                    </div>
                      
				</div>
				
				<div class="support_msg">
					<div class="left_msg">
                    	<label>What value has inner explorer already added to your school?</label>
                        <form:textarea path="textArea1"></form:textarea>
                    </div>
                	<div class="right_msg">
                    	<label>Describe in detail what support do you need?</label>
                        <form:textarea path="textArea2"></form:textarea>
                	</div>
                </div>
										
				<div class="btns-outer mtop10">
					<input type="submit" value="submit" class="submit-btn fl" />
				</div>
	</form:form>
			</div>
		</section>
		
	</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %>
   <script src="<%=request.getContextPath()%>/NewStyles/principal-module/js/jquery.daisynav.min.js"></script> 
   <script type="text/javascript">	
/* 	jQuery(document).ready
	(function($){
		$.daisyNav();
	}); */
	</script>
	
   <script type="text/javascript" src="principal-module/js/jquery.flexisel.js"></script>
   <script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
   
   <script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>

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
	
</script>



</body>
</html>
