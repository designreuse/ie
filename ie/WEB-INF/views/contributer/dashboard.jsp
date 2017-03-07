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
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Dashboard</title>
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
</head>

<body>
	<div class="wrapper">
	<%@include file="header.jsp" %>

		<%-- <section class="makeDonateSct mtop-5">
			<div class="container">
         		<div class="pracProgress_hdr">
            		<h2>Dashboard</h2>
            		<div class="green_line_btm"></div>
					<div class="teach_dash_update margin-btm-zero margin-top-zero"><h3 class="teachr_dsh bdr-btm-none">Your Contributions</h3>
               		</div>
            	</div>
			</div>
		</section> --%>
        <%-- <section class="home-edition-dshbd">
        	<div class="containerSmall">
            	
            	<div class="ur_grid">
								<table class="table table-striped table-hover table-bordered" id="sample_1">
									<thead>
								    <tr>
								        <th>SCHOOL NAME</th>
								        <th>CONTRUBUTION AMOUNT($)</th>
								        <th>DATE</th>
								        <th style="display:none;"></th>
								    </tr>
									</thead>
									<tbody>
									       <c:forEach var="donationList" items="${donationList}"> 
									        <tr>
									        <td>${donationList.name}</td>
									        <td>${donationList.amount}</td>
									        <td>${donationList.donationDate}</td>
									        <td style="display:none;"></td>
									    	</tr>
									    	</c:forEach> 
									</tbody>
								</table>
        </div>
            	
            </div>
        </section> --%>
        
        
        
        
        
 		<div class="inner_wrapper"> 
        
        <!--inner_header starts-->
        <!--<div class="inner_header"> <img src="images/browse-donation-header.jpg"  alt=""/> </div>-->
        
        <!--brow_don_camp starts-->
        <div class="brow_don_camp">
        <div class="container">
        <div class="pracProgress_hdr">
            <h2>Donation Listing</h2>
               <div class="green_line_btm"></div>
     </div>
     	<div class="check-select-out">
                	<div class="check-select background-grey">
                	<c:set value="0" var="total"></c:set>
                	<c:forEach var="donationList" items="${donationList}">
                	<c:set value="${total+donationList.amount}" var="total"></c:set>
                	
                	
                	</c:forEach>
                    	<p>Total Amount Donated<br><span>$${total}</span></p>
                    </div>
                </div>
            
            
            </div>
            
            <!--misc tabs start-->
            
            
            <div class="misc_content">
            <!--TAB 1 STARTS-->
            <div class="container">
                <div id="tab1">
                    <div class="schools_contacts">
            
            <c:forEach var="donationList" items="${donationList}">
            
            <div class="schl_contcs_colum min-hgt-380">
            <h3 class="margin-top-ten">${donationList.name}</h3>
            <div class="schools_logos">
<%--                 <img src="<%=request.getContextPath() %>/NewStyles/images/school-profile/${donationList.logoUrl}"  alt=""/>
 --%>           
 				 <c:if test="${donationList.logoUrl eq ''}">
                <img src="<%=request.getContextPath() %>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/></c:if> 
                 </div>
                 <h3 class="margin-top-ten">Amount Donated</h3>
                 <h3 class="margin-top-ten">$${donationList.amount}</h3>
                 <h3 class="margin-top-ten">Donated On: <span>${donationList.donationDate}</span></h3>
                 <h3 class="margin-top-ten">Donation Type : <span>${donationList.donationType}</span></h3>
              <%--    <div class="startRight">
						<input type="button" value="Donations" onclick="donationsList(${donationList.schoolId});" class="startBtn">
				 </div> --%>
				 
				 <div class="btns-outer mtop20">
				 <input type="button" value="Donation Detail" onclick="donationsList(${donationList.schoolId},'${donationList.campType}');" class="submit-btn">
						</div>
				 
            </div>
            </c:forEach>

            </div>
                </div>
                
				</div>
            </div>
        
            <!--misc tabs end-->
            
            
            
        </div>
        <!--brow_don_camp ends--> 
        
        <!--inner_header ends--> 
        
    </div>       
        
                            <div id="uniqueDonations" style="display:none; width: 1100px;">
							<div class="container" style="width: 95%">
							<h3>Donations Details</h3>
								<div class="ur_grid_new_fd" style="margin:0 0 0 0;">
									<table class="table table-striped table-hover table-bordered" id="sample_6">
									<thead>
										<tr>
											<th>Campaign Name</th>
											<th>Amount</th>
											<th>Payment Type</th>
											<th>Recurring Type</th>
											<th>Payment Date</th>
											<th>Action</th>
										</tr>
										</thead>
										<tbody>
<%-- 										<c:forEach var="uniqueDonor" items="${uniqueDonorsList}">
											<tr>
												<td><span class="fd_span">${uniqueDonor.name}</span></td>
												<td><span class="fd_span">${uniqueDonor.email}</span></td>
												<td><span class="fd_span">${uniqueDonor.zipCode}</span></td>
												<td><span class="fd_span">${uniqueDonor.state}</span></td>
												<fmt:formatNumber var="tg2" value="${uniqueDonor.lastDonation}" maxFractionDigits="0"></fmt:formatNumber>
												<td><span class="fd_span">${tg2}</span></td>
												<fmt:formatNumber var="sc2" value="${uniqueDonor.cumulativeAmount}" maxFractionDigits="0"></fmt:formatNumber>
												<td><span class="fd_span">${sc2}</span></td>
											</tr>
										</c:forEach> --%>
										</tbody>

									</table>


								</div>
							</div>
                </div>
        
        
        
        
        
        
	</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>  
	<%@include file="../footer.jsp" %>
   
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
   <script type="text/javascript">	
	jQuery(document).ready(function($){
		$("#list-view").hide();
		$.daisyNav();
	});
	</script>
	
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
   <script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
   
  <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
	<script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script> 

   <script type="text/javascript">
    $(function(){
    	//$('#sample_1').dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
      SyntaxHighlighter.all();
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
    function donationsList(schoolId, campType){
    	//var records = '<tr>'; 
    	$("#sample_6").dataTable().fnDestroy();
    	var action ='--';
    	  var url='<%=request.getContextPath()%>/contributer/getSchoolDonations/'+schoolId+'/'+campType;
    		$.ajax({
    			url:url,
    			method:'GET',
    			async :false,
    			cache:false,
    			success:function(response){
    				/* alert("response = "+response);
    				$.each(response,function(index,value){
    					alert("donationId="+value.donationId);
    					alert("campaignName="+value.campaignName);
    					alert("amount="+value.amount);
    					alert("pamentType="+value.pamentType);
    					alert("reccuringType="+value.reccuringType);
    					alert("paymentDate="+value.paymentDate);
    				}); */
    				var records='';
    				
    				records+='<thead><tr><th><strong>Campaign Name</strong></th><th><strong>Amount</strong></th>'+
					'<th><strong>Payment Type</strong></th>'+
					'<th><strong>Recurring Type</strong></th>'+
					'<th><strong>Payment Date</strong></th>'+
					'<th><strong>Action</strong></th>'+
					'</tr></thead><tbody>';
    				
    				
    				$.each(response,function(index,value){
    					if(value.pamentType=='Recurring'){
    						if(value.isCancelled != 'Y'){
    							action = '<a onclick=cancelPayment('+value.donationId+'); style="cursor:pointer;"> Cancel </a>';
    						}
    					}
    					records+='<tr><td><span class="fd_span">'+value.campaignName+'</span></td>'
    					+'<td><span class="fd_span">'+value.amount+'</span></td>'
    					+'<td><span class="fd_span">'+value.pamentType+'</span></td>'
    					+'<td><span class="fd_span">'+value.reccuringType+'</span></td>'
    					+'<td><span class="fd_span">'+value.paymentDate+'</span></td>'
    					+'<td><span class="fd_span">'+action+'</span></td>'
    					+'</tr>';
    				});
    				records+='</tbody>';
    				$("#sample_6").html(records);
    				$("#sample_6").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
    				  $("#sample_6").attr("style","width:100%");
    				 $.fancybox({
    				     'autoScale': true,
    				     'autoDimensions': true,
    				     'centerOnScroll': true,
    				     'href' : '#uniqueDonations'
    				  });
    				}
    		});
   }
    
    function cancelPayment(donationId){
    	 var url='<%=request.getContextPath()%>/contributer/cancelSubscription/'+donationId;
 		$.ajax({
 			url:url,
 			method:'GET',
 			async :false,
 			cache:false,
 			success:function(response){
 				if(response=="Y"){
 				location.reload(true);
 				}
 				}
 		});
    }
	
</script>


</body>
</html>
 