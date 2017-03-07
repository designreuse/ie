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
<jsp:useBean id="now" class="java.util.Date" />
<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Training Step-3</title>
    <c:if test="${companyName eq '1'}">
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<c:if test="${companyName eq '2'}">
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
    <c:if test="${companyName eq '1'}">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</c:if>
<c:if test="${companyName eq '2'}">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</c:if>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
</head>

<body>
<!-- <div class="wrapper"> -->
<%@include file="header.jsp" %>
  <%--  <header id="header">
			<div class="container "> 
				<div class="logo">
					<a href="<%=request.getContextPath()%>/principal/endTour" title="">
					<img src="<%=request.getContextPath()%>/NewStyles/images/logo.jpg" alt="Logo" title="logo" />
					</a>
				</div>
				<div class="hdRight">
	                <div class="startRight">
	                	<p>Welcome, ${loginName}</p>
						 <input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout';" class="startBtn hdr-btn-clr"/>
							 	<c:if test="${companyName eq '1'}">
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout?name=teacher&userIdForLogout=${userIdForLogout}';" class="startBtn hdr-btn-clr"/>
						</c:if>
						<c:if test="${companyName eq '2'}">
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout?name=teachercrim';" class="startBtn hdr-btn-clr"/>
						</c:if>
					</div>
            	</div>
			</div>
		</header> --%>
    
    
    
    
    
    <section class="tehDsh-step1">
			<div class="containerSmall">
			<div class="pracProgress_hdr">
				<h2>Training Resources</h2>
				<div class="green_line_btm"></div>
				</div>
				
				<div class="round-steps-outer">
				<div class="chain">
			    	<ul>
			        	<li>
			            	<a href="<%=request.getContextPath()%>/principal/training1">
			            		<h3>1</h3>
			                	<p>Go through Training Video</p>
			                </a>
			            </li>
			            <li class="chain-clr-grn">
			            	<a href="<%=request.getContextPath()%>/principal/training2">
			            		<h3>2</h3>
			                	<p>Introduce the Concept to Class</p>
			                </a>
			            </li>
			            <li class="chain-clr-grn">
			            	<a href="<%=request.getContextPath()%>/principal/training3">
			            		<h3>3</h3>
			                	<p>Training Resources</p>
			                </a>
			            </li>

			   
			        </ul>
			    </div>
				</div>
				
				
				<div class="clr"></div>
			</div>
		</section>
    
            <div class="misc_tabar margin-top-zero">
                <ul>
                    <li style="display:none" id="mtab2" ><a class="trial" href="javascript:showTab(2,3)">Additional Materials</a></li>
                    <li id="mtab1" class=" selected"><a class="fp" href="javascript:showTab(1,3)">Training</a></li>
                    <li id="mtab3" ><a class="hybrid" href="javascript:showTab(3,3)">Beyond the Program</a></li>
                </ul>
            </div>
            <div class="misc_content padding-btm-zero mtop30">
            <!--TAB 1 STARTS-->
                <div id="tab2" style="display:none;">
                   <div class="container">
    	<div class="ur_grid margin-auto float-none width-60">
        	<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tbody>
    	<tr>
        	<th>Name</th>
        	<th>Date</th>
        	<th>Download</th>
    	</tr>
    	<tr>
        	<td><p>Photo Consent Form</p></td>
        	<td><p>June 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/Photo-Consent-Form.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
        <tr>
        	<td><p>Teacher's Manual - Elementary</p></td>
        	<td><p>June 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/Inner-Explorer-Teachers-Manual-Elementary.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>    
        <tr>
        	<td><p>Inner Explorer Parent-Caregiver Letter</p></td>
        	<td><p>July 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/Inner-Explorer-Parent-Caregiver-Letter.docx"  title="Download" style="color:green;" download>DOC</a></p></td>
        </tr>
        <tr>
        	<td><p>Journal Page - Exploring Originality</p></td>
        	<td><p>July 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/Exploring-Originality-Journal-Page.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr> 
        <tr>
        	<td><p>Not Disturb Sign - Small - Exploring Originality</p></td>
        	<td><p>July 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/Do-Not-Disturb-Small-Exploring-Originality.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>   
         <tr>
        	<td><p>Not Disturb Sign - Large - Exploring Originality</p></td>
        	<td><p>July 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/Do-Not-Disturb-Large-Exploring-Originality.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>   
        <tr>
        	<td><p>Inner Explorer Teacher Manual-Middle School</p></td>
        	<td><p>November 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/Inner-Explorer-Teachers-Manual-Middle-School-2.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
        <tr>
        	<td><p>Journal Page-Exploring Potential</p></td>
        	<td><p>December 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/Journal-Page-Exploring-Potential.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
        <tr>
        	<td><p>Do Not Disturb Sign-Small-Exploring Potential</p></td>
        	<td><p>December 10, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/Do-Not-Disturb-Small-Exploring-Potential.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
        <tr>
        	<td><p>Do Not Disturb Sign-Large-Exploring Potential</p></td>
        	<td><p>December 10, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/Do-Not-Disturb-Large-Exploring-Potential.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
        <tr>
        	<td><p>Not Disturb Sign - Large - Exploring Relevance</p></td>
        	<td><p>December 10, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/Do-Not-Disturb-Large-Exploring-Relevance.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
         <tr>
        	<td><p>Not Disturb Sign - Small - Exploring Relevance</p></td>
        	<td><p>December 10, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/Do-Not-Disturb-Small-Exploring-Relevance.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
         <tr>
        	<td><p>Teacher's Manual - Middle School</p></td>
        	<td><p>December 10, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/Inner-Explorer-Teachers-Manual-Middle-School-2.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
	</tbody>
</table>
        </div>
    </div>
					
					

                </div>
                <!--TAB 1 ENDS-->
                <!--TAB 2 STARTS-->
                <div id="tab1">
                    
                   <div class="container">
    	<div class="ur_grid margin-auto float-none width-60">
        	<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tbody>
    	<tr>
        	<th>Name</th>
        	<th>Date</th>
        	<th>Download</th>
    	</tr>
    	<tr>
        	<td><p>Photo Consent Form</p></td>
        	<td><p>June 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/Photo-Consent-Form.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
    	<tr>
        	<td><p>Mindful Awareness in Education</p></td>
        	<td><p>September 26, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/Mindful-Awareness-In-Education-2.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>    
        <tr>
        	<td><p>Inner Explorer in Education</p></td>
        	<td><p>September 26, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/Inner-Explorer-In-Education.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>    
        <tr>
        	<td><p>Inner Explorer Mindfulness Bullying Article</p></td>
        	<td><p>November 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/IE-Mindfulness-Bullying-Article.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
        <tr>
        	<td><p>Inner Explorer Executive Summary</p></td>
        	<td><p>December 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/IE-Executive-Summary.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
        <tr>
        	<td><p>Mindfulness Research Abstracts</p></td>
        	<td><p>December 10, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/MIndfulness Research Abstracts 2015.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
	</tbody>
</table>
        </div>
    </div>
							</div>
                
                <!--TAB 2 ENDS-->
                <!--TAB 3 STARTS-->
                <div id="tab3" style="display:none;" >
                	<div class="container">
    	<div class="ur_grid margin-auto float-none width-60">
        	<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tbody>
    	<tr>
        	<th>Name</th>
        	<th>Date</th>
        	<th>Download</th>
    	</tr>
    	 <tr>
        	<td><p>Beyond the Program-Presence Vs Presents</p></td>
        	<td><p>January 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-JAN-2015-Presence-vs-Presents.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
         <tr>
        	<td><p>Beyond the Program-Is It Helpful?</p></td>
        	<td><p>February 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-FEB-2015-Is-It-Helpful.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
        <tr>
        	<td><p>Beyond the Program-New Beginnings</p></td>
        	<td><p>March 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-MAR-2015-New-Beginnings.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
        <tr>
        	<td><p>Beyond the Program-Listening</p></td>
        	<td><p>April 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-APR-2015-Listening.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
        <tr>
        	<td><p>Beyond the Program-STOP!</p></td>
        	<td><p>May 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-MAY-2015-STOP.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
    	<tr>
        	<td><p>Beyond the Program-Brain Power</p></td>
        	<td><p>June 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-JUNE-2015-Brain-Power.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>    
        <tr>
        	<td><p>Beyond the Program-Pleasant or Unpleasant?</p></td>
        	<td><p>August 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-AUG-2015-Pleasant-or-Unpleasant.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
         <tr>
        	<td><p>Beyond the Program-Pay Attention</p></td>
        	<td><p>September 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-Sept-2015-Pay-Attention.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
         <tr>
        	<td><p>Beyond the Program-Bullying</p></td>
        	<td><p>October 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-Oct-2015-Bullying-2.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
         <tr>
        	<td><p>Beyond the Program-Gratitude</p></td>
        	<td><p>November 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-Nov-2015-Gratitude.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
        <tr>
        	<td><p>Beyond the Program-Mindful Movement</p></td>
        	<td><p>December 1, 2015</p></td>
        	<td><p><a href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-Dec-2015-Mindful-Movement.pdf"  title="Download" style="color:green;" download>PDF</a></p></td>
        </tr>
	</tbody>
</table>
        </div>
    </div>
                 </div>
                 <!--TAB 3 ENDS-->
    					
			</div>
            </div>
    
        
   <!--  </div> -->
    <!--inner_wrapper ends--> 

          <div class="videobtn">

				<c:if test="${companyName eq '1'}">
			    
                	<div class="videobtn">
                 <input type="button" class="blueBtn" onClick="location.href='<%=request.getContextPath()%>/principal/endTour'" value='DONE' title="Done">
					
				</div>
			    </c:if>
			    <c:if test="${companyName eq '2'}">
			    
                	<div class="videobtn">
                 <input type="button" class="blueBtn" onClick="location.href='<%=request.getContextPath()%>/principal/endTour'" value='DONE' title="Done">
					
				</div>
			    </c:if>
				
				
			<%-- </c:if> --%>
		</div>
		<div class="spacee200"></div>

	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %>
	<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>

<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script>
	
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 

<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script> 
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script> 


<!--tab start --> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/tab.js" ></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript">
				function showTab(current,max){
					for (i=1;i<=max;i++){
					getMyHTMLElement('tab' + i).style.display = 'none';
					getMyHTMLElement('mtab' + i).className = '';
					}
					getMyHTMLElement('tab' + current).style.display = '';
					getMyHTMLElement('mtab' + current).className = 'selected';
					}
				</script> 

<!--tab end -->
<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$("#header").sticky({ topSpacing: 0 });
	});
	</script>
</body>
</html>

