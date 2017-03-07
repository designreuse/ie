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
<!DOCTYPE html>
<html>
<head>
<style>

.menu {
  -webkit-filter: url("#shadowed-goo"); 
  filter: url("#shadowed-goo"); } 
  .menu-item, .menu-open-button {background: #02a451; border-radius: 100%;
   width: 100px; height: 100px; margin-left: -40px; position: absolute; 
   top: 20px; color: white; text-align: center; 
   line-height: 25px; -webkit-transform: translate3d(0, 0, 0); 
   transform: translate3d(0, 0, 0); 
   -webkit-transition: -webkit-transform ease-out 200ms; 
   transition: -webkit-transform ease-out 200ms; 
   transition: transform ease-out 200ms; 
   transition: transform ease-out 200ms, -webkit-transform ease-out 200ms; } 
   
   .menu-open {display: none; } 
   .hamburger {width: 25px; height: 3px; background: white; 
   display: block; position: absolute; top: 50%; left: 50%; 
   margin-left: -12.5px; margin-top: -1.5px; 
   -webkit-transition: -webkit-transform 200ms; 
   transition: -webkit-transform 200ms; transition: transform 200ms; 
   transition: transform 200ms, -webkit-transform 200ms; } 
   
   .hamburger-1 {-webkit-transform: translate3d(0, -8px, 0); transform: translate3d(0, -8px, 0); } 
   
   .hamburger-2 {-webkit-transform: translate3d(0, 0, 0); transform: translate3d(0, 0, 0); } 
   .hamburger-3 {-webkit-transform: translate3d(0, 8px, 0); transform: translate3d(0, 8px, 0); } 
   .menu-open:checked + .menu-open-button .hamburger-1 {-webkit-transform: translate3d(0, 0, 0) rotate(45deg); 
   transform: translate3d(0, 0, 0) rotate(45deg); } 
   .menu-open:checked + .menu-open-button .hamburger-2 {-webkit-transform: translate3d(0, 0, 0) scale(0.1, 1); 
   transform: translate3d(0, 0, 0) scale(0.1, 1); } 
   .menu-open:checked + .menu-open-button .hamburger-3 {-webkit-transform: translate3d(0, 0, 0) rotate(-45deg); 
   transform: translate3d(0, 0, 0) rotate(-45deg); } 
   .menu {position: absolute; left: 50%; margin-left: -190px; 
   padding-top: 20px; padding-left: 80px; width: 380px; 
   height: 250px; box-sizing: border-box; font-size: 20px; text-align: left; } 
   .menu-item:hover {background: white; color: #02a451; } 
   .menu-item:nth-child(3) {-webkit-transition-duration: 70ms; transition-duration: 70ms; } 
   .menu-item:nth-child(4) {-webkit-transition-duration: 130ms; transition-duration: 130ms; } 
   .menu-item:nth-child(5) {-webkit-transition-duration: 190ms; transition-duration: 190ms; } 
   .menu-item:nth-child(6) {-webkit-transition-duration: 250ms; transition-duration: 250ms; } 
   .menu-item:nth-child(7) {-webkit-transition-duration: 310ms; transition-duration: 310ms; } 
   .menu-open-button {z-index: 2; -webkit-transition-timing-function: cubic-bezier(0.175, 0.885, 0.32, 1.275); 
   transition-timing-function: cubic-bezier(0.175, 0.885, 0.32, 1.275); 
   -webkit-transition-duration: 400ms; transition-duration: 400ms; 
   -webkit-transform: scale(1.1, 1.1) translate3d(0, 0, 0); 
   transform: scale(1.1, 1.1) translate3d(0, 0, 0); cursor: pointer; } 
   .menu-open-button:hover {-webkit-transform: scale(1.2, 1.2) translate3d(0, 0, 0); transform: scale(1.2, 1.2) translate3d(0, 0, 0); } .menu-open:checked + .menu-open-button {-webkit-transition-timing-function: linear; transition-timing-function: linear; -webkit-transition-duration: 200ms; transition-duration: 200ms; -webkit-transform: scale(0.8, 0.8) translate3d(0, 0, 0); transform: scale(0.8, 0.8) translate3d(0, 0, 0); } .menu-open:checked ~ .menu-item {-webkit-transition-timing-function: cubic-bezier(0.935, 0, 0.34, 1.33); transition-timing-function: cubic-bezier(0.935, 0, 0.34, 1.33); } .menu-open:checked ~ .menu-item:nth-child(3) {-webkit-transition-duration: 160ms; transition-duration: 160ms; -webkit-transform: translate3d(114.42548px, 11.48084px, 0); transform: translate3d(114.42548px, 11.48084px, 0); } .menu-open:checked ~ .menu-item:nth-child(4) {-webkit-transition-duration: 240ms; transition-duration: 240ms; -webkit-transform: translate3d(77.18543px, 85.2491px, 0); transform: translate3d(77.18543px, 85.2491px, 0); } .menu-open:checked ~ .menu-item:nth-child(5) {-webkit-transition-duration: 320ms; transition-duration: 320ms; -webkit-transform: translate3d(0.09158px, 114.99996px, 0); transform: translate3d(0.09158px, 114.99996px, 0); } .menu-open:checked ~ .menu-item:nth-child(6) {-webkit-transition-duration: 400ms; transition-duration: 400ms; -webkit-transform: translate3d(-77.04956px, 85.37192px, 0); transform: translate3d(-77.04956px, 85.37192px, 0); } .menu-open:checked ~ .menu-item:nth-child(7) {-webkit-transition-duration: 480ms; transition-duration: 480ms; -webkit-transform: translate3d(-114.40705px, 11.66307px, 0); transform: translate3d(-114.40705px, 11.66307px, 0); } 


</style>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex, nofollow">
  <meta name="googlebot" content="noindex, nofollow">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">

<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
  

  
  
  

  
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<script
	src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="//code.jquery.com/jquery-3.1.1.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/canvasjs.min.js"></script> 
  <link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.fancybox.pack.js?v=2.1.5"></script>

  

  

  

  
 
  

  

  <style type="text/css">
    
  </style>

  <title>Highcharts Demo</title>

  
 <script type='text/javascript'>

 function getSchools(stateShort)
 {
	//alert(stateShort);
	
	 $("#sample_1").dataTable().fnDestroy();
		$("#sample_1").html('');
		   var url='<%=request.getContextPath()%>/superadmin/getSchoolsByState';
			$.ajax({
				url:url,
				method:'POST',
				async :false,
				data:{"stateShot":stateShort},
				cache:false,
				success:function(response){
					
					if(response != null){
						
						var schoolDetails='';
						
						schoolDetails+='<thead><tr><th>Name</th>';
						
						schoolDetails+='<th>Email</th>';
						
						schoolDetails+='<th>School Name</th>';
						
						schoolDetails+='<th>City</th></tr></thead><tbody>';				 
			
			$.each(response.modelMap.dtoUsers, function(index,value) {
				
				schoolDetails+='<tr><td>'+value.teacherName+'</td>'+
					'<td>'+value.email+'</td>'+
					'<td>'+value.schoolName+'</td>'+
					'<td>'+value.city+'</td></tr>';
			});
			schoolDetails+='</tbody>';
			$("#sample_1").html(schoolDetails);
					
					

												
							$("#sample_1").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
							
							  $.fancybox({
	        					 'minWidth':900,
	        					 'padding':45,
	        					 'minHeight':250,
	        				     'autoScale': true,
	        				     'autoDimensions': true,
	        				     'centerOnScroll': true,
	        				     'href' : '#school-popup'
	        				  }); 
				}
					
			
				}
			});
 }
 function getTopUsers(stateShort)
 {
	  $("#sample_24").dataTable().fnDestroy();
		$("#sample_24").html('');
		   var url='<%=request.getContextPath()%>/superadmin/getTopUsersByState';
			$.ajax({
				url:url,
				method:'POST',
				async :false,
				data:{"stateShot":stateShort},
				cache:false,
				success:function(response){
					
					if(response != null){
						
							var revenueDetails='';
							
							revenueDetails+='<thead><tr><th>Email</th>';
							
								 revenueDetails+='<th>Audio Title</th>';
							
								 revenueDetails+='<th>Audio Name</th>';
							
							 revenueDetails+='<th>Created Date</th></tr></thead><tbody>';				 
				
				$.each(response.modelMap.topTracksPlayedDetails, function(index,value) {
					
						revenueDetails+='<tr><td>'+value.email+'</td>'+
						'<td>'+value.teacherName+'</td>'+
						'<td>'+value.schoolName+'</td>'+
						'<td>'+value.uCurrentDate+'</td></tr>';
				});
				revenueDetails+='</tbody>';
				$("#sample_24").html(revenueDetails);
						
						

													
								$("#sample_24").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
								
								  $.fancybox({
		        					 'minWidth':900,
		        					 'padding':45,
		        					 'minHeight':250,
		        				     'autoScale': true,
		        				     'autoDimensions': true,
		        				     'centerOnScroll': true,
		        				     'href' : '#topUserDetails'
		        				  }); 
					}
				}
			});
 }
 function LoginTrends(stateShort)
 {
	//alert(stateShort);
	
	 
 var url='<%=request.getContextPath()%>/superadmin/ie-usage';
		$.ajax({
			url:url,
			method:'GET',
			async :false,
			data:{"stateShort":stateShort},
			cache:false,
			success:function(response){
				/* alert(response); */
				var result=[];
				
				 var startDate = new Date(new Date().getTime() - 28*24*60*60*1000);  
			   var endDate = new Date(); 
			   var monthNames = ["January", "February", "March", "April", "May", "June",
			                     "July", "August", "September", "October", "November", "December"
			                   ];
			/*    $("#todayDate")[0].innerHTML= "WEEK OF "+ monthNames[endDate.getMonth()]+ " "+  endDate.getDate()+","+endDate.getFullYear(); */
			  var iDate = new Date(startDate);
			   /* alert(endDate);
			   alert(startDate); */
			 /*   alert(endDate);  */
			   while (iDate <= endDate) {
				   
				$.each(response,function(key,value){
				
					if(iDate.getDay()==new Date(key).getDay())
					result.push({x: new Date(key),y: parseInt(value)});
					else
						result.push({x: new Date(iDate) ,y: 0});	
					
					
			});
				 iDate.setDate(iDate.getDate() + 1);
			   }
	 /* alert(result); */
	  
	  CanvasJS.addColorSet("crimShades",
               [//colorSet Array

               
               "#339933"                
               ]);

	 
	    var chart = new CanvasJS.Chart("chartContainer",
	    { 
	    	
	    	colorSet: "crimShades",
	    	 axisY:{
	    		  
	    		  
	    		
	    		 },
	    		 axisX:{
		    	
		    		   interval:1,
		    		   valueFormatString: "DD-MMM"
		    		 },
		    		 
	      title:{
	      text: "Logins"
	      },
	       data: [
	      {
	        type: "column",

	        dataPoints: result,
	      click: function(e){
	 		  /*   alert(  e.dataSeries.type+ ", dataPoint { x:" + e.dataPoint.x + ", y: "+ e.dataPoint.y + " }" ); */
	 		    /* getUsersForDate(e.dataPoint.x); */
	 		   } 
	      }
	      
	      ]
	    });

	    chart.render();
	    
			}
		});
		  $.fancybox({
				 'minWidth':900,
				 'padding':45,
				 'minHeight':250,
			     'autoScale': true,
			     'autoDimensions': true,
			     'centerOnScroll': true,
			     'href' : '#chartContainer'
			  }); 
		
		
 }
 
 function dailyPracticeHistory(stateShort)
 {
	alert(stateShort);
 }
 </script>
 


<script type='text/javascript'>

$(function () {

	
    
      function pointClick() {
    	//  alert(this.name);
    	  /* $("#menu-click")[0].innerHTML=this.name */
    
    	  var options1='<a href="javascript:;" class="menu-item" id="menu-item-1" onclick="getSchools(\''+this.code+'\');"  style="top: 197px;margin-left: -53px;">Schools</a>';
    	  var options2='<a href="javascript:;" class="menu-item" id="menu-item-1" onclick="getTopUsers(\''+this.code+'\');" style="top: 155px;margin-left: 128px;">Top 10% users</a>';
    	  var options3='<a href="javascript:;" class="menu-item" id="menu-item-1" onclick="LoginTrends(\''+this.code+'\');" style="top: 220px;margin-left: 48px;">Login Trends</a>';
    	  var options4='<a href="javascript:;" class="menu-item" id="menu-item-1" onclick="dailyPracticeHistory(\''+this.code+'\');" style="top: 156px;margin-left: -137px;">Daily Practice History</a>';
    	  $("#menu-item-1").html("");
    	  $("#menu-item-1").html(options1);
    	  $("#menu-item-2").html(options2);
    	  $("#menu-item-3").html(options3);
    	/*   $("#menu-item-4").html(options4); */
          var options='<li> <a href="javascript:;" onclick="getSchools(\''+this.code+'\');">Schools</a></li><li> <a href="javascript:;" onclick="getTopUsers(\''+this.code+'\');">Top 10% users</a></li><li><a href="javascript:;" onclick="LoginTrends(\''+this.code+'\');">Login Trends</a></li><li><a href="javascript:;" onclick="dailyPracticeHistory(\''+this.code+'\');">Daily Practice History</a></li>';
          $("#popup").html(options);
     	 $.fancybox({
     		 'minWidth':400,
			/*  'padding':45, */
			 'minHeight':350,
		     'autoScale': true,
		     'autoDimensions': true,
		     'centerOnScroll': true,
		     'href' : '#menu'
		  });
      }
     
var maps=[]
 var maps=${mapDetails};

 var result=[];
 /* var myJsonString = JSON.stringify(maps);
 alert(myJsonString); */
 $.each(maps,function(index,val){
		result.push({"code": val.code, "value": val.value});
		
		
}); 

/*  var data=result;
        // Make codes uppercase to match the map data
        $.each(data, function () {
            this.code = this.code.toUpperCase();
        }); */

        // Instanciate the map
        Highcharts.mapChart('container', {

            chart: {
                borderWidth: 0
            },

            title: {
                text: 'IE School density'
            },

            legend: {
                layout: 'horizontal',
                borderWidth: 0,
                backgroundColor: 'rgba(255,255,255,0.85)',
                floating: true,
                verticalAlign: 'top',
                y: 25
            },

            mapNavigation: {
                enabled: true
            },

        colorAxis: {
                min: 1,
                type: 'logarithmic',
                minColor: '#53c653',
                maxColor: '#206020',
   stops: [
                    [0, '#53c653'],
                     
                    [0.67, '#339933'], 
                    [1, '#206020']
                ] 
            },  
            
            series: [{
                animation: {
                    duration: 1000
                },
                data:result,
                mapData: Highcharts.maps['countries/us/us-all'],
               joinBy: ['postal-code', 'code'],
                dataLabels: {
                    enabled: false,
                    color: '#FFFFFF',
                    format: '{point.code}'
                },
                name: 'School density',
                tooltip: {
                    pointFormat: '{point.name}:{point.value}'
                },
                
                point: {
                    events: {
                        click: pointClick
                    }
                },
            }]
        });
  
});
//]]> 

</script>

  
</head>

<body>
  <script src="https://code.highcharts.com/maps/highmaps.js"></script>
<script src="https://code.highcharts.com/maps/modules/data.js"></script>
<script src="https://code.highcharts.com/mapdata/countries/us/us-all.js"></script>

 <%@include file="header.jsp" %>
<div id="container" style="height: 700px; min-width: 510px; max-width: 800px; margin: 0 auto"></div>
<nav class="menu" id="menu">
  <input type="checkbox" href="#" class="menu-open" name="menu-open" id="menu-open"/>
<!--  <label class="menu-open-button" for="menu-open" id="menu-click">
   click
  </label> -->
 <li id="menu-item-1">

</li>
<li id="menu-item-2">

</li>
<li id="menu-item-3">

 </li>
<!--<li id="menu-item-4">

</li> -->

</nav>


<div id="chartContainer" style="height:290px; width:100%;"></div>
        <div class="ourStory-Popup"  id="topUserDetails" style="display: none;">
            <div class="ur_grid ur_grid_pop">
            	
            	
        <table class="table table-stri 200,ped table-hover table-bordered"  id="sample_24">
         <thead>
        	<tr>
        			<th><strong>Name</strong></th>
        			<th><strong>Email</strong></th>
        			<th><strong>School Name</strong></th>
        			<th><strong>Created Date</strong></th>
        			
			</tr>
		</thead>
					<tbody>		
							</tbody>
</table>

        
        </div>
        </div> 
    
    
            <div class="ourStory-Popup"  id="school-popup" style="display: none;">
            <div class="ur_grid ur_grid_pop">
            	
            	
        <table class="table table-stri 200,ped table-hover table-bordered"  id="sample_1">
         <thead>
        	<tr>
        			<th><strong>Name</strong></th>
        			<th><strong>Email</strong></th>
        			<th><strong>School Name</strong></th>
        			<th><strong>City</strong></th>
        			
			</tr>
		</thead>
					<tbody>		
							</tbody>
</table>

        
        </div>
        </div> 

  
  <script>
  // tell the embed parent frame the height of the content
  if (window.parent && window.parent.parent){
    window.parent.parent.postMessage(["resultsFrame", {
      height: document.body.getBoundingClientRect().height,
      slug: "None"
    }], "*")
  }
</script>

</body>

</html>