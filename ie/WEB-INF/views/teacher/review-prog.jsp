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
<title>Review Program</title>
    <c:if test="${companyName eq '1'}">
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<c:if test="${companyName eq '2'}">
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>

<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<style>
.tar_wrapper .progress{overflow: inherit !important;}
</style>
</head>

<body>
<div class="wrapper">
<%@include file="header.jsp" %>
	  <!--<section class="slider-inner">
			<img src="images/browse-donation-header.jpg" alt="Slider" />
		</section>-->

		<section class="makeDonateSct mtop-5">
			<div class="container">
			
        
         <div class="pracProgress_hdr">
            <h2>Review Program</h2>
            <div class="green_line_btm"></div>

            </div>
				
				<div class="clr"></div>
                <div class="review-prog-con">
               		<div class="prog-details bdr-radius-6">
                    	<div class="hdr">Program Details</div>
                        <div class="prog-detailsTxt">
                        	<div class="pDetailsRow">
                            	<p>Selected Programs : <span id="progCount"></span></p>
                                <div class="pNames">
                                	<label>Program Names</label>
                                    <div class="label-Txt">
                                    	<ul>
                                   <c:forEach items="${programsList}" var="program" varStatus="programCount" begin="0" end="3">
											<li>
                                                <a href="javascript:;" id="progClass_${program.programId}" class="bdr-radius-6">${program.programDescDetail}</a>
                                            </li>
								</c:forEach>
                                        </ul>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
    	$.each(${programs},function(index,value){
			//$('#programImg_'+value).attr('onclick','showProgramContent('+value+')');
			$('#check_'+value).attr('checked','checked');
			$('#progClass_'+value).addClass('sltd');
			$('#progCount').html((index+1));
		});
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
