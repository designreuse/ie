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
<title>Principal Map</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">

<style type="text/css">
#map_wrapper {
    height: 325px;
    width :100%;
}
#map_canvas {
    width: 100%;
    height: 100%;
}

</style>


</head>

<body>
<div class="wrapper">
   <%@include file="header.jsp" %>
    
    <section class="getStartSct mtop-5">
    		<div class="steps_getstarted">
				<div class="container">
					<div class="about_title_hdr">
     					<h2>Principal Map</h2>
     					<div class="green_line_btm"></div>
     				
     				
     					<div class="social-tabs">
                		<ul>
                    		<li><a class="social-slcd" href="<%=request.getContextPath()%>/principal/principalSocialMap">Social Map</a></li>
                    		<li><a href="<%=request.getContextPath()%>/principal/principalMap">Geo Map</a></li>
                    	</ul>
            			</div>
            			
            		
     				</div>
                    <div class="may-social-map">
                    	<div class="may-pic-section-hd">
                        	  	 <c:if test="${schoolPic eq 'NA'}">
            					<img src="<%=request.getContextPath()%>/NewStyles/images/school-default.jpg" class="level-image height-auto-1" alt=""/>
           						 </c:if>
            						<c:if test="${schoolPic ne 'NA'}">
            						<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${schoolPic}" class="level-image height-auto-1" alt=""/>
            						</c:if>
                            <p>${schoolName}</p>
                        </div>
               
                        <div class="social-map-img">
                                <div id="map_wrapper" style="display:block;">
			  					 	 <div id="map_canvas" class="mapping"></div>
								</div>
                        </div>
                    </div>
			</div>
      </div>
		</section>
</div>



<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="../footer.jsp" %>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script> 
<script type="text/javascript">
$( document ).ready(function() {
    console.log( "ready!" );
    initialize(37.0902,-95.7129);
    $("#header").sticky({ topSpacing: 0 });
   
});


function initialize(lat,lng) {
    var map;
    var bounds = new google.maps.LatLngBounds();
    var myLatlng = new google.maps.LatLng(lat,lng);
    var mapOptions = {
    		zoom:4,
    		center:myLatlng,
        mapTypeId: 'roadmap',
        styles: [{
            stylers: [{
              saturation: -100
            }]
          }]
    };
                    
    // Display a map on the page
    map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
    map.setTilt(45);
    
    var markers = [];
   <%--  $.ajax({
		url : "<%=request.getContextPath()%>/superadmin/getSchoolsList/",
		success : function(result) { --%>
		var list = ${lisDtoParentSocialMaps};
			$.each(list, function( index, value ) {
				if(value.status=="fav"){
				var position = new google.maps.LatLng(value.lat,value.lng);
				var marker;
				marker = new google.maps.Marker({
				      position: position,
				      map: map,
				      title: value.name,
				      icon:'<%=request.getContextPath()%>/NewStyles/images/red-hrt.png'
				  });
				
				var contentString ='<div class="info_content"><h5>'+value.name+'</h5><p>'+value.address+'</p></div>';
				var infowindow = new google.maps.InfoWindow({
				      content: contentString,
				      buttons:{close:{visible: true}}
				  });
				
				google.maps.event.addListener(marker, 'click', function() {
				    infowindow.open(map,marker);
				  });
				
				markers.push(marker);
				}
				
				});
    
}


</script>



</body>
</html>
