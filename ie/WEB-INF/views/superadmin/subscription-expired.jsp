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
<title>Subscription Expired</title>
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
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper">  
        
        <!--inner_header starts-->
       <!-- <div class="inner_header"> <img src="images/browse-donation-header.jpg"  alt=""/> </div>-->
        
        <!--brow_don_camp starts-->
        <div class="brow_don_camp">
        <div class="container">
        <div class="pracProgress_hdr">
            <h2>Subscription Expired</h2>
               <div class="green_line_btm">
               </div>
			   <div class="clr"></div>
     	</div>
    </div>
            
            <!--misc tabs start-->
            <div class="misc_tabs">
            <div class="misc_tabar background-none margin-bottom-twnty ppl-v-tab">
                <ul>
                    <li id="mtab1" class=" selected"><a class="trial" href="javascript:showTab(1,3)">PRINCIPALS</a></li>
                    <li id="mtab2" ><a class="fp" href="javascript:showTab(2,3)">TEACHERS</a></li>
                    <li id="mtab3" ><a class="fp" href="javascript:showTab(3,3)">PARENTS</a></li>
                    
                </ul>
            </div>
            <div class="misc_content">
            <!--TAB 1 STARTS-->
                <div id="tab1">
                	<div class="containerSmall">
                		<div class="ur_grid ur_grid_pop p-font14">
            	
        <table class="table table-striped table-hover table-bordered" id="sample_1">
        <thead>
        	<tr>
	        	<th style="width:200px" class="txtcenter_align"><strong>Name</strong></th>
	        	<th  style="width:200px" class="txtcenter_align"><strong>Email</strong></th>
	        	<th  style="width:200px" class="txtcenter_align"><strong>School Name</strong></th>
	        	<th  style="width:200px" class="txtcenter_align"><strong>Subscription Expire Date</strong></th>
	        	<th  style="width:200px" class="txtcenter_align"><strong>Action</strong></th>
        	</tr>
        </thead>
    <tbody>
    <c:forEach var="principal" items="${principals}">
    	<tr>
        	<td  style="width:200px"class="txtcenter_align"><p class="text-align-center">${principal.username}</p></td>
        	<td  style="width:200px"  class="txtcenter_align"><p class="text-align-center">${principal.email}</p></td>
        	<td  style="width:200px" class="txtcenter_align"><p class="text-align-center">${principal.schoolName}</p></td>
        	<td  style="width:200px" class="txtcenter_align"><p class="text-align-center">${principal.subscriptionExpire}</p></td>
        	<td  style="width:200px"  class="txtcenter_align"><p class="text-align-center"><input type="button" value="SEND EMAIL" title="SEND EMAIL" class="change_trackbtn_qus" onclick="sendEmail('${principal.email}', 'principal','${principal.username}')"/></p></td>
    	</tr>
    	</c:forEach>
       
	</tbody>
</table>

        
        </div>
                	</div>
                </div>
                <!--TAB 1 ENDS-->
                <!--TAB 2 STARTS-->
                <div id="tab2" style="display:none;" >
         			<div class="containerSmall">
                		<div class="ur_grid ur_grid_pop p-font14">
            	
        <table class="table table-striped table-hover table-bordered" id="sample_2">
    <thead>
    	<tr>
	        	<th class="txtcenter_align"><strong>Name</strong></th>
	        	<th class="txtcenter_align"><strong>Email</strong></th>
	        	<th class="txtcenter_align"><strong>School Name</strong></th>
	        	<th class="txtcenter_align"><strong>Subscription Expire Date</strong></th>
	        	<th class="txtcenter_align"><strong>Action</strong></th>
        	</tr>
    	</thead>
    	   <tbody>
    	   <c:forEach var="teacher" items="${teachers}">
        <tr>
     		<td class="txtleft_align"> <p>${teacher.teacherName}</p></td>
        	<td class="txtcenter_align"><p class="text-align-center">${teacher.email}</p></td>
        	<td class="txtcenter_align"><p class="text-align-center">${teacher.schoolName}</p></td>
        	<td class="txtcenter_align"><p class="text-align-center">${teacher.subscriptionExpire}</p></td>
        	<td class="txtcenter_align"><p class="text-align-center"><input type="button" value="SEND EMAIL" title="SEND LETTER" class="change_trackbtn_qus" onclick="sendEmail('${teacher.email}', 'teacher','${teacher.teacherName}')"/></p></td>
    	</tr>    
       </c:forEach>
	</tbody>
</table>

        
        </div>
                	</div>
                </div>
                <!--TAB 2 ENDS-->
                <!-- tab 3 -->
                <div id="tab3" style="display:none;" >
         			<div class="containerSmall">
                		<div class="ur_grid ur_grid_pop p-font14">
            	
        <table class="table table-striped table-hover table-bordered" id="sample_3">
    <thead>
    	<tr>
    		<th class="txtcenter_align"><strong>Name</strong></th>
    		<th class="txtcenter_align"><strong>Email</strong></th>
        	<th class="txtcenter_align"><strong>Subscription Expire Date</strong></th>	
        	<th class="txtcenter_align"><strong>Action</strong></th>
    	</tr>
    	</thead>
 	   <tbody>
    	   <c:forEach var="parent" items="${parents}">
        <tr>
        <td class="txtleft_align"> <p>${parent.username }</p></td>
        <td class="txtleft_align"> <p>${parent.email }</p></td>
     	<td class="txtleft_align"> <p>${parent.subscriptionExpire }</p></td>	
     		<td class="txtleft_align"> <p><input type="button" value="SEND EMAIL" title="SEND EMAIL" class="change_trackbtn_qus" onclick="sendEmail('${parent.email}', 'parent', '${parent.username }')"/></p></td>
        	
    	</tr>    
       </c:forEach>
	</tbody>
</table>

        
        </div>
                	</div>
                </div>
                
                <!-- tab -4 -->
                <div id="tab4" style="display:none;" >
         			<div class="containerSmall">
                		<div class="ur_grid ur_grid_pop p-font14">
            	
        <table class="table table-striped table-hover table-bordered" id="sample_1">
    <thead>
    	<tr>
    	    	<th class="txtcenter_align"><strong>Name</strong></th>
    	<th class="txtcenter_align"><strong>Email</strong></th>
        	<th class="txtcenter_align"><strong>School name</strong></th>
        	<th class="txtcenter_align"><strong>School Contact Name</strong></th>
        	<th class="txtcenter_align"><strong>ADDRESS</strong></th>
    	</tr>
    	</thead>
    	   <tbody>
    	   <c:forEach var="sponsor" items="${sponsors}">
        <tr>
        <td class="txtleft_align"> <p>${sponsor.cname }</p></td>
        <td class="txtleft_align"> <p>${sponsor.email }</p></td>
     		<td class="txtleft_align"> <p>${sponsor.name }</p></td>
     		<td class="txtleft_align"> <p>${sponsor.schoolContactName }</p></td>
        	<td class="txtcenter_align"><p class="text-align-center">${sponsor.address}</p></td>
    	</tr>    
       </c:forEach>
	</tbody>
</table>

        
        </div>
                	</div>
                </div>
                
                
            </div>
        </div>
            <!--misc tabs end-->
            
            
            
        </div>
        <!--brow_don_camp ends--> 
        
        <!--inner_header ends--> 
        
    </div>
    <!--inner_wrapper ends--> 
</div>

<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>  
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
   
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
   <script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
   
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
	<script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script>  
	
<!--tab start --> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/tab.js" ></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>  
<script type="text/javascript">
$(function(){
	
	$("#header").sticky({ topSpacing: 0 });
	$("#sample_1").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
	$("#sample_2").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
	$("#sample_3").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});

	

});
				function showTab(current,max){
					for (i=1;i<=max;i++){
					getMyHTMLElement('tab' + i).style.display = 'none';
					getMyHTMLElement('mtab' + i).className = '';
					}
					getMyHTMLElement('tab' + current).style.display = '';
					getMyHTMLElement('mtab' + current).className = 'selected';
					}
				
				function sendEmail(email ,userType , name){
					
						var url='<%=request.getContextPath()%>/superadmin/sendEmailForSubsExpired';
						$.ajax({
							url:url,
							method:'POST',
							async :false,
							data:{email:email ,userType:userType,name:name},
							cache:false,
							success:function(response){
								alert("Email sent successfully")
							}
						});
					}
				
				</script> 
<!--tab end -->
<%@include file="../footer.jsp" %>
</body>
</html>
