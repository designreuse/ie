<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%          response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server

            response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance

            response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
            response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility 
 %>

<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Parent</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
</head>

<body>
<spring:eval var="bucketPath" expression="@propertyConfigurer.getProperty('bucket_path')" />
<div class="wrapper">
<%@include file="header.jsp" %>
<!--<section class="slider-inner"> <img src="images/slider1.jpg" alt="Slider" /> </section>-->
<section class="getStartSct mtop-5">
    <div class="content_inner">
        <div class="pracProgress_hdr">
            <h2>Home Edition Dashboard</h2>
            <div class="green_line_btm"></div>
            <h3 class="teachr_dsh bdr-btm-none">Start your Inner Explorer experience today</h3>
        </div>
        <div class="manage_content">
            
            <div class="mc_col_2">
                <div class="mc_content">
                    <!--<h5>Tracks of Pre-K-Kindergarten</h5>-->
                    <div class="mc_track_wrap">
                     
                     <c:forEach var="i" begin="1" end="15">
                        <div class="mc_grid_row">
                        	 <p class="dash-text-right padding-right padding-top">Before Dinner <c:out value="${i}"/></p>
                            <div class="lg_player"><%-- <img src="<%=request.getContextPath()%>/NewStyles/images/player-bar-lg2.jpg" alt=""/> --%>
                            
                            <audio preload="none" controls>
						  		<source src="${bucketPath}/audioFiles/getStarted.mp3" type="audio/mpeg">
							</audio>
                            
                            </div> 
                            
                           	<%-- <audio preload="none" controls>
						  		<source id="audioTrack" src="<%=request.getContextPath()%>/audioFiles/getStarted.mp3" type="audio/mpeg">
							</audio> --%>
                            
                        </div>
					</c:forEach>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<footer>
    <div class="container">
        <div class="footerLeft">
            <p>Copyright © 2015 Inner Explorer</p>
        </div>
        <div class="footerRight">
            <ul>
                <li><a href="javascript:;">Privacy Policy</a></li>
                <li><a href="javascript:;">Terms & Conditions</a></li>
            </ul>
        </div>
    </div>
</footer>

<!--change track modal starts-->

<div id="popup1" class="modal-box">
<div class="modal_change_track">
<div class="modal_bodycont">

<a class="cls-btn js-modal-close close" href="#">X</a>

<h5>Change Track</h5>
<div class="change_track">
<label>Select Track</label>
<div class="inputcontain">
<input type="text" class="input_upl_track">
<input type="button" value="Change Track" class="change_trackbtn">
</div>
<div class="browse_changtrk">
<span>Browse</span>
<input type="file">
</div>
</div>
</div>
</div>
</div>
<!--change track modal ends-->

<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.mCustomScrollbar.concat.min.js"></script> 
<script>
		(function($){
			$(window).load(function(){
				$(".mc_track_wrap").mCustomScrollbar();
			});
		})(jQuery);
	</script>
  
  <script>
$(function(){

var appendthis =  ("<div class='modal-overlay js-modal-close'></div>");

	$('a[data-modal-id]').click(function(e) {
		e.preventDefault();
    $("body").append(appendthis);
    $(".modal-overlay").fadeTo(500, 0.7);
    //$(".js-modalbox").fadeIn(500);
		var modalBox = $(this).attr('data-modal-id');
		$('#'+modalBox).fadeIn($(this).data());
	});  
  
  
$(".js-modal-close, .modal-overlay").click(function() {
    $(".modal-box, .modal-overlay").fadeOut(500, function() {
        $(".modal-overlay").remove();
    });
 
});
 
$(window).resize(function() {
    $(".modal-box").css({
        top: ($(window).height() - $(".modal-box").outerHeight()) / 2,
        left: ($(window).width() - $(".modal-box").outerWidth()) / 2
    });
});
 
$(window).resize();
 
});
</script>
</body>
</html>
