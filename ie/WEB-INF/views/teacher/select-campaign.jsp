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
<title>Campaign</title>
    <c:if test="${companyName eq '1'}">
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<c:if test="${companyName eq '2'}">
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</head>

<body>
<div class="wrapper">
   <%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        
        <!--inner_header starts-->
        <%-- <div class="inner_header"> <img src="<%=request.getContextPath()%>/NewStyles/images/browse-donation-header.jpg"  alt=""/> </div> --%>
        
        <!--about_us starts-->
        <div class="about_us">
            <div class="content_inner">
                <div class="pracProgress_hdr">
                    <h2>Create a Fund Raising Campaign</h2>
                    <div class="green_line_btm"></div>
                </div>
                <div class="txtcenter_align">
                <p class="regular_txt">Please fill out out the form below to add a Campaign Details</p>
                </div>
            
            
            <%-- 
            <div class="containerSmall">
               <div class="cafrc_wrapper">
                <div class="cafrc_col_1">
                <div class="cafrc_grid">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
				    <tr>
				        <td valign="middle" align="center" class="bg_drk_mahroon nopadtpbtm">P<br>R<br>O<br>G<br>R<br>A<br>M<br>S</td>
				        <td class="bg_lt_mahroon nopadtpbtm" valign="top">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<c:set var="totalCampaignAmount" scope="session" value="0"/>
				    <c:forEach var="schoolClasses" items="${schoolClasses}">
				    <tr>
				        <td align="center" class="bdr_white">class <br>${schoolClasses.schoolClassName}</td>
				        <td align="center" class="bdr_white bg_peech">$${schoolClasses.schoolClassAmount}</td>
				        
				        <c:set var="totalCampaignAmount" scope="session" value="${schoolClasses.schoolClassAmount + totalCampaignAmount}"/>
					</tr>
				    </c:forEach>
				    
					
				</table>
				</td>
				        
				        <td valign="middle" align="center" class="bg_lt_orange nopadtpbtm"><strong>$${totalCampaignAmount}</strong></td>
				    </tr>
			</table>

                </div>
                </div>
                <div class="cafrc_col_2">
                <div class="txtcenter_align">
                <input type="button" onclick="location.href='<%=request.getContextPath()%>/teacher/class-campaign';" value="Start Class Campaign" class="submit-btn mrgtp25">
                </div>
                </div>
                </div>
                </div>  --%>
                
                
                
                 <div class="containerSmall">
                	<div class="bg_drk_mahroon_th">
                	<p>PROGRAMS</p>
                </div>
               <div class="cafrc_wrapper">
               	
                <div class="cafrc_col_1">
                <div class="cafrc_grid">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
				    <tr>
				        <!--<td valign="middle" align="center" class="bg_drk_mahroon nopadtpbtm">P<br>R<br>O<br>G<br>R<br>A<br>M<br>S</td>-->
				        <td class="bg_lt_mahroon nopadtpbtm" valign="top">
				        	<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<c:set var="totalCampaignAmount" scope="session" value="0"/>
				<c:forEach var="schoolClasses" items="${schoolClasses}">
				<tr>
				        <td align="center" class="bdr_white">class <br>${schoolClasses.schoolClassName}</td>
				        <td align="center" class="bdr_white bg_peech">$${schoolClasses.schoolClassAmount}</td>
				        
				        <c:set var="totalCampaignAmount" scope="session" value="${schoolClasses.schoolClassAmount + totalCampaignAmount}"/>
				        
				</tr>
				</c:forEach>
				</table>
				</td>
				        
				        <td valign="middle" align="center" class="bg_lt_orange nopadtpbtm"><strong>$${totalCampaignAmount}</strong></td>
				    </tr>
				</table>

                </div>
                </div>
                <div class="cafrc_col_2">
                <div class="txtcenter_align">
                <input type="button" onclick="location.href='<%=request.getContextPath()%>/teacher/class-campaign';" value="Start Class Campaign" class="submit-btn mrgtp25">
                </div>
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
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %>

</body>
</html>
