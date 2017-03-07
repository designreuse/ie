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
     					<h2>Social Map</h2>
     					<div class="green_line_btm"></div>
     				
     				
     					<div class="social-tabs">
                		<ul>
                    		<li><a  href="<%=request.getContextPath()%>/donor/parentSocialMap">Social Map</a></li>
                    		<li><a class="social-slcd" href="<%=request.getContextPath()%>/donor/parentMap">Geo Map</a></li>
                    	</ul>
            			</div>
            			
            		
     				</div>
                    <div class="may-social-map">
                    	<div class="may-pic-section-hd">
							<c:if test="${profilePic ne 'NA'}">
                        	 <img src="<%=request.getContextPath()%>/NewStyles/images/parent-profile/${profilePic}" alt="">
                        	</c:if>
                        	<c:if test="${profilePic eq 'NA'}">
                        	 <img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png" alt="">
                        	</c:if>  
                        <p>${loginName}</p>
                        </div>
                        <div class="social-map-selection">
                        	<div class="social-map-sel">
                            	<!-- <label>Show</label> -->
                                <div class="social-map-selctr">
                                	<%-- <select name="selectMap" id="selectMap" onchange="showFilterMap();">
                                    	<option value="all">All</option>
                                    	<option value="kid">Kids Schools</option>
                                    	<option value="fav">Favourite schools</option>
                                    	<c:if test="${paymentType eq 2}">
                                    	<option value="shared">Shared Users</option>
                                    	<option value="radio">Radio Users</option>
                                    	</c:if>
                                    </select> --%>
                                    <ul>
                                    	<li onclick="showFilterMap('fav');">
                                    		<img src="<%=request.getContextPath()%>/NewStyles/images/fav-school-new.png" alt="">
                                    		<p>Favorite Schools</p>
                                    	</li>
                                    	<li onclick="showFilterMap('kid');">
                                    		<img src="<%=request.getContextPath()%>/NewStyles/images/kids-school-new.png" alt="">
                                    		<p>Kids Schools</p> 
                                    	</li >
                                    	<c:if test="${userType ne 'share' && userType ne 'family'}">
                                    	<li onclick="showFilterMap('shared');">
                                    		<img src="<%=request.getContextPath()%>/NewStyles/images/shared-with-new.png" alt="">
                                    		<p>Shared Users</p> 
                                    	</li>
                                    	<li onclick="showFilterMap('radio');">
                                    		<img src="<%=request.getContextPath()%>/NewStyles/images/shared-radio-new.png" alt="">
                                    		<p>Radio Users</p>
                                    	</li>
                                    	</c:if>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="social-map-img">
                                <div id="map_wrapper" style="display:block;">
                                
                                   
                                
			  					 	 <div id="map_canvas" class="mapping"></div>
								</div>
<%--                         	<img src="<%=request.getContextPath()%>/NewStyles/images/social-map.jpg" alt=""> --%>
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
	 var parentType='${paymentType}'; 
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
				//bounds.extend(position);
				console.log("fav:"+value.lat+":"+value.lng);
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
				if(parentType == 2){
				if(value.status=="share"){
					var position = new google.maps.LatLng(value.lat,value.lng);
					//bounds.extend(position);
					console.log("share:"+value.lat+":"+value.lng);
					var marker;
					marker = new google.maps.Marker({
					      position: position,
					      map: map,
					      title: value.name,
					      icon:'<%=request.getContextPath()%>/NewStyles/images/r-share_g.png'
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
				
				if(value.status=="radio"){
					var position = new google.maps.LatLng(value.lat,value.lng);
					//bounds.extend(position);
					console.log("radio:"+value.lat+":"+value.lng);
					var marker;
					marker = new google.maps.Marker({
					      position: position,
					      map: map,
					      title: value.name,
					      icon:'<%=request.getContextPath()%>/NewStyles/images/r_radio_g.png'
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
				}
				
				if(value.status=="kid"){
					var geocoder = new google.maps.Geocoder();
			     	geocoder.geocode({'address':value.address}, function(results, status) {
			            if (status == google.maps.GeocoderStatus.OK) {
			                //map.setCenter(results[0].geometry.location);
			               var lat = ( results[0].geometry.location.lat().toFixed(6));
			               var lng = (results[0].geometry.location.lng().toFixed(6));
			               console.log("kid:"+lat+":"+lng);
			               var position = new google.maps.LatLng(lat,lng);
							//bounds.extend(position);
							var marker;
							marker = new google.maps.Marker({
							      position: position,
							      map: map,
							      title: value.name,
							      icon:'<%=request.getContextPath()%>/NewStyles/images/map-user-green.png'
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
				
				});
		/* 	}
		}); */

    
}

   function initializeFilter(lat,lng,filter) {
	   var parentType='${paymentType}'; 
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
					if(value.status=="fav" && filter=="fav"){
					var position = new google.maps.LatLng(value.lat,value.lng);
					//bounds.extend(position);
					console.log("fav:"+value.lat+":"+value.lng);
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
					
					if(parentType == 2){
					if(value.status=="share" && filter=="shared"){
						var position = new google.maps.LatLng(value.lat,value.lng);
						//bounds.extend(position);
						console.log("share:"+value.lat+":"+value.lng);
						var marker;
						marker = new google.maps.Marker({
						      position: position,
						      map: map,
						      title: value.name,
						      icon:'<%=request.getContextPath()%>/NewStyles/images/r-share_g.png'
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
					
					if(value.status=="radio" && filter=="radio"){
						var position = new google.maps.LatLng(value.lat,value.lng);
						//bounds.extend(position);
						console.log("radio:"+value.lat+":"+value.lng);
						
						var map2;
					    var bounds2 = new google.maps.LatLngBounds();
					    var myLatlng2 = new google.maps.LatLng(value.lat,value.lng);
					    var mapOptions2 = {
					    		zoom:14,
					    		center:myLatlng2,
					        mapTypeId: 'roadmap',
					        styles: [{
					            stylers: [{
					              saturation: -100
					            }]
					          }]
					    };
					                    
					    // Display a map on the page
					    map1 = new google.maps.Map(document.getElementById("map_canvas"), mapOptions2);
					    map1.setTilt(45);
						
						
						var marker;
						marker = new google.maps.Marker({
						      position: position,
						      map: map2,
						      title: value.name,
						      icon:'<%=request.getContextPath()%>/NewStyles/images/r_radio_g.png'
						  });
						
						var contentString ='<div class="info_content"><h5>'+value.name+'</h5><p>'+value.address+'</p></div>';
						var infowindow = new google.maps.InfoWindow({
						      content: contentString,
						      buttons:{close:{visible: true}}
						  });
						
						google.maps.event.addListener(marker, 'click', function() {
						    infowindow.open(map2,marker);
						  });
						
						markers.push(marker);
						}
					}
					
					if(value.status=="kid" && filter=="kid"){
						var geocoder = new google.maps.Geocoder();
				     	geocoder.geocode({'address':value.address}, function(results, status) {
				            if (status == google.maps.GeocoderStatus.OK) {
				                //map.setCenter(results[0].geometry.location);
				               var lat = ( results[0].geometry.location.lat().toFixed(6));
				               var lng = (results[0].geometry.location.lng().toFixed(6));
				               console.log("kid:"+lat+":"+lng);
				               var position = new google.maps.LatLng(lat,lng);
								//bounds.extend(position);
								
								
								var map1;
							    var bounds1 = new google.maps.LatLngBounds();
							    var myLatlng1 = new google.maps.LatLng(lat,lng);
							    var mapOptions1 = {
							    		zoom:14,
							    		center:myLatlng1,
							        mapTypeId: 'roadmap',
							        styles: [{
							            stylers: [{
							              saturation: -100
							            }]
							          }]
							    };
							                    
							    // Display a map on the page
							    map1 = new google.maps.Map(document.getElementById("map_canvas"), mapOptions1);
							    map1.setTilt(45);
								
								
								
								
								var marker;
								marker = new google.maps.Marker({
								      position: position,
								      map: map1,
								      title: value.name,
								      icon:'<%=request.getContextPath()%>/NewStyles/images/map-user-green.png'
								  });
								
								var contentString ='<div class="info_content"><h5>'+value.name+'</h5><p>'+value.address+'</p></div>';
								var infowindow = new google.maps.InfoWindow({
								      content: contentString,
								      buttons:{close:{visible: true}}
								  });
								
								google.maps.event.addListener(marker, 'click', function() {
								    infowindow.open(map1,marker);
								  });
								
								markers.push(marker);
				               
				            } 
				        });
						
						}
					
					});
			/* 	}
			}); */

	    
	}

function showFilterMap(userType){
	//var value = $('#selectMap option:selected').val();
	var value=userType;
	if(value=="all"){
		location.reload();
	}
	if(value=="fav"){
		initializeFilter(37.0902,-95.7129,value);
	}
	if(value=="shared"){
		initializeFilter(37.0902,-95.7129,value);
	}
	if(value=="radio"){
		initializeFilter(37.0902,-95.7129,value);
	}
	if(value=="kid"){
		initializeFilter(37.0902,-95.7129,value);
	}

}

</script>



</body>
</html>
