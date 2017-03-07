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
<title>Mission Control</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/jvectormap/jquery-jvectormap-2.0.3.css" rel="stylesheet" type="text/css"/>
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
  <%@include file="header.jsp" %>
  <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
    
    <!--inner_header starts-->
    <!--<div class="inner_header">
     <img src="images/about-us-header.jpg"  alt=""/> 
     </div>-->
     
     <!--about_us starts-->
     <div class="about_us">
     <div class="content_inner">
     <div class="pracProgress_hdr">
     <h2>Mission Control Overview</h2>
     <div class="green_line_btm"></div>
     </div>
     <div class="mission_wrapper">
     	<!-- <h2 class="green_bdr_btm">Overview</h2> -->
        <ul>
        	<li>
            	<h4>Coverage Map</h4>
                <div id="vmap_usa"  class="vmaps chart cw_map margin-top-zero map-style-imp"></div>
            </li>
            <li>
            	<h4>Mindful Learning</h4>
                <div class="mission_second">
                	<p>Number of Students:<br>${numberOfStudent + studentAdjustment}</p>
											<div class="easy-pie-chart easy-pie-chart-mission">
												<div class="number visits"  data-percent="${studentsTargetAchied}"><p class="easy-pie-content" ><span>${studentsTargetAchied}</span>%</p></div>
											</div>
                    <p class="right-goal">Goal<br><span>${goal}</span></p>
                    	<c:if test="${goalRemainingDay >= 0}">
                        <p class="right-goal">Days Remaining <br><span>${goalRemainingDay}</span></p>
                        </c:if>
                        <c:if test="${goalRemainingDay < 0}">
                        <c:set var="daysPast" value="${goalRemainingDay*(-1)}"></c:set>
                        	<p class="right-goal">Days Past <br><span>${daysPast}</span></p>
                        </c:if>
                </div>
                <div class="mission_round">
                	<ul>
                        <li>
                        	<h3>${school7Days}</h3>
                            <p>NUMBER OF<br>SCHOOLS ADDED IN <br> LAST 7 DAYS</p>
                        </li>
                    	<li onclick="displayTeacherDetails();" style="cursor: pointer;">
                        	<h3>${newClasses}</h3>
                            <p># OF CLASSES<br>ADDED DURING LAST<br> 7 DAYS</p>
                        </li>
                        <li>
                        	<h3>${newClasses*25}</h3>
                            <p># OF STUDENTS<br>ADDED DURING LAST<br> 7 DAYS</p>
                        </li>
                    </ul>
                </div>
            </li>
        </ul>
     </div>
     <div class="mission_wrapper_second">
        <ul>
        	<li>
            	<h4>Active Programs</h4>
                <div class="mission_third">
                	<ul>
                    	<li><p>Total No. of Schools<br>${totalSchools}</p></li>
                        <li><p>Total No. of Classes<br>${totalClasses}</p></li>
                    </ul>
                </div>
                <div class="no_school-classes_mission">
                <c:forEach items="${programs}" var="program" varStatus="programCount" begin="0" end="3">
               <div class="nosc_col_1">
                    <div class="ourprograms">
					        <ul>
                <li>
							<img src="<%=request.getContextPath()%>${program.imagePath}" alt="Image">
							<div class="greyText">
								<p>${program.programDescDetail}</p>
							</div>
						</li>
                </ul>
                </div>
                <div class="info_school">
                Total No. of Schools : ${program.numberOfSchools}
                </div>
                <div class="info_classes">
                Total No. of Classes: ${program.numberOfClasses}
                </div>
                </div>
                </c:forEach>

            </div>
            </li>
            <li>
            	<h4>Financials</h4>
                <div class="mission_third">
                	<ul>
                    	<li><p>Funds Generated<br>$${donorFunds}</p></li>
                        <li><p>Active Donors<br>${uniqueDonors}</p></li>
                    </ul>
                </div>
                <div class="mission_round_second">
                <c:set var="noCampaign" value="0"></c:set>
                <c:set var="workingCampaign" value="0"></c:set>
                <c:set var="completeCampaign" value="0"></c:set>
                <c:forEach var="school" items="${schoolDonationDetailList}">
                <c:if test="${not empty school.trialStatus && school.trialStatus != 'Y' && school.campaignCount eq 0 }">
                	<c:set var="noCampaign" value="${noCampaign+1}"></c:set>
                </c:if>
                <c:if test="${not empty school.trialStatus && school.trialStatus != 'Y' && school.campaignCount gt 0 && ((school.donorContribution + school.schoolContribution)*100/school.totalCampAmount) lt 100}">
                	<c:set var="workingCampaign" value="${workingCampaign+1}"></c:set>
                </c:if>
                <c:if test="${not empty school.trialStatus && school.trialStatus != 'Y' && school.campaignCount gt 0 && ((school.donorContribution + school.schoolContribution)*100/school.totalCampAmount) ge 100 }">
                	<c:set var="completeCampaign" value="${completeCampaign+1}"></c:set>
                </c:if>
                </c:forEach>
                	<ul>
                    	<li>
                        	<h3>${noCampaign}</h3>
                            <p>SCHOOLS<br>NOT STARTED</p>
                        </li>
                        <li>
                        	<h3>${workingCampaign}</h3>
                            <p>SCHOOLS<br>WORKING ON<br>TARGET</p>
                        </li>
                        <li>
                        	<h3>${completeCampaign}</h3>
                            <p>SCHOOLS<br>ACHIEVED<br>TARGET</p>
                        </li>
                    </ul>
                </div>
            </li>
        </ul>
     </div>
     </div>
     </div>
     <!--about_us ends-->
     
    <!--inner_header ends-->
    
    
    </div>
    <!--inner_wrapper ends-->
</div>
<div id="teacherDetailsPopup" style="display: none;">
     <div class="ur_grid ur_grid_pop">

        <table class="table table-stri 200,ped table-hover table-bordered"  id="sample_8">
			         <thead>
			        	<tr>
			        			<th><strong>Teacher Name</strong></th>
			        			<th><strong>School Name</strong></th>
								<th><strong>Join Date</strong></th>
								<th style="display:none;"></th><th style="display:none;"></th>
								</tr></thead>
								<tbody></tbody> 
					</table>

        
        </div>
        
    </div>
 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
<%@include file="../footer.jsp" %>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/tab.js" ></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script> 
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script> 

<script src="<%=request.getContextPath()%>/NewStyles/jvectormap/jquery.jvectormap.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/jvectormap/jquery-jvectormap-us-aea-en.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>

<script type="text/javascript">
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
  
function getStateRecordsSchoolValue(code){
  	var html = '';
	$.ajax({
		url : "<%=request.getContextPath()%>/getStateInfo/"+code,
		method : 'GET',
		async:false,
		success : function(result) {
			if(result.totalSchools){
			  html= result.totalSchools;
			}
		}
	});
	return html;
  }


jQuery(document).ready(function($){
$.daisyNav();
});
    $(function(){
    
    			var states = ${statesListDetail};
    			var mapMarkers = [];
    		 	var mapMarkersValues = [];
    		 	
    		    $.each(states,function(index,value){
    		    	//console.log(value.dtoStateList);
    		 		if(value!=""){
    		 			//var maplat = getStateInfoWithLatLong(value);
    		 			$.each(value.dtoStateList,function(ind,val){
    		 				//console.log(val);
    		 				var html2 = val.schoolName;//+'<br> Number of Students:'+val.numberOfStudent+'<br> Number of Classes:'+val.schoolClasses;
    		 				mapMarkers.push({name: val.schoolName,schoolCity: val.schoolCity,classes:val.schoolClasses,students:val.numberOfStudent, latLng: [val.latitude,val.longitude]});
    		 				//console.log(val.schoolClasses);
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
    	    	        		label.html()+getStateRecords(shortState)
    	    	        );
    	    	  } ,
    	    	  onMarkerTipShow: function(event, label, index){
    	    		  var sname = mapMarkers[index].name;
    	    		  //var classes = mapMarkers[index].classes;
    	    		 // var students = mapMarkers[index].students;
    	    	        label.html(
    	    	        		sname
    	    	        );
    	    	      }
    	    	  
    	    	  
    	   
    	    });

     	
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
     		if(value!=""){
     			$('#vmap_usa').vectorMap('select', value.toLowerCase());
     		}
    	});
        $('#map_wrapper').hide();
        $("#liveClassesDiv").hide();
	}
function displayTeacherDetails(){
	

	$("#sample_8").dataTable().fnDestroy();
	$("#sample_8").html('');
	var userId = userId;
	var url='<%=request.getContextPath()%>/superadmin/getTeacherDetails';
	$.ajax({
		url:url,
		method:'POST',
		async :false,
		data:{userId:userId},
		success:function(response){
			if(response!=null){
				
				  var teacherDetail='';
				 teacherDetail+='<thead><tr><th><strong>Teacher Name</strong></th>'+
				 '<th ><strong>School Name</strong></th>'+	
				 '<th ><strong>Join Date</strong></th>'+
					'<th style="display:none;"></th><th style="display:none;"></th></tr></thead><tbody>';
					
					$.each( response.modelMap.newClassTeachers, function(index,value) {
						teacherDetail+='<tr><td ><p><a href="mailto:'+value.email+'">'+value.teacherName+'</a></p></td>'+
						'<td ><p>'+value.schoolName+'</p></td>'+
						'<td><p>'+value.joinDate+'</p></td>'+
						'<td style="display:none;"></td><td style="display:none;"></td></tr>';
					});
		    	
					teacherDetail+='</tbody>';
				 
					$("#sample_8").html(teacherDetail);
				    $("#sample_8").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15}); 
				    $("#sample_8").attr("style","width:100%");
				
				    
					 $.fancybox({
						 'minWidth':900,
						 'padding':45,
						 'minHeight':250,
					     'autoScale': true,
					     'autoDimensions': true,
					     'centerOnScroll': true,
					     'href' : '#teacherDetailsPopup'
					  });
				    
				/*  $.fancybox({
				     'autoScale': true,
				     'autoDimensions': true,
				     'centerOnScroll': true,
				     'href' : '#teacherDetailsPopup'
				  }); */
				 
				 
				 
			
			return true;
		}
		else{
			
		}
		}
	});
	
}
</script>
<script src="<%=request.getContextPath()%>/NewStyles/jquery-easy-pie-chart/jquery.easy-pie-chart.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/app.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/index.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.resize.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.pie.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.stack.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.crosshair.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/charts.js"></script>    
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.tooltip.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/select2/select2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script> 
<script>
    $(window).load(function(){
    	//App.init();
    	$("#header").sticky({ topSpacing: 0 });
    	// TableManaged.init();
    	//Index.initMiniCharts();
    	//Charts.initPieCharts();
        $('.easy-pie-chart .number.visits').easyPieChart({
            animate: 1000,
            size: 175,
            lineWidth: 5,
            barColor: App.getLayoutColorCode('green')
        });
    });
    
  </script>
</body>
</html>