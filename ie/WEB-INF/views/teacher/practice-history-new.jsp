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
<title>Practice History</title>
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
   <%--  <header id="header">
        <div class="container ">
            <div class="logo"> <a href="index.html" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/logo.jpg" alt="Inner Explorer" title="Inner Explorer" /></a> </div>
        </div>
    </header> --%>
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        
        <!--inner_header starts-->
        <!--<div class="inner_header"> <img src="<%=request.getContextPath()%>/NewStyles/images/browse-donation-header.jpg"  alt=""/> </div>-->
        
        <!--about_us starts-->
        <div class="about_us">
            <div class="content_inner">
                <div class="pracProgress_hdr">
                    <h2>Practice History</h2>
                    <div class="green_line_btm"></div>
                </div>
                <div class="week_months">
                <ul>
                <li id="mtab1" class="selected"><a href="javascript:showTab(1,2)">Week</a></li>
                <li id="mtab2" ><a href="javascript:showTab(2,2)">Month</a></li>
                </ul>
                </div>

            <div class="weekly_details" id="tab1">
            <div class="current_week">
            <a class="arrow_gray_lft" href="javascript:;"></a>
            <a class="arrow_gray_rt" href="javascript:;"></a>
            <h3>Week 24</h3>
            <h3>October 01 - 31, 2015</h3>
            </div>
            
            <div class="grid_weekly">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <th width="20%"><span>October 01</span> <span>Thursday</span></th>
        <th width="20%"><span>October 02</span> <span>Friday</span></th>
        <th width="20%" class="today-date"><span>October 05</span> <span>Monday</span></th>
        <th width="20%"><span>October 06</span> <span>Tuesday</span></th>
        <th width="20%"><span>October 07</span> <span>Wednesday</span></th>
    </tr>
    <tr>
        <td><p>Track 1</p>
        <p>Elementary : Mindful Minute</p>
        <div class="clr"></div>
        <a href="javascript:;" class="playbtns">Repeat</a>
        <!--<a href="javascript:;" class="playbtns">Play Bonus Track</a>-->
        <div class="star_rating">
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      </div>
      <div class="clr"></div>
      <p>Audio Quality: Good</p>
      <p>No. of Students : 20</p>
      <a href="javascript:;" class="session_sum">Session Summary</a>
        </td>
        <td><p>Track 2</p>
        <p>Elementary : Chattering Mind</p>
        <div class="clr"></div>
        <a href="javascript:;" class="playbtns">Repeat</a>
        <div class="star_rating">
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      </div>
      <div class="clr"></div>
      <p>Audio Quality: Good</p>
      <p>No. of Students : 20</p>
      <a href="javascript:;" class="session_sum">Session Summary <span class="hov_show"><img src="<%=request.getContextPath()%>/NewStyles/images/notifiy.png"> <div class="text">
        	<img src="<%=request.getContextPath()%>/NewStyles/images/feed-back.png">
        </div></span></a>
      	
        </td>
        <td><p>Track 3</p>
        <p>Elementary : Carried Away</p>
        <div class="clr"></div>
        <a href="javascript:;" class="play-btn-grn"><img src="<%=request.getContextPath()%>/NewStyles/images/play.png"></a>
        </td>
                     <td><p>Track 4</p>
        <p>Middle School: Body Scan</p>
        <div class="clr"></div>
        <a href="javascript:;" class="play-btn-grn"><img src="<%=request.getContextPath()%>/NewStyles/images/play-grey.png"></a>
        </td>
        <td><p>Track 3</p>
        <p>Middle School: Relaxation</p>
        <div class="clr"></div>
        <a href="javascript:;" class="play-btn-grn"><img src="<%=request.getContextPath()%>/NewStyles/images/play-grey.png"></a>
        </td>
    </tr>
</table>

            
            </div>
            
            </div>
            
            
            <div class="weekly_details" id="tab2" style="display:none;">
            <div class="current_week">
            <a class="arrow_gray_lft" href="javascript:;"></a>
            <a class="arrow_gray_rt" href="javascript:;"></a>
            
            <h3 class="margin-top">October 2015</h3>
            </div>
            
            <div class="grid_weekly">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <th width="20%"><span>October 01</span> <span>Thursday</span></th>
        <th width="20%"><span>October 02</span> <span>Friday</span></th>
        <th width="20%"><span>October 05</span> <span>Monday</span></th>
        <th width="20%"><span>October 06</span> <span>Tuesday</span></th>
        <th width="20%"><span>October 07</span> <span>Wednesday</span></th>
    </tr>
    <tr>
        <td><p>Track 1</p>
        <p>Elementary : Mindful Minute</p>
        <div class="clr"></div>
        <a href="javascript:;" class="playbtns">Repeat</a>
        <!--<a href="javascript:;" class="playbtns">Play Bonus Track</a>-->
        <div class="star_rating">
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      </div>
      <div class="clr"></div>
      <p>Audio Quality: Good</p>
      <p>No. of Students : 20</p>
      <a href="javascript:;" class="session_sum">Session Summary</a>
        </td>
        <td><p>Track 2</p>
        <p>Elementary : Chattering Mind</p>
        <div class="clr"></div>
        <a href="javascript:;" class="playbtns">Repeat</a>
        <div class="star_rating">
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      </div>
      <div class="clr"></div>
      <p>Audio Quality: Good</p>
      <p>No. of Students : 20</p>
      <a href="javascript:;" class="session_sum">Session Summary <span class="hov_show"><img src="<%=request.getContextPath()%>/NewStyles/images/notifiy.png"> <div class="text">
        	<img src="<%=request.getContextPath()%>/NewStyles/images/feed-back.png">
        </div></span></a>
        </td>
        <td><p>Track 3</p>
        <p>Elementary : Mindful Minute</p>
        <div class="clr"></div>
        <a href="javascript:;" class="playbtns">Repeat</a>
        <!--<a href="javascript:;" class="playbtns">Play Bonus Track</a>-->
        <div class="star_rating">
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      </div>
      <div class="clr"></div>
      <p>Audio Quality: Good</p>
      <p>No. of Students : 20</p>
      <a href="javascript:;" class="session_sum">Session Summary</a>
        </td>
        <td><p>Track 4</p>
        <p>Elementary : Chattering Mind</p>
        <div class="clr"></div>
        <a href="javascript:;" class="playbtns">Repeat</a>
        <!--<a href="javascript:;" class="playbtns">Play Bonus Track</a>-->
        <div class="star_rating">
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      </div>
      <div class="clr"></div>
      <p>Audio Quality: Good</p>
      <p>No. of Students : 20</p>
      <a href="javascript:;" class="session_sum">Session Summary</a>
        </td>
        <td><p>Track 5</p>
        <p>Elementary : Chattering Mind</p>
        <div class="clr"></div>
        <a href="javascript:;" class="playbtns">Repeat</a>
        <div class="star_rating">
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      </div>
      <div class="clr"></div>
      <p>Audio Quality: Good</p>
      <p>No. of Students : 20</p>
      <a href="javascript:;" class="session_sum">Session Summary <span class="hov_show"><img src="<%=request.getContextPath()%>/NewStyles/images/notifiy.png"> <div class="text">
        	<img src="<%=request.getContextPath()%>/NewStyles/images/feed-back.png">
        </div></span></a>
        </td>
                     
        
    </tr>
</table>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <th width="20%"><span>October 08</span> <span>Thursday</span></th>
        <th width="20%"><span>October 09</span> <span>Friday</span></th>
        <th width="20%"><span>October 12</span> <span>Monday</span></th>
        <th width="20%"><span>October 13</span> <span>Tuesday</span></th>
        <th width="20%"><span>October 14</span> <span>Wednesday</span></th>
    </tr>
    <tr>
        <td><p>Track 6</p>
        <p>Elementary : Mindful Minute</p>
        <div class="clr"></div>
        <a href="javascript:;" class="playbtns">Repeat</a>
        <!--<a href="javascript:;" class="playbtns">Play Bonus Track</a>-->
        <div class="star_rating">
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      </div>
      <div class="clr"></div>
      <p>Audio Quality: Good</p>
      <p>No. of Students : 20</p>
      <a href="javascript:;" class="session_sum">Session Summary</a>
        </td>
        <td><p>Track 7</p>
        <p>Elementary : Chattering Mind</p>
        <div class="clr"></div>
        <a href="javascript:;" class="playbtns">Repeat</a>
        <div class="star_rating">
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      </div>
      <div class="clr"></div>
      <p>Audio Quality: Good</p>
      <p>No. of Students : 20</p>
      <a href="javascript:;" class="session_sum">Session Summary <span class="hov_show"><img src="<%=request.getContextPath()%>/NewStyles/images/notifiy.png"> <div class="text">
        	<img src="<%=request.getContextPath()%>/NewStyles/images/feed-back.png">
        </div></span></a>
        </td>
        <td><p>Track 8</p>
        <p>Elementary : Carried Away</p>
        <div class="clr"></div>
        <a href="javascript:;" class="playbtns">Repeat</a>
        <!--<a href="javascript:;" class="playbtns">Play Bonus Track</a>-->
        <div class="star_rating">
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      </div>
      <div class="clr"></div>
      <p>Audio Quality: Good</p>
      <p>No. of Students : 20</p>
      <a href="javascript:;" class="session_sum">Session Summary</a>
        </td>
        <td><p>Track 9</p>
        <p>Middle School: Body Scan</p>
        <div class="clr"></div>
        <a href="javascript:;" class="playbtns">Repeat</a>
        <!--<a href="javascript:;" class="playbtns">Play Bonus Track</a>-->
        <div class="star_rating">
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      </div>
      <div class="clr"></div>
      <p>Audio Quality: Good</p>
      <p>No. of Students : 20</p>
      <a href="javascript:;" class="session_sum">Session Summary</a>
        </td>
        <td><p>Track 10</p>
        <p>Middle School: Relaxation</p>
        <div class="clr"></div>
        <a href="javascript:;" class="playbtns">Repeat</a>
        <div class="star_rating">
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      </div>
      <div class="clr"></div>
      <p>Audio Quality: Good</p>
      <p>No. of Students : 20</p>
      <a href="javascript:;" class="session_sum">Session Summary <span class="hov_show"><img src="<%=request.getContextPath()%>/NewStyles/images/notifiy.png"> <div class="text">
        	<img src="<%=request.getContextPath()%>/NewStyles/images/feed-back.png">
        </div></span></a>
        </td>
                     
        
    </tr>
</table>


			<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <th width="20%"><span>October 15</span> <span>Thursday</span></th>
        <th width="20%"><span>October 16</span> <span>Friday</span></th>
        <th width="20%" class="today-date"><span>October 19</span> <span>Monday</span></th>
        <th width="20%"><span>October 20</span> <span>Tuesday</span></th>
        <th width="20%"><span>October 21</span> <span>Wednesday</span></th>
    </tr>
    <tr>
        <td><p>Track 11</p>
        <p>Elementary : Mindful Minute</p>
        <div class="clr"></div>
        <a href="javascript:;" class="playbtns">Repeat</a>
        <!--<a href="javascript:;" class="playbtns">Play Bonus Track</a>-->
        <div class="star_rating">
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      </div>
      <div class="clr"></div>
      <p>Audio Quality: Good</p>
      <p>No. of Students : 20</p>
      <a href="javascript:;" class="session_sum">Session Summary</a>
        </td>
        <td><p>Track 12</p>
        <p>Elementary : Chattering Mind</p>
        <div class="clr"></div>
        <a href="javascript:;" class="playbtns">Repeat</a>
        <div class="star_rating">
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""></span>
      </div>
      <div class="clr"></div>
      <p>Audio Quality: Good</p>
      <p>No. of Students : 20</p>
      <a href="javascript:;" class="session_sum">Session Summary <span class="hov_show"><img src="<%=request.getContextPath()%>/NewStyles/images/notifiy.png"> <div class="text">
        	<img src="<%=request.getContextPath()%>/NewStyles/images/feed-back.png">
        </div></span></a>
        </td>
        <td><p>Track 13</p>
        <p>Elementary : Carried Away</p>
        <div class="clr"></div>
        <a href="javascript:;" class="play-btn-grn"><img src="<%=request.getContextPath()%>/NewStyles/images/play.png"></a>
        </td>
                     <td><p>Track 14</p>
        <p>Middle School: Body Scan</p>
        <div class="clr"></div>
        <a href="javascript:;" class="play-btn-grn"><img src="<%=request.getContextPath()%>/NewStyles/images/play-grey.png"></a>
        </td>
        <td><p>Track 15</p>
        <p>Middle School: Relaxation</p>
        <div class="clr"></div>
        <a href="javascript:;" class="play-btn-grn"><img src="<%=request.getContextPath()%>/NewStyles/images/play-grey.png"></a>
        </td>
    </tr>
</table>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <th width="20%"><span>October 22</span> <span>Thursday</span></th>
        <th width="20%"><span>October 23</span> <span>Friday</span></th>
        <th width="20%"><span>October 26</span> <span>Monday</span></th>
        <th width="20%"><span>October 27</span> <span>Tuesday</span></th>
        <th width="20%"><span>October 28</span> <span>Wednesday</span></th>
    </tr>
    <tr>
        <td><p>Track 16</p>
        <p>Elementary : Mindful Minute</p>
        <div class="clr"></div>
        <a href="javascript:;" class="play-btn-grn"><img src="<%=request.getContextPath()%>/NewStyles/images/play-grey.png"></a>
        </td>
        <td><p>Track 17</p>
        <p>Elementary : Chattering Mind</p>
        <div class="clr"></div>
        <a href="javascript:;" class="play-btn-grn"><img src="<%=request.getContextPath()%>/NewStyles/images/play-grey.png"></a>
        </td>
        <td><p>Track 18</p>
        <p>Elementary : Carried Away</p>
        <div class="clr"></div>
        <a href="javascript:;" class="play-btn-grn"><img src="<%=request.getContextPath()%>/NewStyles/images/play-grey.png"></a>
        </td>
        <td><p>Track 19</p>
        <p>Middle School: Body Scan</p>
        <div class="clr"></div>
        <a href="javascript:;" class="play-btn-grn"><img src="<%=request.getContextPath()%>/NewStyles/images/play-grey.png"></a>
        </td>
        <td><p>Track 20</p>
        <p>Middle School: Relaxation</p>
        <div class="clr"></div>
        <a href="javascript:;" class="play-btn-grn"><img src="<%=request.getContextPath()%>/NewStyles/images/play-grey.png"></a>
        </td>
    </tr>
</table>

            
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
<!--tab start -->
<script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/tab.js" ></script>
<script language="javascript">
				function showTab(current,max){
					for (i=1;i<=max;i++){
					getMyHTMLElement('tab' + i).style.display = 'none';
					getMyHTMLElement('mtab' + i).className = '';
					}
					getMyHTMLElement('tab' + current).style.display = '';
					getMyHTMLElement('mtab' + current).className = 'selected';
					}
</script>
<!--tab end -->

</body>
</html>


