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
<title>USA Coverage</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css"/>
 	<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/select2/select2_metro.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" /> 
<style type="text/css">
#map_wrapper {
    height: 325px;
}

#map_canvas {
    width: 100%;
    height: 100%;
}
</style>
</head>

<body>
<div class="wrapper">
<%--   <%@include file="header.jsp" %> --%>
  <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        
        <!--inner_header starts-->
        <%-- <div class="inner_header"> <img src="<%=request.getContextPath()%>/NewStyles/images/browse-donation-header.jpg"  alt=""/> </div> --%>
        
        <!--admin_dashboard starts-->
        <div class="admin_dashboard">
        <div class="content_inner">
        <div class="pracProgress_hdr">
                    <h2>USA Coverage</h2>
                    <div class="green_line_btm"></div>
                </div>
        <!-- <h4>Inner Explorer USA Coverage Map</h4> -->
        <div class="fullrow txtcenter_align mrg_tp20 mrg_btm25" style="display:none;" id="liveClassesDiv">
        	<!-- <a class="blueBtn dis_inl_bl" id="liveClassesCount"></a> -->
            <a href="javascript:;" class="blueBtn dis_inl_bl" style="position:relative;" id="liveClassesBtn">View Live Classes<span class="notification-dbord"><p id="liveClassesCount">100</p></span></a>
            <a href="javascript:;" onclick="displayVectorMap();" style="color: #02a451; text-decoration: underline;">Go Back</a>
            </div>
             
        <div class="admin_map nogapbtm">
        
            <%-- <img src="<%=request.getContextPath()%>/NewStyles/images/map-admin.jpg"  alt=""/> --%>
            <div id="vmap_usa" class="vmaps chart"></div>
             <div id="map_wrapper" style="display:none;">
			    <div id="map_canvas" class="mapping"></div>
			</div>
			<%-- <a href="<%=request.getContextPath()%>/superadmin/mapAsPopup" target="_blank" style="color: #02a451; float:left; text-decoration: underline;width: 100%;margin: 30px 0 0 0; text-align:center;">Open as popup</a> --%> 
             </div>
             
             
        
        <div class="upcoming_renewals">
        <h5>Map Statistics</h5>
                <input type="button" class="startBtn" value="New Registrations" id="newRegistrations" onclick="newRegistrations();" style="left:0; top: 25px; position: absolute;"/>
        <div class="ur_grid">
								<table class="table table-striped table-hover table-bordered" id="sample_1">
									<thead>
								    <tr>
								        <th>STATE NAME</th>
								        <th>SCHOOLS COUNT</th>
								        <th>CLASS COUNT</th>
								        <th>STUDENTS COUNT</th>
								        <th style="display:none;"></th>
								    </tr>
									</thead>
									<tbody id="mapStats">
									        <c:forEach var="dtoSchool" items="${dtoSchools}">
									        <tr>
									        <c:if test="${not empty dtoSchool.key }">
									        	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'Y'}">
									        		<td><a onclick="stateGoogleMap('${dtoSchool.value.stateShort}')" style="color: #02a451;">${dtoSchool.key}</a></td>
									        	</c:if>
									        	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'N'}">
									        		<td><a onclick="stateGoogleMap('${dtoSchool.value.stateShort}')">${dtoSchool.key}</a></td>
									        	</c:if>
									        </c:if>
									        <c:if test="${empty dtoSchool.key }">
									        	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'Y'}">
									        		<td><span style="color: #02a451;">International</span></td>
									        	</c:if>
									        	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'N'}">
									        		<td><span>International</span></td>
									        	</c:if>
									        </c:if>
									        <td>${dtoSchool.value.schoolCount}</td>
									        <td>${dtoSchool.value.totalClassCountUnderSchool}</td>
									        <td>${dtoSchool.value.totalStudentCountUnderSchool}</td>
									        <td style="display:none;"></td>
									    	</tr>
									    	</c:forEach>
									</tbody>
								</table>
<%--         <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <th>STATE NAME</th>
        <th>SCHOOLS COUNT</th>
        <th>CLASS COUNT</th>
        <th>STUDENTS COUNT</th>
    </tr>
        <c:forEach var="dtoSchool" items="${dtoSchools}">
        <tr>
        <c:if test="${not empty dtoSchool.key }">
        	<td>${dtoSchool.key}</td>
        </c:if>
        <c:if test="${empty dtoSchool.key }">
        	<td>NOT AVAILABLE</td>
        </c:if>
        <td>${dtoSchool.value.schoolCount}</td>
        <td>${dtoSchool.value.totalClassCountUnderSchool}</td>
        <td>${dtoSchool.value.totalStudentCountUnderSchool}</td>
    	</tr>
    	</c:forEach>
</table> --%>

        
        </div>
        </div>
        </div>
        </div>
        <!--admin_dashboard ends--> 
        
        <!--inner_header ends--> 
        
    </div>
    <!--inner_wrapper ends--> 
</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$.daisyNav();
		
		 var script = document.createElement('script');
		    script.src = "http://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize";
		    document.body.appendChild(script);
		
		
	});
	</script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script> 
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script> 
	<script src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>   
	<script src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
	 <script src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>
	 <!-- <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script> --> 
	 	<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/select2/select2.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
		<script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script> 
<script type="text/javascript">
    $(function(){
    	var map = jQuery("#vmap_usa");
        var setMap = function (name) {
            var data = {
                map: 'usa_en',
                backgroundColor: null,
                borderColor: '#333333',
                borderOpacity: 0.5,
                borderWidth: 1,
                color: '#c6c6c6',
                enableZoom: false,
                hoverColor: '#c9dfaf',
                hoverOpacity: null,
                values: null,
                normalizeFunction: 'linear',
                scaleColors: ['#b6da93', '#909cae'],
                //selectedColor: '#c9dfaf',
                selectedColor: '#01a04e',
                selectedRegion: null,
                showTooltip: true,
                onLabelShow: function (event, label, code) {

                },
                onRegionOver: function (event, code) {
                    if (code == 'ca') {
                        event.preventDefault();
                    }
                },
                onRegionClick: function (element, code, region) {
                    var message = 'You clicked "' + region + '" which has the code: ' + code.toUpperCase();
                    //alert(message);
                 	var geocoder = new google.maps.Geocoder();
                 	geocoder.geocode({'address':code}, function(results, status) {
                        if (status == google.maps.GeocoderStatus.OK) {
                            //map.setCenter(results[0].geometry.location);
                           var lat = ( results[0].geometry.location.lat().toFixed(6));
                           var lng = (results[0].geometry.location.lng().toFixed(6));
                           initialize(lat,lng);
                       		$("#liveClassesDiv").show();
                    		$("#liveClassesBtn").attr("onclick","viewLiveClasses("+lat+","+lng+")");
                    		$("#newRegistrations").hide();
                        } else {
                            alert("Lat and long cannot be found.");
                        }
                    });
                    jQuery('#vmap_usa').hide();
                    $('#map_wrapper').show();
                }
            };

            data.map = name + '_en';
            var map = jQuery('#vmap_' + name);
            if (!map) {
                return;
            }
            map.width(map.parent().parent().width());
            map.height(400);
            map.show();
            map.vectorMap(data);
            map.hide();
            //map.setSelectedRegions(  JSON.parse('${statesList}') );
        }
        setMap("usa");
        jQuery('#vmap_usa').show();
    	var states = ${statesList};
     	$.each(states,function(index,value){
     		if(value!=""){
     			$('#vmap_usa').vectorMap('select', value.toLowerCase());
     		}
    	}); 
    //  SyntaxHighlighter.all();
    });
	
    function stateGoogleMap(code){
     	var geocoder = new google.maps.Geocoder();
     	geocoder.geocode({'address':code}, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                //map.setCenter(results[0].geometry.location);
               var lat = ( results[0].geometry.location.lat().toFixed(6));
               var lng = (results[0].geometry.location.lng().toFixed(6));
               initialize(lat,lng);
           		$("#liveClassesDiv").show();
        		$("#liveClassesBtn").attr("onclick","viewLiveClasses("+lat+","+lng+")");
        		$("#newRegistrations").hide();
            } else {
                alert("Lat and long cannot be found.");
            }
        });
        jQuery('#vmap_usa').hide();
        $('#map_wrapper').show();
    }
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
	function displayVectorMap(){
        jQuery('#vmap_usa').show();
        var states = ${statesList};
     	$.each(states,function(index,value){
     		if(value!= ""){
     			$('#vmap_usa').vectorMap('select', value.toLowerCase());
     		}
    	});
        $('#map_wrapper').hide();
        $("#liveClassesDiv").hide();
        $("#newRegistrations").show();
        $('#sample_1').dataTable().fnDestroy();
        $("#mapStats").html('');
        var newContent = '';
        <c:forEach var="dtoSchool" items="${dtoSchools}">
        <c:if test="${not empty dtoSchool.key }">
    	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'Y'}">
    	newContent+='<td><a onclick="stateGoogleMap(\'${dtoSchool.value.stateShort}\')" style="color: #02a451;">${dtoSchool.key}</a></td>';
    	</c:if>
    	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'N'}">
    	newContent+='<td><a onclick="stateGoogleMap(\'${dtoSchool.value.stateShort}\')">${dtoSchool.key}</a></td>';
    	</c:if>
        </c:if>
        <c:if test="${empty dtoSchool.key }">
        	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'Y'}">
        	newContent+='<td><span style="color: #02a451;">International</span></td>';
    	</c:if>
    	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'N'}">
    	newContent+='<td><span>International</span></td>';
    	</c:if>
    </c:if>
    newContent+='<td>${dtoSchool.value.schoolCount}</td>';
    newContent+='<td>${dtoSchool.value.totalClassCountUnderSchool}</td>';
    newContent+='<td>${dtoSchool.value.totalStudentCountUnderSchool}</td>';
    newContent+='<td style="display:none;"></td>';
    if(newContent!=''){
		$('#mapStats').append('<tr>'+newContent+'</tr>');
	}
    newContent = '';
    	</c:forEach>
		//$('#sample_1').dataTable().fnDestroy();
		$('#sample_1').dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
        //jQuery('#sample_1_wrapper .dataTables_info ').attr("style","display:none");
        //jQuery('#sample_1_wrapper .dataTables_paginate ').attr("style","display:none");
        //jQuery('#sample_1_wrapper .dataTables_length ').attr("style","display:none");
	}
	function newRegistrations(){
		$('#sample_1').dataTable().fnDestroy();
		$('#mapStats').html('');
		var newContent = '';
        <c:forEach var="dtoSchool" items="${dtoSchools}">
        		<c:if test="${dtoSchool.value.newRegistration == 'Y'}">
		        <c:if test="${not empty dtoSchool.key }">
		        	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'Y'}">
		        	newContent+='<td><a onclick="stateGoogleMap(\'${dtoSchool.value.stateShort}\')" style="color: #02a451;">${dtoSchool.key}</a></td>';
		        	</c:if>
		        	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'N'}">
		        	newContent+='<td><a onclick="stateGoogleMap(\'${dtoSchool.value.stateShort}\')">${dtoSchool.key}</a></td>';
		        	</c:if>
	        	</c:if>
	        <c:if test="${empty dtoSchool.key }">
	        	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'Y'}">
	        	newContent+='<td><span style="color: #02a451;">International</span></td>';
	        	</c:if>
	        	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'N'}">
	        	newContent+='<td><span>International</span></td>';
	        	</c:if>
	        </c:if>
	        newContent+='<td>${dtoSchool.value.schoolCount}</td>';
	        newContent+='<td>${dtoSchool.value.totalClassCountUnderSchool}</td>';
	        newContent+='<td>${dtoSchool.value.totalStudentCountUnderSchool}</td>';
	        newContent+='<td style="display:none;"></td>';
            	</c:if>
            	if(newContent!=''){
            		$('#mapStats').append('<tr>'+newContent+'</tr>');
            	}
            	newContent = '';
            	</c:forEach>
            	
		$('#sample_1').dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
        //jQuery('#sample_1_wrapper .dataTables_info ').attr("style","display:none");
        //jQuery('#sample_1_wrapper .dataTables_paginate ').attr("style","display:none");
        //jQuery('#sample_1_wrapper .dataTables_length ').attr("style","display:none");
	}
</script>

<script type="text/javascript">
/* jQuery(function($) {
    // Asynchronously Load the map API 
    var script = document.createElement('script');
    script.src = "http://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize";
    document.body.appendChild(script);
}); */

function initialize(lat,lng) {
    var map;
    var bounds = new google.maps.LatLngBounds();
    var myLatlng = new google.maps.LatLng(lat,lng);
    var mapOptions = {
    		zoom:7,
    		center:myLatlng,
        mapTypeId: 'roadmap'
    };
                    
    // Display a map on the page
    map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
    map.setTilt(45);
    
    var markers = [];
    $.ajax({
		url : "<%=request.getContextPath()%>/superadmin/getSchoolsList/",
		success : function(result) {
			$.each( result, function( index, value ) {
				if(value.latitude){
				var position = new google.maps.LatLng(value.latitude,value.longitude);
				//bounds.extend(position);
				var marker;
				marker = new google.maps.Marker({
				      position: position,
				      map: map,
				      title: value.schoolName
				  });
				
				var contentString ='<div class="info_content"><h5>'+value.schoolName+'</h5><p>'+value.address+'</p></div>';
				var infowindow = new google.maps.InfoWindow({
				      content: contentString,
				      //maxWidth: 200,
				      //maxHeight:200,
				      buttons:{close:{visible: true}}
				  });
				//map.fitBounds(bounds);
				
				google.maps.event.addListener(marker, 'click', function() {
				    infowindow.open(map,marker);
				  });
				
				markers.push(marker);
				}
				});
			}
		});
/*     // Multiple Markers
     var markers = [
        ['Prattville Christian Academy, Prattville', 32.479714,-86.405880],
        ['Autauga Academy, Prattville', 32.470893,-86.541837]
    ]; 
                        
    // Info Window Content
     var infoWindowContent = [
        ['<div class="info_content">' +
        '<h5>Prattville Christian Academy</h5>' +
        '<p>Prattville</p>' +        '</div>'],
        ['<div class="info_content">' +
        '<h5>Autauga Academy</h5>' +
        '<p>Prattville</p>' +
        '</div>']
    ]; 
        
    // Display multiple markers on a map
    var infoWindow = new google.maps.InfoWindow(), marker, i;
    
    // Loop through our array of markers & place each one on the map  
    for( i = 0; i < markers.length; i++ ) {
        var position = new google.maps.LatLng(markers[i][1],markers[i][2]);
        bounds.extend(position);
        marker = new google.maps.Marker({
            position: position,
            map: map,
            title: markers[i][0]
        });
        
        // Allow each marker to have an info window    
        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
                infoWindow.setContent(infoWindowContent[i][0]);
                infoWindow.open(map, marker);
            }
        })(marker, i));

        // Automatically center the map fitting all markers on the screen
        map.fitBounds(bounds);
        //markers.push(marker);
    } */

    // Override our map zoom level once our fitBounds function runs (Make sure it only runs once)
/*      var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function(event) {
        this.setZoom(5);
        google.maps.event.removeListener(boundsListener);
    });  */
    
}

function viewLiveClasses(lat,lng) {
	
    var map;
    var bounds = new google.maps.LatLngBounds();
    var myLatlng = new google.maps.LatLng(lat,lng);
	var markerImageSchool = new google.maps.MarkerImage("http://maps.google.com/mapfiles/kml/pal3/icon23.png",
	          // This marker is 20 pixels wide by 34 pixels tall.
	          new google.maps.Size(34, 34),
	          // The origin for this image is 0,0.
	          new google.maps.Point(0,0),
	          // The anchor for this image is at 6,20.
	          new google.maps.Point(15, 34));
    var mapOptions = {
    		zoom:7,
    		center:myLatlng,
        mapTypeId: 'roadmap'
    };
                    
    // Display a map on the page
    map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
    map.setTilt(45);
  //  var marker;
    var markers = [];
    $.ajax({
		url : "<%=request.getContextPath()%>/superadmin/liveClassesList/",
		success : function(result) {
			$.each( result, function( key, value ) {
				if(value.latitude){
				var position = new google.maps.LatLng(value.latitude,value.longitude);
				//bounds.extend(position);
				var marker;
				marker = new google.maps.Marker({
				      position: position,
				      map: map,
				      title: value.schoolName,
				      icon:markerImageSchool
				  });
				
				var contentString ='<div class="info_content"><h5>'+value.schoolName+'</h5><p>'+value.address+'</p></div>';
				var infowindow = new google.maps.InfoWindow({
				      content: contentString,
				      //maxWidth: 200,
				      //maxHeight:200,
				      buttons:{close:{visible: true}}
				  });
				//map.fitBounds(bounds);
				
				google.maps.event.addListener(marker, 'click', function() {
				    infowindow.open(map,marker);
				  });
				
				markers.push(marker);
				}
				});
			}
		});
   // $("#mapStats").html('');
    $.ajax({
		url : "<%=request.getContextPath()%>/superadmin/liveClassesStats/",
		success : function(result) {
			$("#mapStats").html('');
			$('#sample_1').dataTable().fnDestroy();
			var tableData = '';
			$.each( result, function( key, value ) {
				var stateInfo = '';
				if(key != '' && key != 'International'){
					if(value.newRegistrationByOneDay == 'Y')
					{
						stateInfo = '<td><a onclick="stateGoogleMap(\''+value.stateShort+'\')" style="color: #02a451;">'+key+'</a></td>';
					}else{
						stateInfo = '<td><a onclick="stateGoogleMap(\''+value.stateShort+'\')">'+key+'</a></td>';
					}
				}else{
					if(value.newRegistrationByOneDay == 'Y')
					{
						stateInfo = '<td><span style="color: #02a451;">International</span></td>';
					}else{
						stateInfo = '<td>International</td>';
					}
				}
				tableData += '<tr>'+stateInfo+
				'<td>'+value.schoolCount+'</td>'+
				'<td>'+value.totalClassCountUnderSchool+'</td>'+
				'<td>'+value.totalStudentCountUnderSchool+'</td>'+
				'<td style="display:none;"></td>'+
				'</tr>';
				});
			/* if(tableData == ''){
				tableData = '<tr><td colspan="5" style="text-align:left;">No Record Found</td></tr>';
			} */
			$("#mapStats").html(tableData);
			//$('#sample_1').dataTable().fnDestroy();
			$('#sample_1').dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
            //jQuery('#sample_1_wrapper .dataTables_info ').attr("style","display:none");
            //jQuery('#sample_1_wrapper .dataTables_paginate ').attr("style","display:none");
            //jQuery('#sample_1_wrapper .dataTables_length ').attr("style","display:none");
			}
		});
}
</script>
<script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
      TableManaged.init();
      $.ajax({
  		url : "<%=request.getContextPath()%>/superadmin/liveClassesListCount/",
  		success : function(result) {
  			$("#liveClassesCount").html(result);
  		}
      });
    });
  </script>
</body>
</html>
