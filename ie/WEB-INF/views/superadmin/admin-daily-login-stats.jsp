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
<title>Daily Login Stats</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>

<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css"> --%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery-ui.css">
<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"> -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
</head>

<body>
<div class="wrapper">
    <%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        
        <!--inner_header starts-->
        
        <!--about_us starts-->
        <div class="about_us">
            <div class="content_inner">
                <div class="pracProgress_hdr">
                    <h2>Daily Login Stats</h2>
                    <div class="green_line_btm"></div>
                    
                    
                    <div class="clr"></div>
                    
                </div>
                
               <section class="dashboard_login_list_main">
  	<div class="container">	
  		<div class="dashboard_login_list">
        	<ul>
        		<li onclick="getLoginUserDetails(3);" style="cursor: pointer;">
        			<div class="dashboard_login_circle">
        				<h4>Principals</h4>
        				<h3>${dailyLoginLogs.dailyPrincipalCount}</h3>
        			</div>
        		</li>   
        		<li onclick="getLoginUserDetails(2);" style="cursor: pointer;">
        			<div class="dashboard_login_circle">
        			<h4>Teachers</h4>
        				<h3>${dailyLoginLogs.dailyTeacherCount}</h3>
        			</div>
        		</li>
        		<li onclick="getLoginUserDetails(4);" style="cursor: pointer;">
        			<div class="dashboard_login_circle">
        			<h4>Parents</h4>
        				<h3>${dailyLoginLogs.dailyParentCount}</h3>
        			</div>
        		</li>
        		<li onclick="getLoginUserDetails(6);" style="cursor: pointer;">
        			<div class="dashboard_login_circle">
        			<h4>Contributers</h4>
        				<h3>${dailyLoginLogs.dailyContributerCount}</h3>
        			</div>
        		</li>
        		<li onclick="getLoginUserDetails(7);" style="cursor: pointer;">
        			<div class="dashboard_login_circle">
        			<h4>Track Players</h4>
        				<h3>${dailyLoginLogs.dailyTrackPlayerCount}</h3>
        			</div>
        		</li>     	
            </ul>
        </div>
  	</div>
  </section>
               
            </div>
        </div>
        <!--about_us ends--> 
        
        <!--inner_header ends--> 
        
    </div>
    <!--inner_wrapper ends--> 
</div>
 <div  id="daily-popup" style="display: none;">
            <div class="ur_grid ur_grid_pop">
            	
        <table class="table table-striped table-bordered table-hover"  id="sample_2">
         <thead>
        	<tr>
        			<th><strong>Email</strong></th>
					<th style="display:none;"></th><th style="display:none;"></th>
					</tr></thead>
					<tbody></tbody> 
</table>
        </div>
        
    </div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>

<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery-ui.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<%-- <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script> --%>
<script type="text/javascript">

   $(document).ready(function() {
	   
	   

   });
   
function getLoginUserDetails(roleId){
	$("#sample_2").dataTable().fnDestroy();
	$("#sample_2").html('');
   var url='<%=request.getContextPath()%>/superadmin/getDailyLoginUserDetails';
	$.ajax({
		url:url,
		method:'GET',
		data:{roleId:roleId},
		async :false,
		cache:false,
		success:function(response){
			
			if(response != null  && response.modelMap.dtoUsers!=null){
				var audioQualityDetail='';
				audioQualityDetail+='<thead><tr><th><strong>Email</strong></th>'+
				'<th style="display:none;"></th><th style="display:none;"></th></tr></thead><tbody>';
				
				$.each( response.modelMap.dtoUsers, function(index,value) {
					audioQualityDetail+='<tr><td><p><a href="mailto:'+value.email+'">'+value.email+'</a></p></td>'+
					'</td><td style="display:none;"></td><td style="display:none;"></td></tr>';
				});
	    	
	    	audioQualityDetail+='</tbody>';
	    	
		$("#sample_2").html(audioQualityDetail);
	    $("#sample_2").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
	    
			 $.fancybox({
				 'minWidth':600,
				 'padding':45,
				 'minHeight':250,
			     'autoScale': true,
			     'autoDimensions': true,
			     'centerOnScroll': true,
			     'href' : '#daily-popup'
			  });

			}
		}
	});
}	
	
</script> 


</body>
</html>
