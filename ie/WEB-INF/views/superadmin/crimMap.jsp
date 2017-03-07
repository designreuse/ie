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
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>USA Coverage</title>
<%-- <link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css"> --%>
<link
	href="<%=request.getContextPath()%>/NewStyles/jvectormap/jquery-jvectormap-2.0.3.css"
	rel="stylesheet" type="text/css" />
<%-- <link
	href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/select2/select2_metro.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" /> --%>
<style type="text/css">
#map_wrapper {
	height: 325px;
}

#map_wrappe {
	height: 625px;
}

#map_canvas {
	width: 100%;
	height: 100%;
}

#map_canva {
	width: 100%;
	height: 100%;
}

#vmap_usa {
	height: 400px;
	width: 700px;
}

#vmap_us {
	height: 400px;
	width: 1160px;
}

.controls {
	float: right;
}

.dataTables_info {
	text-align: left !important;
}
</style>
</head>

<body>
	<spring:eval var="bucketPath"
		expression="@propertyConfigurer.getProperty('bucket_path')" />
	<div class="wrapper">
		<%-- <%@include file="header.jsp"%> --%>
		<!--inner_wrapper starts-->
		<div class="inner_wrapper">
			<input type="hidden" id="currentStateCode">
			<div class="admin_dashboard">
				<div class="content_inner">
					<!-- <div class="pracProgress_hdr">
						<h2>Coverage</h2>
						<div class="green_line_btm"></div>
					</div> -->

					<!--misc tabs start-->
					<div class="misc_tabs">
						<!-- <div class="misc_tabar background-none">
							<ul>
								<li id="mtab1" class=" selected"><a class="trial"
									href="" onclick="country('USA');">USA</a>
								</li>
						</div> -->
						<div class="misc_content">
							<!--TAB 1 STARTS-->
							<section class="tehDsh-step1 mtop-5">
								<div id="tab1">
									<div class="admin_map nogapbtm">
										<div id="vmap_usa" class="vmaps chart"></div>
										<div id="map_wrapper" style="display: none;">
											<div id="map_canvas" class="mapping"></div>
										</div>
									</div>
								</div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	 <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<%-- <%@include file="../footer.jsp"%> --%>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/bootstrapcdn.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
	<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$.daisyNav();
		$('[data-toggle="tooltip"]').tooltip();
		 var script = document.createElement('script');
		    script.src = "http://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize";
		    document.body.appendChild(script);	
	});
	</script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script> 
	<script
		src="<%=request.getContextPath()%>/NewStyles/jvectormap/jquery.jvectormap.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/jvectormap/jquery-jvectormap-us-aea-en.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/jvectormap/jquery-jvectormap-world-mill-en.js"
		type="text/javascript"></script>
<%-- 	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/select2/select2.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script>
	<script language="javascript" type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/tab.js"></script> --%>
	<script type="text/javascript">
  
<%-- function getStateRecordsIe(code){
  	var html = '';
	$.ajax({
		url : "<%=request.getContextPath()%>/getStateInfo/"+code,
		method : 'GET',
		async:false,
		success : function(result) {
			if(result.totalSchools){
			html= '<br/>Number Of Students : '+result.numberOfStudent+'</br>'+
			'Number Of Schools : '+result.totalSchools+'<br/>'+
			'Number Of Classes : '+result.schoolClasses+'<br/>';
			}
		}
	});
	return html;
  } --%>

    $(function(){
		var states = ${statesListDetail};
		var mapMarkers = [];
	 	var mapMarkersValues = [];
	 	
	    $.each(states,function(index,value){
	 		if(value!=""){
	 		
	 			$.each(value.dtoStateList,function(ind,val){
	 				var html2 = val.schoolName;
	 				mapMarkers.push({name: val.schoolName,schoolCity: val.schoolCity,classes:val.schoolClasses,students:val.numberOfStudent, latLng: [val.latitude,val.longitude]});
	 				mapMarkersValues.push(val.schoolClasses*3);
	 			});	
	 		}
		}); 
	 
    $('#vmap_usa').vectorMap({
      map: 'us_aea_en',
      markers:mapMarkers,
      hoverColor: false,
      color: '#c6c6c6',
	    normalizeFunction: 'polynomial',
	    hoverOpacity: 0.4,
	    markersSelectable: true,
	    zoomMax: 92,//def is 8
        markerStyle: {
    	  initial: {
    		    fill: '#23527c',
    		    stroke: '#23527c',
    		    "fill-opacity": 0.4,
    		    "stroke-width": 1,
    		    "stroke-opacity": 1
    		   // r: 7
    		  },
    		  hover: {
    		    stroke: '#23527c',
    		    "stroke-width": 1,
    		    cursor: 'pointer'
    		  },
    		  selected: {
    		      fill: '#23527c'
    		    }
    		},
	    
	    regionStyle: {
	    	  initial: {
	    		    fill: '#d8d8d8',
	    		    "fill-opacity": 0.8,
	    		    stroke: '#c6c6c6',
	    		    "stroke-width": 0.7,
	    		    "stroke-opacity": 1
	    		  },
	    		  hover: {
	    		    "fill-opacity": 1,
	    		    cursor: 'pointer'
	    		  }
	    		  
	    		},
	   backgroundColor: 'none',  
      series: {
    	    markers: [{
    	      attribute: 'fill',
    	      min: 1,
    	      max: 200
    	    },{
    	      attribute: 'r',
    	      scale: [7, 28],
    	      values:mapMarkersValues,
    	      min: 7,
    	      max: 150
    	    }]
    	  },
    	  
    	  onRegionTipShow: function(event, label, code){
    		 var shortState = code.substring(3,code.length);
    	        label.html(
    	        		label.html()+getStateRecordsIe(shortState)
    	        );
    	  } ,
    	  onMarkerTipShow: function(event, label, index){
    		  var sname = mapMarkers[index].name;
    	        label.html(
    	        		sname
    	        );
    	      },
          onRegionOver: function (event, code) {
              if (code == 'ca') {
                  event.preventDefault();
              }
          },
          onRegionClick: function (element, code, region) {
              var message = 'You clicked "' + region + '" which has the code: ' + code.toUpperCase();
           	var geocoder = new google.maps.Geocoder();
           	geocoder.geocode({'address':code,componentRestrictions: {
           	    country: 'US'
         	  }}, function(results, status) {
                  if (status == google.maps.GeocoderStatus.OK) {
                     var lat = ( results[0].geometry.location.lat().toFixed(6));
                     var lng = (results[0].geometry.location.lng().toFixed(6));
                     initialize(lat,lng);
                 		$("#liveClassesDiv").show();
              		$("#liveClassesBtn").attr("onclick","viewLiveClasses("+lat+","+lng+")");
                  } else {
                      alert("Lat and long cannot be found.");
                  }
              });
              jQuery('#vmap_usa').hide();
              $('#map_wrapper').show();
          }
   
    });
     	
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

	<script type="text/javascript">
<%-- function initialize(lat,lng) {
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
}

function viewLiveClasses(lat,lng) {
	
    var map;
    var bounds = new google.maps.LatLngBounds();
    var myLatlng = new google.maps.LatLng(lat,lng);
    
 
	var markerImageSchool = new google.maps.MarkerImage(
			'<%=request.getContextPath()%>/NewStyles/images/broadcast1.gif',
	          // This marker is 20 pixels wide by 34 pixels tall.
	          new google.maps.Size(34, 34),
	          // The origin for this image is 0,0.
	          new google.maps.Point(0,0),
	          // The anchor for this image is at 6,20.
	          new google.maps.Point(15, 34)
	);
	 
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
				console.log(key)
				if(value.latitude){
				var position = new google.maps.LatLng(value.latitude,value.longitude);
				//bounds.extend(position);
				var marker;
				marker = new google.maps.Marker({
					  map:map,
				      draggable:false,
				      optimized:false,
				      animation: google.maps.Animation.DROP,
				      position: position,
				      title: value.schoolName,
				      icon:markerImageSchool
				  });
				
				var contentString ='<div class="info_content"><h5>'+value.schoolName+'</h5><p>'+value.address+'</p><p>'+
				'<img src="<%=request.getContextPath()%>/NewStyles/images/speaker.gif" alt="Inner Explorer" title="Inner Explorer" id="notify" style="height:30px;width:30px;"/>'+
				'<audio style="display:none" id="currentPlayer" class="music-player_notes" autoplay controls="" data-audio-id="14" data-program-id="1" data-length="" data-audio-feedback="">'+
				'<source src="" type="audio/mpeg"></audio>'+
				'</p></div>';
				var infowindow = new google.maps.InfoWindow({
				      content: contentString,
				      //maxWidth: 200,
				      //maxHeight:200,
				      buttons:{close:{visible: true}}
				  });
				//map.fitBounds(bounds);
				
				google.maps.event.addListener(marker, 'click', function() {
				    infowindow.open(map,marker);
				    
				  
			            var classId = value.classId;
			            var audio =  $("#currentPlayer");
			            $.ajax({  
			             	type : "GET",   
			             	url : "<%=request.getContextPath()%>/live/senseAudioPlay",   
			              	async:true,
			             	data:'classId='+classId,
			             	success : function(response) {
			             		if(response.playing != null && response.playing == 0)
			             		{
			             			console.log('playing mindful practice session live');
			             			$.ajax({  
			             	          	type : "GET",   
			             	          	url : "<%=request.getContextPath()%>/live/sendAudioTrackLocationParent",   
			             	           	async:true,
			             	          	data:'classId='+classId,
			             	          	success : function(response) {
			             	          	if(response.error == null)
			             	          	{	
			             	           	 	$("#notify").attr("src","<%=request.getContextPath()%>/NewStyles/images/speaker.gif");
											audio.prop('src', "${bucketPath}/audioFiles/"+response.track);
											
											audio.bind("load",function(){
												audio.trigger('pause');
												audio.prop('currentTime', parseInt(response.trackLocation));
								            });
											audio.bind("ended",function(){
												console.log("Stopped ...")
											 	playFlag = false;	
								            });
											audio.trigger('load');
											$("#currentPlayer").trigger('play');
											playFlag = true;
										}
			             	          	else
				             	        	 playFlag = false;
									}
								});
							}
			             	else
			           		{
			             		console.log('killed by Admin')
			           			$("#notify").attr("src","<%=request.getContextPath()%>/NewStyles/images/speaker-grey.png");
			           			var sound = document.getElementById("currentPlayer");
			           			sound.pause();
			           			sound.currentTime = 0;
			           			audio.trigger('pause');
			           		}
			           	}
					});
			    	 
				    
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
			$("#mapStats").html(tableData);
			$('#sample_1').dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
			var oTable = $('#sample_1').dataTable();
		   	  oTable.fnSort( [ [1,'desc'] ] );
			}
		});
} --%>
</script>
	<script>
   <%--  $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
      TableManaged.init();
      $.ajax({
  		url : "<%=request.getContextPath()%>/superadmin/liveClassesListCount/",
  		success : function(result) {
  			$("#liveClassesCount").html(result);
  		}
      });
    }); --%>
   
  
   
    
  </script>
</body>
</html>
