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

<html lang="en" class="no-js">

<head>
<meta charset="utf-8"/>
<title>IE | Donor</title>

</head>

<body class="page-header-fixed page-quick-sidebar-over-content page-sidebar-closed-hide-logo page-container-bg-solid">
<!-- BEGIN HEADER -->
<%@ include file="/WEB-INF/views/header-inner.jsp"%>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
	<!-- BEGIN SIDEBAR -->
	<%-- <%@ include file="/WEB-INF/views/sidebar.jsp"%> --%>
	<!-- END SIDEBAR -->
	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
			<!-- BEGIN PAGE HEADER-->
			<div class="page-bar">
				<ul class="page-breadcrumb">
					<li>
						<i class="fa fa-home"></i>
							Home
						<i class="fa fa-angle-right"></i>
					</li>
					<li>
						Dashboard
					</li>
				</ul>
			</div>
<!-- 			<h3 class="page-title">
			Dashboard <small>reports & statistics</small>
			</h3> -->
			<!-- END PAGE HEADER-->
			<div class="row">
			<div class="row mix-grid">
										 <c:forEach var="currentName" items="${campaignsList}">
										<div class="col-md-3 col-sm-4 mix category_1">
											<div class="mix-inner">
												<img class="img-responsive" style="min-height: 170px;" src="<%=request.getContextPath()%>/fileupload/${currentName.imageUrl}" alt="">
												<div class="mix-details">
													<h3> ${currentName.title} - $ ${currentName.donationAmount} </h3>
													<button class=" btn blue" onclick="getCampainDetails(${currentName.campaignId});">View</button>
												</div>
											</div>
										</div>
										</c:forEach> 
										
										
									</div>
			
			</div>
		</div>
	</div>
	<!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
	<div class="page-footer-inner">
		  2016 © IE.
	</div>
	<div class="scroll-to-top">
		<i class="icon-arrow-up"></i>
	</div>
</div>
<!-- END FOOTER -->
<form id="campaignDetail" name="campaignDetail" action="<%=request.getContextPath()%>/donor/campaignDetails" method="get">
    	<input type="hidden" type="text" id="campaignId" name="campaignId">
    </form>
</body>
<script type="text/javascript">
function getCampainDetails(id){
	$("#campaignId").val(id);
	$("#campaignDetail").submit();
	
}
</script>
<!-- END BODY -->
</html>