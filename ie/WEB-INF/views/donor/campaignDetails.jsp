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

<!-- BEGIN HEAD -->
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
						Campaign Details
					</li>
				</ul>
			</div>
			<!-- END PAGE HEADER-->
						<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-md-12 blog-page">
					<div class="row">
						<div class="col-md-9 article-block">
							<h3>${campaignsDetails.title}</h3>
							<div class="blog-tag-data">
								<img src="<%=request.getContextPath()%>/fileupload/${campaignsDetails.imageUrl}" class="img-responsive" alt="">
								<div class="row">
									<div class="col-md-6">
										<ul class="list-inline blog-tags">
											<li>
												<i class="fa fa-tags"></i>
												<a href="javascript:;">
												$ ${campaignsDetails.donationAmount} </a>
<!-- 												<a href="javascript:;">
												Education </a>
												<a href="javascript:;">
												Internet </a> -->
											</li>
										</ul>
										<!-- <button class=" btn blue">Contribute</button> -->
									</div>
									<div class="col-md-6 blog-tag-data-inner">
										<ul class="list-inline">
											<li>
												<i class="fa fa-calendar"></i>
												<a href="javascript:;">
												<fmt:formatDate type="date" value="${campaignsDetails.createdDate}" /> </a>
											</li>
											<li>
												<i class="fa fa-comments"></i>
												<a href="javascript:;">
												0 Comments </a>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<!--end news-tag-data-->
							<div>
								<p>
									${campaignsDetails.description}
								</p>
								<div align="right">
									<form action="https://www.paypal.com/cgi-bin/webscr"  method="post">
										<input type="hidden" name="cmd" value="_s-xclick">
										<input type="hidden" name="encrypted" value="-----BEGIN PKCS7-----...[Encrypted message]...-----END PKCS7-----">
										<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
										<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
									</form>
							</div>
							</div>
							<hr>
							<div class="post-comment">
								<h3>Leave a Comment</h3>
								<form role="form" action="#">
									<div class="form-group">
										<label class="control-label">Name <span class="required">
										* </span>
										</label>
										<input type="text" class="form-control">
									</div>
									<div class="form-group">
										<label class="control-label">Email <span class="required">
										* </span>
										</label>
										<input type="text" class="form-control">
									</div>
									<div class="form-group">
										<label class="control-label">Message <span class="required">
										* </span>
										</label>
										<textarea class="col-md-10 form-control" rows="8"></textarea>
									</div>
									<button class="margin-top-20 btn blue" type="submit">Post a Comment</button>
								</form>
							</div>
						</div>
						<div class="col-md-3 blog-sidebar">

						</div>
						<!--end col-md-3-->
					</div>
				</div>
			</div>
			<!-- END PAGE CONTENT-->
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
	alert("ID = "+id);
	$("#campaignId").val(id);
	$("#campaignDetail").submit();
	
}
</script>
<!-- END BODY -->
</html>