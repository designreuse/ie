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
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
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
<section class="getStartSct mtop-5">
    
        <div class="pracProgress_hdr margin-btm-zero">
            <h2>Pay it Forward</h2>
            <div class="green_line_btm"></div>
            <h3 class="teachr_dsh bdr-btm-none">${loginName}, you have generated more than required for this session. How would you like to pay it forward</h3>
        </div>
        <div class="payee-main">
        	<div class="container">
        		<div class="listing-section"> 
        			<ul>
        				<li>
                    		<a href="<%=request.getContextPath()%>/principal/payeeForwardFund" class="list-payee">&nbsp;</a>
            			</li>   
            			<li>
                    		<a href="<%=request.getContextPath()%>/principal/payeeForwardFund" class="list-payee-2">&nbsp;</a>
            			</li>  
            			<li>
                    		<a href="<%=request.getContextPath()%>/principal/payeeForwardFund" class="list-payee-3">&nbsp;</a>
            			</li>  	
            		</ul>
        		</div>
                <div class="schl-srch">
                	<div class="srch-schl-in">
                    	<div class="srch-schl-inner">
                    		<input type="text" placeholder="Mention your preffered School">
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
   
	
   <script type="text/javascript" src="principal-module/js/jquery.flexisel.js"></script>
   <script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
   
   <script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>

<script type="text/javascript">


</script>


</body>
</html>
