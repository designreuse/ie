<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server

	response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance

	response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
%>
<jsp:useBean id="now" class="java.util.Date" />
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>Training Step-4</title>
<c:if test="${companyName eq '1'}">
	<link rel="icon"
		href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
		type="image/x-icon">
</c:if>
<c:if test="${companyName eq '2'}">
	<link rel="icon"
		href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
		type="image/x-icon">
</c:if>
<c:if test="${companyName eq '1'}">
	<link rel="stylesheet" type="text/css"
		href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</c:if>
<c:if test="${companyName eq '2'}">
	<link rel="stylesheet" type="text/css"
		href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</c:if>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css"
	id="style_components" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
</head>
<style>
.activeCircle {
	background: #01a34e !important;
}

.greyclass {
	background: #4c4c4c !important;
}
</style>
<body>
	<!-- <div class="wrapper"> -->
	<%@include file="header.jsp"%>
	<%--  <header id="header">
			<div class="container "> 
				<div class="logo">
					<a href="<%=request.getContextPath()%>/teacher/endTour" title="">
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
				<div class="pracProgress_hdr circlefleft">
					<h2>Welcome to Day - 4</h2>
					<div class="green_line_btm"></div>
				</div>
				<div class="clr"></div>
			</div>
		<div class="containerSmall">


			<div class="round-steps-outer">
				<div class="chain">
					<ul>
						<li class="greyclass"><a
							href="<%=request.getContextPath()%>/teacher/training1" class="chain_t_circle">
								<h3 align="justify">Day 1</h3>
						</a></li>
						<li class="greyclass"><a
							href="<%=request.getContextPath()%>/teacher/training2" class="chain_t_circle">
								<h3>Day 2</h3>
						</a></li>

						<li class="greyclass"><a href="<%=request.getContextPath()%>/teacher/training3" class="chain_t_circle">
								<h3>Day 3</h3>
						</a></li>
						<li class="activeCircle"><a href="<%=request.getContextPath()%>/teacher/training4" class="chain_t_circle">
								<h3>Day 4</h3>
						</a></li>
						<li class="greyclass"><a href="<%=request.getContextPath()%>/teacher/training5" class="chain_t_circle">
								<h3>Day 5</h3>
						</a></li>



					</ul>
				</div>
			</div>

			
	</section>

	<div class="misc_tabar margin-top-zero">
		<ul>
			<li style="display: none" id="mtab2"><a class="trial"
				href="javascript:showTab(2,3)">Additional Materials</a></li>
			<li id="mtab1" class=" selected"><a class="fp"
				href="javascript:showTab(1,3)">Training</a></li>
			<!--                     <li id="mtab3" ><a class="hybrid" href="javascript:showTab(3,3)">Beyond the Program</a></li>
 -->
		</ul>
	</div>
	<div class="misc_content padding-btm-zero mtop30">
		<!--TAB 1 STARTS-->
		<div id="tab2" style="display: none;">
			<div class="container">
				<div class="ur_grid margin-auto float-none width-60">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
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
								<td><p>Quotes</p></td>
								<td><p>September 23, 2016</p></td>
								<td><p>
										<a id = "pdfopenbt" class="cntr" data-toggle="modal" data-target="#pdfmod"
											role="button " title="Download" style="color: green;"><i
											class="fa fa-download dw"></i></a>
									</p></td>
							</tr>

						</tbody>
					</table>
				</div>
			</div>
		</div>

		<!--TAB 2 ENDS-->
		<!--TAB 3 STARTS-->
		<div id="tab3" style="display: none;">
			<div class="container">
				<div class="ur_grid margin-auto float-none width-60">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">

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
				<input type="button" title="PROCEED TO NEXT STEP"
					value="PROCEED TO NEXT STEP" class="blueBtn"
					onclick="location.href = '<%=request.getContextPath()%>/teacher/training5';" />

			</div>
		</c:if>



		<%-- </c:if> --%>
	</div>
	<div class="spacee200"></div>

	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<%@include file="../footer.jsp"%>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>

	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script>

	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>


	<!--tab start -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/tab.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
	<script type="text/javascript">
		function showTab(current, max) {
			for (i = 1; i <= max; i++) {
				getMyHTMLElement('tab' + i).style.display = 'none';
				getMyHTMLElement('mtab' + i).className = '';
			}
			getMyHTMLElement('tab' + current).style.display = '';
			getMyHTMLElement('mtab' + current).className = 'selected';
		}
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#pdfopenbt').click(function() {
				$(".modal").show();
			});
			$('#closebtn').click(function() {
				$(".modal").hide();
			});
			
		});
	</script>

	<a href="#" id="btnShow">this link</a>
	<div id="dialog" style="display: none;">
		<div>
			<iframe id="frame"></iframe>
		</div>
	</div>

	<!--tab end -->
	<style>
.dw {
	font-size: 20px !important
}

.cntr {
	margin: 0 auto;
	text-align: center;
}

.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 99; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
} /* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 0 auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 100%; /* Could be more or less, depending on screen size */
} /* The Close Button */
.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
</style>

	<div class="modal fade" id="pdfmod" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
									<button type="button" id="closebtn" class="btn btn-success pull-right" data-dismiss="modal">Close</button>
				
					<h4 class="modal-title" id="myModalLabel">Questionaire</h4>
				</div>
				<div class="modal-body">
					<iframe src="/ie/NewStyles/pdf/Questionaire.pdf" width="100%"
						height="600px" frameborder="0" allowtransparency="true"></iframe>
				</div>
				<div class="modal-footer">
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
</body>
</html>

