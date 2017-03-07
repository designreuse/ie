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
<title>Inner Explorer </title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
</head>
<body>
<div class="wrapper">
 <%@include file="header.jsp" %>
   <!--inner_wrapper starts-->
     <!--teacher_dashboard_main starts-->
     <section class="tehDsh-step1 mtop-5">
			<div class="containerSmall">
				<h2>Congratulations</h2>
				<div class="green_line_btm"></div>
				<div class="txtcenter_align mrgtp25">
				<c:if test="${paymentTypeMsg == 1}">
					<p>
		 				You have opted for account for unlimited sessions. 
					</p>
				</c:if>
				<c:if test="${paymentTypeMsg != 1} ">
					<p>
		 				You have opted for your account for one year school program. 
					</p>
				</c:if>
					<p>
		 				Please look into your registered email id for account verification link and more details of subscribed account.
					</p>
					</div>
				 <div class="txtcenter_align mrgtp25">
						<input type="button" value="Login" class="greenBtn-center" onclick="location.href='<%=request.getContextPath()%>/login';"/>
					</div>
			</div>
			<div class="clr mtop30"></div>
			
			<div class="getStarted-Social">
				<div class="SocialSct">
          <div class="SocialSct-lt">
            <p>Inner Explorer, 430 Franklin Village Dr. #325, 
              Franklin, MA, 02038</p>
            <p><img src="<%=request.getContextPath()%>/NewStyles/images/mail-icon.png" alt=""> <a href="mailto:info@innerexplorer.org">info@innerexplorer.org</a> </p>
          </div>
          <div class="SocialSct-rt">
            <p>Share us on</p>
            <div class="social-icons"> 
            <a href="http://www.linkedin.com/shareArticle?mini=true&url=${baseURL}" class="l-in" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;" title="Linkedin"></a>
            <a class="fb" href="http://www.facebook.com/sharer.php?u=${baseURL}" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;" title="Facebook"></a>
            <a class="tw" href="https://twitter.com/share?url=${baseURL}" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;" title="Twitter"></a>
            <a class="p-rest" href="https://smile.amazon.com/" class="pin-it-button" title="Amazon Smile" target="_blank"></a>
          </div>
          </div>
        </div>
        </div>
	</section>
     <!--teacher_dashboard_main ends-->
    <!--inner_header ends-->
    </div>
    <!--inner_wrapper ends-->
<!-- </div> -->
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
<script type="text/javascript">	
	$(document).ready
	(function($){
		$(".fancybox").fancybox();
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
    	
</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
  <script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
    });
  </script>
</body>
</html>
