<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Inner Expoler</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">

<link href="<%=request.getContextPath()%>/NewStyles/jvectormap/jquery-jvectormap-2.0.3.css" rel="stylesheet" type="text/css"/>

</head>

<body>
<div class="wrapper">
<section class="workRow" id="ourWork">
    <div class="container">
      <h2 class="mrgtm_20" style="width:auto">OUR COMMUNITY</h2>
    
      <p><!-- Our intent is to reach One Million Mindful Children (#1MMC) within next one year. Everyday, we are taking small steps to accomplish this important milestone, one student at a time. Our intent is to reach One Million Mindful Children (#1MMC) within next year. Everyday, we are taking small steps to accomplish this important milestone, one student at a time.</p>-->
      <div class="counter_wrapper">
        <div class="cw_col_1 width20ph">
          <ul>
            <li>
              <div class="radiusIcon disinline"> <img src="<%=request.getContextPath()%>/NewStyles/images/icon5.png" alt="Icon" /> </div>
              <div class="radiusIconnew"><h2><span class="counter">${totalStates}</span></h2>
              <p>States + D.C.</p></div>
            </li>
            <li>
              <div class="radiusIcon disinline"> <img src="<%=request.getContextPath()%>/NewStyles/images/icon6.png" alt="Icon" /> </div>
              <div class="radiusIconnew"><h2><span class="counter">${totalSchools}</span></h2>
              <p>Schools</p></div>
            </li>
            <li>
              <div class="radiusIcon disinline"> <img src="<%=request.getContextPath()%>/NewStyles/images/icon7.png" alt="Icon" /> </div>
              <div class="radiusIconnew"><h2><span class="counter">${schoolClasses}</span></h2>
              <p>Classrooms</p></div>
            </li>
            <li>
              <div class="radiusIcon disinline"> <img src="<%=request.getContextPath()%>/NewStyles/images/icon8.png" alt="Icon" /> </div>
              <div class="radiusIconnew"><h2><span class="counter">${numberOfStudent + studentAdjustment}</span></h2>
              <p>Students</p></div>
            </li>
          </ul>
        </div>
        <div class="cw_col_2 width75p">
       
          <div id="vmap_usa"  class="vmaps chart cw_map map-style-imp"><%-- <img src="<%=request.getContextPath()%>/NewStyles/images/Map.png" alt=""/> --%></div>
        </div>
       
        
      </div>
    </div>
  </section>
  
  
</div>



<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.fancybox.pack.js?v=2.1.5"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.counterup.js"></script> 

	 <script src="<%=request.getContextPath()%>/NewStyles/jvectormap/jquery.jvectormap.min.js" type="text/javascript"></script>
	 <script src="<%=request.getContextPath()%>/NewStyles/jvectormap/jquery-jvectormap-us-aea-en.js" type="text/javascript"></script>
	<%--  <script src="<%=request.getContextPath()%>/NewStyles/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
	 <script src="<%=request.getContextPath()%>/NewStyles/jvectormap/jquery-jvectormap-north_america-mill.js" type="text/javascript"></script> --%>

<script>
    jQuery(document).ready(function( $ ) {
    	$(".fancybox").fancybox();
        $('.counter').counterUp({
            delay: 3,
            time: 100
        });
        
        
    });
</script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.easing.1.3.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.anyslider.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/waypoints.min.js"></script>
<script>
  
  
 
  
  $(document).ready(function() {
	 
		var states = ${statesListDetail};
	
		var mapMarkers = [];
	 	var mapMarkersValues = [];
	 	
	    $.each(states,function(index,val){
	 	
	 		
	 				
	 				var html2 = val.schoolName;//+'<br> Number of Students:'+val.numberOfStudent+'<br> Number of Classes:'+val.schoolClasses;
	 				mapMarkers.push({schoolCity: val.schoolCity, latLng: [val.latitude,val.longitude]});
	 				mapMarkersValues.push(val.schoolClasses*3);
	 			
	 		
		}); 
	    
	    var mapid = 'us_aea_en';
	    callSelectedMapById(mapid,mapMarkers,mapMarkersValues);
	    
	
 	$('[id^=jqvmap1_]').prop("disabled", true).off('click');
    $("#login").click(function(e) {
        $(".login_panel").toggle();
        e.stopPropagation();
    });

    $(document).click(function(e) {
        if (!$(e.target).is('.login_panel, .login_panel *')) {
            $(".login_panel").hide();
        }
    }); 
});
  


  
  </script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
<script type="text/javascript">	
	jQuery(document).ready(function($){
		$.daisyNav();
		
		//worldmap();
    
	});
	</script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script> 




<script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
    });
  </script>
  <script>
  $(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});
  
  
  function setMenuActive(id){
	  $(".menuAll").css("border-bottom", "none");
	  $(".menu"+id).css("border-bottom", "2px solid green");
  }
  
  function callSelectedMapById(mapId,mapMarkers,mapMarkersValues){
	    $('#vmap_usa').vectorMap({
	        map: mapId,
	        markers:mapMarkers,
	        hoverColor: false,
	        color: '#c6c6c6',
	  	    normalizeFunction: 'polynomial',
	  	    hoverOpacity: 0.4,
	  	    markersSelectable: true,
	  	    zoomMax: 92,//def is 8
	          markerStyle: {
	      	  initial: {
	      		    fill: '#a8d7bf',
	      		    stroke: '#7fcba4',
	      		    "fill-opacity": 0.4,
	      		    "stroke-width": 1,
	      		    "stroke-opacity": 1
	      		   // r: 7
	      		  },
	      		  hover: {
	      		    stroke: '#7fcba4',
	      		    "stroke-width": 1,
	      		    cursor: 'pointer'
	      		  },
	      		  selected: {
	      		      fill: '#3db477'
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
	      	        		label.html() //+getStateRecords(shortState)
	      	        );
	      	  } ,
	      	  onMarkerTipShow: function(event, label, index){
	      		  var sname = mapMarkers[index].schoolCity;
	      		
	      	        label.html(
	      	        		sname
	      	        );
	      	      } 
	     
	      });
  	
  }
  
  
  
  </script>
</body>
</html>
