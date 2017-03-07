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
<title>Dashboard</title>
<link rel="stylesheet" href="http://innerexplorer.org/css/bootstrap.min.css">
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css"> --%>
	<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath()%>/NewStyles/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/select2/select2_metro.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
.fancybox-inner{
height: auto !important;
}
.mg20
{
margin-top:20px;
}
</style>
 <style type="text/css">
        .fancybox-margin {
            margin-right: 17px;
        }
        .container{padding: 0 !important}
        .tmc_1_new{width: 23% !important;margin-right: 2% !important;}
        
        .main-col-12{width: 100%; float: left; text-align: center; margin-top: 20px}
        .text-rightN{text-align: right;} .text-leftN{text-align: left;}

        .inner_part{width: 100%;float: left;margin-top: 50px;}
        .left-side-dashboard{float: left;background-color: #02a451;color: #fff !important;padding: 20px 35px;}
        .left-side-dashboard h2{text-align: center;font-size: 42px !important;font-weight: 500 !important;}
        .left-side-dashboard p{text-align: center;font-size: 18px;margin-bottom: 60px;}
        .teacher-progress{text-align: left;color: #fff;font-size: 14px;float: left;}
        .teacher-progress span{float: left;font-weight: 700 !important;margin-right: 10px;}
        .teacher-progress p{font-size: 14px;float: left;margin-bottom: 7px;}
        .right-dashboard{float: left;}
        .teacher-box{float: left;text-align: center;}
        .teacher-box img{display: initial;} .teacher-box input{}
        .teacher-box{text-align: center;}
        .school-btn{width: auto;margin-top:20px;bottom: 0;}
        .community-heading{float: left;margin-top: 30px;}
        .community-heading h2{font-size: 37px;}
        .tables-pto{float: left;}
        .teacher-table-pto{border:2px solid #d1d1d1;border-radius: 5px;}
        .teacher-table-pto h3{margin-left: 10px;font-size: 18px;font-weight: 700;color: #5e5e5e;margin-top: 10px;line-height: 30px;}
       .left-side-graph {
    background-color: #42d288;
    float: left;
    padding: 28px 7px;
}
        .tables-outer-pto{margin-top: 50px;}
        .p0{padding: 0;}
        .community-news{text-align: center;}
        .community-news-inner{background-color: #f1f1f1;padding: 50px 0;border-radius: 5px;}
        .bootom-tab-pto{width: 100%;;margin-top: 40px;text-align: center;}
        .bootom-tab-pto .border-around{border:2px solid #02a451;text-align: center;padding: 10px;}
        .bootom-tab-pto .border-around p{margin-top: 10px;}
        .bottom-tab-buttons .school-btn{float: left;margin-right: 20px;}

        
      .secBt{margin-top:14px !important}  
    .pT30{padding-top:50px}
    .box-outer{width:100%; float:left; border:2px solid #02a451; padding:5px 0 0 0 }
							  		.txt_number{font-size:30px; padding:20px; float:left; width:100%; text-align:center}
							  		.txt_bottm{background-color:#02a451; padding:4px; color:#fff; margin-bottom:0 !important; float:left; width:100%}
							  		.clear10{width:100%; float:left; height:10px}
    </style>
</head>

<body>
<spring:eval var="bucketPath" expression="@propertyConfigurer.getProperty('bucket_path')" />
<div class="wrapper">
<%@include file="header.jsp" %>

		<!--inner_wrapper starts-->
		<div class="inner_part">

			
			<!--brow_don_camp starts-->
			<div class="container">
			  <div class="row">
					<div class="col-md-12">
						<div class="col-md-6 col-sm-6">
						  <div class="col-md-12">
						     <%-- <div class="col-md-12 left-side-dashboard">
								  <h2>${teacherProgress}</h2>
								  <p>Teacher Progress</p>
								  <div class="teacher-progress col-md-6 col-sm-6">
								  	<span>${activeTeacherCount}</span>
								  	<p>Active Teachers</p>
								  </div>
								  <div class="teacher-progress col-md-6 col-sm-6">
								  	<span>${activeParentsCount}</span>
								  	<p>Active Parents</p>
								  </div>
							   </div>
							   --%>
							   	   <div class="col-md-12 ">
							  <div class="col-lg-6 col-sm-6 teacher-box p0">
							     <img class="img-responsive" src="<%=request.getContextPath()%>/NewStyles/images/manage-homes.png" alt="#">
					          
	                              <div class="inherit school-btn">
									
									<input class="home_act_btn whtbg" value="MANAGE SCHOOL" type="button" onclick="manageSchools();" style="background-color:#02a451">
									
	                              </div>
	                              <div class="clear10"></div>
	                              <div class="col-md-6 ">
	                              		<div class="box-outer text-center">
	                              			<strong class="txt_number">${classCount}</strong>
	                              			<p class="txt_bottm">Classes</p>	
	                              		</div>
	                              </div>
	                              <div class="col-md-6 ">
	                              	<div class="box-outer text-center">
	                              			<strong class="txt_number">${activeTeacherCount}</strong>
	                              			<p class="txt_bottm">Teachers</p>	
	                              		</div>
	                              </div>
	                          </div>
	                          <div class="col-lg-6 col-sm-6 teacher-box p0">
							     <img class="img-responsive" src="<%=request.getContextPath()%>/NewStyles/images/manage-school.png" alt="#">
					          
	                              <div class="inherit school-btn secBt">
									
									<input class="home_act_btn whtbg" value="MANAGE HOMES" type="button" onclick="manageHomes();" style="background-color:#02a451">
									
	                              </div>
	                                <div class="clear10"></div>
	                              <div class="col-md-6 ">
	                              		<div class="box-outer text-center">
	                              			<strong class="txt_number">${activeParentsCount}</strong>
	                              			<p class="txt_bottm">Parents</p>	
	                              		</div>
	                              </div>
	                              <div class="col-md-6 ">
	                              	<div class="box-outer text-center">
	                              			<strong class="txt_number">${count}%</strong>
	                              			<p class="txt_bottm">Practice</p>	
	                              		</div>
	                              </div>
	                          </div>
	                          
	                       </div>
		<div class="col-md-6" style="padding-top:45px;">	 <div id="chartContainer1" style="height:300px; width:100%;"></div> </div>					
	<div class="col-md-6" style="padding-top:45px;">	 <div id="chartContainer" style="height:300px; width:100%;"></div> </div>
	
						    </div>
						  </div>
						<div class="col-md-6 right-dashboard">
										   <div class="col-md-12  p0">
								   <div class="col-md-12 tables-pto  p0">
								     <div class="teacher-table-pto"><h3>Teachers Added</h3></div>
								     <table class="table table-striped table-bordered table-hover" id="sample_1">
							<thead>
							<tr>
								<th>
									Name
								</th>
								<th>
									 Date
								</th>
								<th>
									 Status
								</th>
							</tr>
							</thead>
							<tbody>
							 <c:forEach var="teacher" items="${teachers}">
    	
    						<tr >
								
								<td>
									 ${teacher.teacherName}
								</td>
								<td>
									 ${teacher.joiningDate}
								</td>
								
								<td>
								<c:if test="${not empty teacher.isBlocked}">
									 Active
								</c:if>
								<c:if test="${empty teacher.isBlocked}">
									 Not Active
								</c:if>
								</td>
								
							</tr>
    						</c:forEach>
							
							
							</tbody>
							</table>
								     </div>
								  
								    <div class="col-md-12 tables-outer-pto p0" >
								     <div class="teacher-table-pto"><h3>Parents Added</h3></div>
								      <table class="table table-striped table-bordered table-hover" id="sample_2">
							<thead>
							<tr>
								<th>
									Name
								</th>
								<th>
									 Date
								</th>
								<th>
									 Status
								</th>
							</tr>
							</thead>
							<tbody>
							 <c:forEach var="parent" items="${parents}">
    	
    						<tr >
								
								<td>
									 ${parent.teacherName}
								</td>
								<td>
									 ${parent.joiningDate}
								</td>
								
								<td>
								<c:if test="${not empty parent.isBlocked}">
									 Active
								</c:if>
								<c:if test="${empty parent.isBlocked}">
									 Not Active
								</c:if>
								</td>
								
							</tr>
    						</c:forEach>
							
							
							</tbody>
							</table>
								   </div>
							   </div>
	                      
	                   
						</div>
					</div>

                    <div class="col-md-12">
						<div class="bootom-tab-pto">
							  <div class="col-md-6">
							    <div  class="border-around">
							      <p>YOU ARE SUBSCRIBED TILL ${expireDate}</p>
							    </div>
							  </div>
							  <!-- <div class="col-md-6">
							    <div class="bottom-tab-buttons">
								    <div class="inherit school-btn">
										<a href="#!">
										<input class="home_act_btn whtbg" value="SUBSCRIPTION HISTORY" type="button">
										</a>
		                            </div>
		                            <div class="inherit school-btn ">
										<a href="#!">
										<input class="home_act_btn whtbg" value="EXTEND SUBSCIPTION" type="button">
										</a>
		                            </div>
		                         </div>
							  </div> -->
						</div>
				    </div>
			  </div>
			</div>
			<!--brow_don_camp ends-->

			

		</div>
		<!--inner_wrapper ends-->
		<div id="manageHomes"  style="display:none;">

			
			
			<h5>Manage Homes</h5>
		<!-- 	<div class="ourStory-Popup" id="manageHomes" style="display:none;">
		<div class="ur_grid ur_grid_pop"> -->

			<table class="table table-stri 200,ped table-hover table-bordered"
				id="sample_16">
				<thead>
					<tr>
						<th><strong>Name</strong></th>
						<th><strong>Email</strong></th>
						<th><strong>Status</strong></th>
						<th><strong>Action</strong></th>
						
					
						
				
						
					</tr>
				</thead>
								<tbody>
							 <c:forEach var="parent" items="${parents}">
    	
    						<tr >
								
								<td>
									 ${parent.teacherName}
								</td>
								<td>
									 ${parent.joiningDate}
								</td>
								
								<td>
								<c:if test="${not empty parent.isBlocked}">
									 Active
								</c:if>
								<c:if test="${empty parent.isBlocked}">
									 Not Active
								</c:if>
								</td>
								<td>
									 Change Password
								</td>
								
							</tr>
    						</c:forEach>
							
							
							</tbody>
			</table>


	
	</div>
	
	<div id="manageSchools"  style="display:none;">
	
			
			
			<h5>Manage Schools</h5>
		<!-- 	<div class="ourStory-Popup" id="manageHomes" style="display:none;">
		<div class="ur_grid ur_grid_pop"> -->

			<table class="table table-stri 200,ped table-hover table-bordered"
				id="sample_17">
				<thead>
					<tr>
						<th><strong>Name</strong></th>
						<th><strong>School Name</strong></th>
						<th><strong>Email</strong></th>
						<th><strong>Status</strong></th>
						<th><strong>Action</strong></th>
						
					
						
				
						
					</tr>
				</thead>
								<tbody>
							
							
							
							</tbody>
			</table>


		

	</div>
	
	<!-- Change Password Pop Up -->

<div id="teacherChangePassword" style="display:none">
<form action="" id="teacherChangePasswordForm" name="teacherChangePasswordForm">
<h3 class="migChngPass">Change Password</h3>
<label>New Password : </label><input type="text" id="newPassword" name="newPassword"/>
<label>Confirm Password: </label><input type="text" id="confirmPassword" name="confirmPassword"/><br>
<input type="hidden" id="teacherUserId" name="teacherUserId">
<input type="button" title="Save" value="Save" onclick="changePasswordFrom();" class="startBtn"/>
</form>
</div>
	

</div>







	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/canvasjs.min.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/jquery-easy-pie-chart/jquery.easy-pie-chart.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.resize.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.pie.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.stack.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.crosshair.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.time.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.axislabels.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/charts.js"></script>   
 <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.tooltip.js"></script>  
<script src="<%=request.getContextPath()%>/NewStyles/js/charts-flotcharts.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$("#header").sticky({ topSpacing: 0 });
		$("#openChatBar").show();
		$.daisyNav();
		initDialog();
	});
	</script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script> 
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
<script type="text/javascript">
    $(function(){
    	
    
      /* SyntaxHighlighter.all(); */
    	$("#sample_1").dataTable({"aLengthMenu": [[3,5, 15, 20, -1],[3,5, 15, 20, "All"] ],"iDisplayLength": 3});
    	$("#sample_2").dataTable({"aLengthMenu": [[3,5, 15, 20, -1],[3,5, 15, 20, "All"] ],"iDisplayLength": 3});
      
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
      
      var url='<%=request.getContextPath()%>/communityadmin/getLastSevenDayCommunityParents';
		$.ajax({
			url:url,
			method:'GET',
			async :false,
			data:{},
			cache:false,
			success:function(response){
				var result=[];
				//alert(Object.keys(response).length);
				if(Object.keys(response).length!=0){
					 var startDate = new Date(new Date().getTime() - 8*24*60*60*1000);  
					   var endDate = new Date(); 
					  var iDate = new Date(startDate);
					   while (iDate <= endDate) {
						   
						$.each(response,function(key,value){
						
							if(iDate.getDay()==new Date(key).getDay())
							result.push({x: new Date(key),y: parseInt(value)});
							else
								result.push({x: new Date(iDate),y: 0});	
							
							
					});
						 iDate.setDate(iDate.getDate() + 1);
					   }
				}	
				else{
					 var startDate = new Date(new Date().getTime() - 8*24*60*60*1000);  
					   var endDate = new Date(); 
					  var iDate = new Date(startDate);
					   while (iDate <= endDate) {
								result.push({x: new Date(iDate),y: 0});			
					
						 iDate.setDate(iDate.getDate() + 1);
					   }
				}
	 
	    var chart = new CanvasJS.Chart("chartContainer",
	    {

	      title:{
	      text: "Parent-Logins"
	      },
	       data: [
	      {
	        type: "line",

	        dataPoints: result,
	      }
	      ]
	    });

	    chart.render();
	    
			}
		});   
		
		var url='<%=request.getContextPath()%>/communityadmin/getLastSevenDayCommunityPrincipals';
		$.ajax({
			url:url,
			method:'GET',
			async :false,
			data:{},
			cache:false,
			success:function(response){
				var result=[];
				//alert(response.length);
				if(Object.keys(response).length!=0){
					 var startDate = new Date(new Date().getTime() - 8*24*60*60*1000);  
					   var endDate = new Date(); 
					  var iDate = new Date(startDate);
					   while (iDate <= endDate) {
						   
						$.each(response,function(key,value){
						
							if(iDate.getDay()==new Date(key).getDay())
							result.push({x: new Date(key),y: parseInt(value)});
							else
								result.push({x: new Date(iDate),y: 0});	
							
							
					});
						 iDate.setDate(iDate.getDate() + 1);
					   }
				}
				else{
					 var startDate = new Date(new Date().getTime() - 8*24*60*60*1000);  
					   var endDate = new Date(); 
					  var iDate = new Date(startDate);
					   while (iDate <= endDate) {
								result.push({x: new Date(iDate),y: 0});			
					
						 iDate.setDate(iDate.getDate() + 1);
					   }
				}
				
	 
	    var chart = new CanvasJS.Chart("chartContainer1",
	    {

	      title:{
	      text: "Principal-Logins"
	      },
	       data: [
	      {
	        type: "line",

	        dataPoints: result,
	      }
	      ]
	    });

	    chart.render();
	    
			}
		});   
});
    
    function getPlaybackAPI(teacherId){
    	//$("#schoolId").val(teacherId);
    	
    		$("#sample_6").dataTable().fnDestroy();
    		$("#sample_6").html('');
    	   var url='<%=request.getContextPath()%>/principal/getLetterToParentDetails';
    		$.ajax({
    			url:url,
    			method:'POST',
    			async :false,
    			data:{teacherId:teacherId},
    			cache:false,
    			success:function(response){
    				
    				if(response != null  && response.modelMap.dtoUsers!=null){
    					var audioQualityDetail='';
    					audioQualityDetail+='<thead><tr><th><strong>Parent Email</strong></th>'+
    					'<th ><strong>Name Of Parent</strong></th><th ><strong>Date of Invitation</strong></th>'+
    					'<th><strong>Status</strong></th><th><strong>Teacher Email</strong></th></tr></thead><tbody>';
    					
    					$.each( response.modelMap.dtoUsers, function(index,value) {
    						audioQualityDetail+='<tr><td ><p>'+value.email+'</p></td>'+
    						'<td ><p>'+value.commnets+'</p></td>'+
    						'<td><p>'+value.timeZone+'</p></td>'+
    						'<td><p>'+value.title+'</p></td>'+
    						'<td><p>'+value.teacherEmail+'</p></td></tr>';
    					});
    		    	
    		    	audioQualityDetail+='</tbody>';
    		    	
    			$("#sample_6").html(audioQualityDetail);
    		    $("#sample_6").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
    				
    				 $.fancybox({
    					 'minWidth':900,
    					 'padding':45,
    					 'minHeight':150,
    				     'autoScale': true,
    				     'autoDimensions': true,
    				     'centerOnScroll': true,
    				     'href' : '#manageSchools'
    				  });
    	
    				}
    			}
    		}); 
    }	
    $('#teacherChangePasswordForm').validate({
        errorElement: 'span', //default input error message container
        errorClass: 'help-block', // default input error message class
        focusInvalid: false, // do not focus the last invalid input
        //ignore: "",
        rules: {
       	 newPassword: {
                required: true,
         		minlength : 6,
         		maxlength : 20
             },
             confirmPassword: {
                 equalTo: "#newPassword"
             }

        },


        invalidHandler: function(event, validator) { //display error alert on form submit   
        },

        highlight: function(element) { // hightlight error inputs
            $(element)
                .addClass('has-error'); // set error class to the control group
            $(element).next('.fancybox').next('.fancybox').addClass('has-error');
        },
        
        success: function(label) {
            label.removeClass('has-error');
            label.next('.fancybox').next('.fancybox').removeClass('has-error');
            label.remove();
        },

        errorPlacement: function(error, element) {
            if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
                error.insertAfter(element.next('.fancybox').next('.fancybox'));
            } else if (element.closest('.input-icon').size() === 1) {
                error.insertAfter(element.closest('.input-icon'));
            } else {
                error.insertAfter(element);
            }
        },

        submitHandler: function(form) {
            form.submit();
        }
    });
 
function manageSchools(){

    	
	$("#sample_17").dataTable().fnDestroy();
    	$("#sample_17").html('');
    	
    	 var url='<%=request.getContextPath()%>/communityadmin/getPrincipalDetails';
    	$.ajax({
    		url:url,
    		method:'GET',
    		async :true,
    		success:function(response){
    			if(response!=null){
    				
    				

    				 var schoolDetail='';
    				 schoolDetail+='<thead><tr><th><strong>Name</strong></th>'+
    				 '<th><strong>School Name</strong></th>'+
    				 '<th><strong>Email</strong></th>'+
    				 '<th><strong>Status</strong></th>'+
    				 '<th><strong>Action</strong></th></thead><tbody>';
    	
    	$.each(response.modelMap.dtoUsers, function(index,value) {
    		
    			
    		schoolDetail+='<tr><td>'+value.teacherName+'</td>'+
    						'<td>'+value.schoolName+'</td>'+
    						'<td>'+value.email+'</td>';
    						
    						 if(value.isBlocked == 'N'){
    							 schoolDetail+=	'<td>'+"Active"+'</td>';
    						}
    						 else
    						 {
    							 schoolDetail+=	'<td>'+"Inactive"+'</td>';
    						}
    							 
    						 schoolDetail+=	'<td>'+'<a onclick="setChangePassword(\''+value.email+'\','+value.userId+');"> [Change Password]</a>'+'</td></tr>';
    						
    						 $.fancybox({
    						     'autoScale': true,
    						     'autoDimensions': true,
    						     'centerOnScroll': true,
    						     'href' : '#manageSchools'
    						  });



    					});
    		    	
    				
    				
    				
    				
    					schoolDetail+='</tbody>';
    				 
    					$("#sample_17").html(schoolDetail);
    				   $("#sample_17").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15}); 
    				
    		}
    		
    		}
    	});
    }
function manageHomes(){

	
	$("#sample_16").dataTable().fnDestroy();
	$("#sample_16").html('');
	
	 var url='<%=request.getContextPath()%>/communityadmin/getParentDetails';
	$.ajax({
		url:url,
		method:'GET',
		async :true,
		success:function(response){
			if(response!=null){
				
				

				 var schoolDetail='';
				 schoolDetail+='<thead><tr><th><strong>Name</strong></th>'+
				 '<th><strong>Email</strong></th>'+
				 '<th><strong>Status</strong></th>'+
				 '<th><strong>Action</strong></th></thead><tbody>';
	
	$.each(response.modelMap.dtoUsers, function(index,value) {
		
			
		schoolDetail+='<tr><td>'+value.teacherName+'</td>'+
						'<td>'+value.email+'</td>';
						
						 if(value.isBlocked == 'N'){
							 schoolDetail+=	'<td>'+"Active"+'</td>';
						}
						 else
						 {
							 schoolDetail+=	'<td>'+"Inactive"+'</td>';
						}
							 
						 schoolDetail+=	'<td>'+'<a onclick="setChangePassword(\''+value.email+'\','+value.userId+');"> [Change Password]</a>'+'</td></tr>';
						
						 $.fancybox({
						     'autoScale': true,
						     'autoDimensions': true,
						     'centerOnScroll': true,
						     'href' : '#manageHomes'
						  });



					});
		    	
				
				
				
				
					schoolDetail+='</tbody>';
				 
					$("#sample_16").html(schoolDetail);
				    $("#sample_16").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15}); 
				
		}
		
		}
	});
}
    
    
function setChangePassword(email,userId){
	$("#teacherUserId").val(userId);
	$("#newPassword").val("");
	$("#confirmPassword").val("");

	 $.fancybox({
	     'autoScale': true,
	     'autoDimensions': true,
	     'centerOnScroll': true,
	     'href' : '#teacherChangePassword'
	  });
}
function changePasswordFrom(){
	if($("#teacherChangePasswordForm").valid()){
	
	var teacherUserId = $("#teacherUserId").val();
	var newPass=$("#newPassword").val();
	var url='<%=request.getContextPath()%>/communityadmin/setTeacherPassword';
	
		$.ajax({
			url:url,
			method:'POST',
			async :false,
			data:{teacherUserId:teacherUserId,newPass:newPass},
			success:function(response){
				
					alert("Password Change successfully");
				
			}
	});
		
		$.fancybox.close();
}
}
  
    function initDialog(){
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
    	/*$("#popup3").css({
            top: ($(window).height() - $(".modal-box").outerHeight()) / 3.4
    	});*/
    	$(window).resize();
    	
    	}
    
</script>

<script type="text/javascript">
$(function(){
	
	
	
	

});
window.setTimeout('myFunction()',1000);



</script>

</body>
</html>
