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
<title>Inner Explorer</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery-anyslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link href="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css"/>

<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
</head>

<body>
<div class="wrapper">
<section class="workRow" id="ourWork">
    <div class="container">
      <div class="counter_wrapper">
        <div class="cw_col_3">
          <div id="vmap_usa"  class="vmaps chart cw_map"><%-- <img src="<%=request.getContextPath()%>/NewStyles/images/Map.png" alt=""/> --%></div>
        </div>
      </div>
    </div>
  </section>
</div>

<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.fancybox.pack.js?v=2.1.5"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.counterup.js"></script> 
 	<script src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>   
	<script src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
	 <script src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>

<script>
    jQuery(document).ready(function( $ ) {
    	$(".fancybox").fancybox();
        $('.counter').counterUp({
            delay: 10,
            time: 1000
        });
    });
</script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.easing.1.3.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.anyslider.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/waypoints.min.js"></script>
<script>
  function getStateRecords(code){
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
  }
  $(document).ready(function() {
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

            	label[0].innerHTML = label[0].innerHTML+getStateRecords(code);
            },
            onRegionOver: function (event, code) {
                if (code == 'ca') {
                    event.preventDefault();
                }
            } ,
            onRegionClick: function (element, code, region) {
            } 
        };

        data.map = name + '_en';
        var map = jQuery('#vmap_' + name);
        if (!map) {
            return;
        }
        map.width(500);
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
	jQuery(document).ready
	(function($){
		$.daisyNav();
    
	});
	</script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script> 

<script type="text/javascript">
    $(function(){
    //  SyntaxHighlighter.all();
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
	
</script> 
<script>
    $(function () {


        $('.slider2').anyslider({
	animation: 'fadeSlide',
			easing: 'easeInOutExpo',
			keyboardNav: false,
			speed: 750
        });
    });
    </script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script> 
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
  function dialogOpen(){
	  $("#learnmore").show();
  }
  function hideDialog(){
	  $("#learnmore").hide();
  }
  
  
  function setMenuActive(id){
	  $(".menuAll").css("border-bottom", "none");
	  $(".menu"+id).css("border-bottom", "2px solid green");
  }
  
  </script>
</body>
</html>
