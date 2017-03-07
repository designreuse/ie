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
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>Teacher Onboarding</title>
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
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
	type="text/javascript"></script>
<c:if test="${companyName eq '1'}">
	<link rel="stylesheet" type="text/css"
		href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</c:if>
<c:if test="${companyName eq '2'}">
	<link rel="stylesheet" type="text/css"
		href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</c:if>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/responsiveslides.css">

<%-- <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/demo.css"> --%>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/css/jquery.fancybox.css?v=2.1.5"
	type="text/css" media="screen" />

<style>
.error {
	color: red;
}
</style>

<script type="text/javascript">
	$(document).ready(
			function() {

				$('.hello').validate(
						{

							errorElement : 'span', //default input error message container
							errorClass : 'help-block', // default input error message class
							focusInvalid : false, // do not focus the last invalid input
							rules : {
								check : {
									required : true

								}
							},
							invalidHandler : function(event, validator) { //display error alert on form submit   

							},

							highlight : function(element) { // hightlight error inputs
								$(element).closest('.outer-field').addClass(
										'has-error'); // set error class to the control group
								$(element).next('.fancybox').next('.fancybox')
										.addClass('has-error');
							},

							success : function(label) {
								label.closest('.outer-field').removeClass(
										'has-error');
								label.next('.fancybox').next('.fancybox')
										.removeClass('has-error').next();
								label.remove();
							},
							errorPlacement : function(error, element) {
								if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
									error.insertAfter(element.next('.fancybox')
											.next('.fancybox'));
								} else if (element.closest('.input-icon')
										.size() === 1) {
									alert("hhhh");
									error.insertAfter(element
											.closest('.input-icon'));

								} else {
									error.insertAfter(element);
								}
							},

							submitHandler : function(form) {

								form.submit();
							}

						});

			});
</script>

</head>


<body>
	<div class="wrapper">
		<%@include file="header.jsp"%>
		<%-- <header id="header">
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


		<section class="tehDsh-step1 ">
			<div class="containerSmall">
				<div class="pracProgress_hdr">
					<h2>Training</h2>
					<div class="green_line_btm"></div>
				</div>

				<div class="round-steps-outer"> 
					<div class="chain">
						<ul>
							<li><a
								href="<%=request.getContextPath()%>/teacher/onboarding">
									<h3>1</h3>
									<p>Welcome to Inner Explorer</p>
							</a></li>
							<li class="chain-clr-grn"><a href="<%=request.getContextPath()%>/teacher/step2">
									<h3>2</h3>
									<p>Questionnaire</p>
							</a></li>
							<li class="chain-clr-grn"><a href="<%=request.getContextPath()%>/teacher/step3">
									<h3>3</h3>
									<p>Training Video</p>
							</a></li>

							<li class="chain-clr-grn"><a href="<%=request.getContextPath()%>/teacher/step4">
									<h3>4</h3>
									<p>Classroom Tools</p>
							</a></li>
						</ul>
					</div>
				</div>


				<div class="clr"></div>
				<div class="onboard-video" style="width:1000px; margin-left:-130px;">
					<div class="misc_tabar margin-top-zero bg_none_tab">
						<ul>

							<li id="mtab1" style="width: 193px"><a
								href="javascript:showTab(1,5)" class="trial">Exploring Me</a></li>
							<li class="selected" id="mtab2" style="width: 194px"><a
								href="javascript:showTab(2,5)" class="fp">Exploring
									Originality</a></li>
							<li id="mtab3" style="width: 194px"><a
								href="javascript:showTab(3,5)" class="hybrid">Exploring
									Potential</a></li>
							<li id="mtab4" style="width: 194px"><a
								href="javascript:showTab(4,5)" class="trial">Exploring
									Relevance</a></li>
							<li id="mtab5" style="width: 194px"><a
								href="javascript:showTab(5,5)" class="hybrid">Beyond the
									Program</a></li>
						</ul>
					</div>
					<div class="misc_content padding-btm-zero">
						<!--TAB 1 STARTS-->
						<div style="display: none;" id="tab1">

							<div class="ur_grid margin-auto float-none">
								<table width="100%" cellspacing="0" cellpadding="0" border="0">
									<tbody>
										<tr>
											<th>Name</th>
											<!-- <th>Date</th> -->
											<th>Download</th>
										</tr>
										<tr>
											<td><p>Photo Consent Form</p></td>
											<!-- <td><p>June 1, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Photo-Consent-Form.pdf">PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Parent-Caregiver Letter</p></td>
											<!-- <td><p>July 1, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Inner-Explorer-Parent-Caregiver-Letter.docx">DOC</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Teacher's Guide - Exploring Me</p></td>
											<!-- <td><p>June 1, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/TeachersGuide_ExploringMe.pdf">PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Mindfulness-Shark Fin</p></td>
											<!-- <td><p>July 1, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Mindfulness-SharkFin.docx">DOC</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Exploring Song with Chords</p></td>
											<!-- <td><p>July 1, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/The Exploring Song with chords.docx">DOC</a>
												</p></td>
										</tr>
										
										<tr>
											<td><p>Do Not Disturb Sign-Small-Exploring Me</p></td>
											<!-- <td><p>December 10, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Do Not Disturb Sign-Small-Exploring Me.pdf">PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Do Not Disturb Sign-Large-Exploring Me</p></td>
											<!-- <td><p>December 10, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Do Not Disturb Sign-Large-Exploring Me.pdf">PDF</a>
												</p></td>
										</tr>
										<!--  
       
        <tr>
        	<td><p>Inner Explorer Teacher Manual-Middle School</p></td>
        	<td><p>November 1, 2015</p></td>
        	<td><p><a download="" style="color:green;" title="Download" href="/ie/NewStyles/pdf/Inner-Explorer-Teachers-Manual-Middle-School-2.pdf">PDF</a></p></td>
        </tr>
       
       
         <tr>
        	<td><p>Teacher's Manual - Middle School</p></td>
        	<td><p>December 10, 2015</p></td>
        	<td><p><a download="" style="color:green;" title="Download" href="/ie/NewStyles/pdf/Inner-Explorer-Teachers-Manual-Middle-School-2.pdf">PDF</a></p></td>
        </tr> -->
									</tbody>
								</table>
							</div>




						</div>
						<!--TAB 1 ENDS-->
						<!--TAB 2 STARTS-->
						<div id="tab2">


							<div class="ur_grid margin-auto float-none">
								<table width="100%" cellspacing="0" cellpadding="0" border="0">
									<tbody>


										<tr>
											<th>Name</th>
											<!-- <th>Date</th> -->
											<th>Download</th>
										</tr>
										<tr>
											<td><p>Photo Consent Form</p></td>
											<!-- <td><p>June 1, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Photo-Consent-Form.pdf">PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Parent-Caregiver Letter</p></td>
											<!-- <td><p>July 1, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Inner-Explorer-Parent-Caregiver-Letter.docx">DOC</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Teacher's Guide - Exploring Originality</p></td>
											<!-- <td><p>June 1, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Inner-Explorer-Teachers-Manual-Elementary.pdf">PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Journal Page - Exploring Originality</p></td>
											<!-- <td><p>July 1, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Exploring-Originality-Journal-Page.pdf">PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Mindfulness-Shark Fin</p></td>
											<!-- <td><p>July 1, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Mindfulness-SharkFin.docx">DOC</a>
												</p></td>
										</tr>
										
										<tr>
											<td><p>Not Disturb Sign - Large - Exploring
													Originality</p></td>
											<!-- <td><p>July 1, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Do-Not-Disturb-Large-Exploring-Originality.pdf">PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Not Disturb Sign - Small - Exploring
													Originality</p></td>
											<!-- <td><p>July 1, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Do Not Disturb Sign-Small-Exploring Originality.pdf">PDF</a>
												</p></td>
										</tr>
										<!-- <tr>
        	<td><p>Mindful Awareness in Education</p></td>
        	<td><p>September 26, 2015</p></td>
        	<td><p><a download="" style="color:green;" title="Download" href="/ie/NewStyles/pdf/Mindful-Awareness-In-Education-2.pdf">PDF</a></p></td>
        </tr>    
        <tr>
        	<td><p>Inner Explorer in Education</p></td>
        	<td><p>September 26, 2015</p></td>
        	<td><p><a download="" style="color:green;" title="Download" href="/ie/NewStyles/pdf/Inner-Explorer-In-Education.pdf">PDF</a></p></td>
        </tr>    
        <tr>
        	<td><p>Inner Explorer Mindfulness Bullying Article</p></td>
        	<td><p>November 1, 2015</p></td>
        	<td><p><a download="" style="color:green;" title="Download" href="/ie/NewStyles/pdf/IE-Mindfulness-Bullying-Article.pdf">PDF</a></p></td>
        </tr>
        <tr>
        	<td><p>Inner Explorer Executive Summary</p></td>
        	<td><p>December 1, 2015</p></td>
        	<td><p><a download="" style="color:green;" title="Download" href="/ie/NewStyles/pdf/IE-Executive-Summary.pdf">PDF</a></p></td>
        </tr>
        <tr>
        	<td><p>Mindfulness Research Abstracts</p></td>
        	<td><p>December 10, 2015</p></td>
        	<td><p><a download="" style="color:green;" title="Download" href="/ie/NewStyles/pdf/MIndfulness Research Abstracts 2015.pdf">PDF</a></p></td>
        </tr> -->
									</tbody>
								</table>
							</div>

						</div>
						<!--TAB 2 ENDS-->
						<!--TAB 3 STARTS-->
						<div style="display: none;" id="tab3">

							<div class="ur_grid margin-auto float-none">
								<table width="100%" cellspacing="0" cellpadding="0" border="0">
									<tbody>
										<tr>
											<th>Name</th>
											<!-- <th>Date</th> -->
											<th>Download</th>
										</tr>
										<tr>
											<td><p>Photo Consent Form</p></td>
											<!-- <td><p>June 1, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Photo-Consent-Form.pdf">PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Parent-Caregiver Letter</p></td>
											<!-- <td><p>July 1, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Inner-Explorer-Parent-Caregiver-Letter.docx">DOC</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Teacher's Guide - Exploring Potential</p></td>
											<!-- <td><p>December 10, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Inner-Explorer-Teachers-Manual-Middle-School-2.pdf">PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Journal Page-Exploring Potential</p></td>
											<!-- <td><p>December 1, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Journal-Page-Exploring-Potential.pdf">PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Do Not Disturb Sign-Small-Exploring Potential</p></td>
											<!-- <td><p>December 10, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Do-Not-Disturb-Small-Exploring-Potential.pdf">PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Do Not Disturb Sign-Large-Exploring Potential</p></td>
											<!-- <td><p>December 10, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Do-Not-Disturb-Large-Exploring-Potential.pdf">PDF</a>
												</p></td>
										</tr>
										
									</tbody>
								</table>
							</div>

						</div>
						<!--TAB 3 ENDS-->
						<!--TAB 3 ENDS-->
						<!--TAB 4 STARTS-->
						<div style="display: none;" id="tab4">

							<div class="ur_grid margin-auto float-none">
								<table width="100%" cellspacing="0" cellpadding="0" border="0">
									<tbody>
										<tr>
											<th>Name</th>
											<!-- <th>Date</th> -->
											<th>Download</th>
										</tr>
										<tr>
											<td><p>Photo Consent Form</p></td>
											<!-- <td><p>June 1, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Photo-Consent-Form.pdf">PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Parent-Caregiver Letter</p></td>
											<!-- <td><p>July 1, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Inner-Explorer-Parent-Caregiver-Letter.docx">DOC</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Teacher's Guide - Exploring Relevance</p></td>
											<!-- <td><p>June 1, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Teacher's Guide - Exploring Relevance.pdf">PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Not Disturb Sign - Small - Exploring
													Relevance</p></td>
											<!-- <td><p>December 10, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Do-Not-Disturb-Small-Exploring-Relevance.pdf">PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Not Disturb Sign - Large - Exploring
													Relevance</p></td>
											<!-- <td><p>December 10, 2015</p></td> -->
											<td><p>
													<a download="" style="color: green;" title="Download"
														href="/ie/NewStyles/pdf/Do-Not-Disturb-Large-Exploring-Relevance.pdf">PDF</a>
												</p></td>
										</tr>

									</tbody>
								</table>
							</div>

						</div>
						<!--TAB 4 ENDS-->

						<!--TAB 4 ENDS-->
						<!--TAB 5 STARTS-->
						<div style="display: none;" id="tab5">

							<div class="ur_grid margin-auto float-none">
								<table width="100%" cellspacing="0" cellpadding="0" border="0">
									<tbody>
										<tr>
											<th>Name</th>
											<th>Date</th>
											<th>Download</th>
										</tr>
										<tr>
											<td><p>Beyond the Program-Mindful Movement</p></td>
											<td><p>December 1, 2015</p></td>
											<td><p>
													<a
														href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-Dec-2015-Mindful-Movement.pdf"
														title="Download" style="color: green;" download>PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Beyond the Program-Gratitude</p></td>
											<td><p>November 1, 2015</p></td>
											<td><p>
													<a
														href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-Nov-2015-Gratitude.pdf"
														title="Download" style="color: green;" download>PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Beyond the Program-Bullying</p></td>
											<td><p>October 1, 2015</p></td>
											<td><p>
													<a
														href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-Oct-2015-Bullying-2.pdf"
														title="Download" style="color: green;" download>PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Beyond the Program-Pay Attention</p></td>
											<td><p>September 1, 2015</p></td>
											<td><p>
													<a
														href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-Sept-2015-Pay-Attention.pdf"
														title="Download" style="color: green;" download>PDF</a>
												</p></td>
										</tr>

										<tr>
											<td><p>Beyond the Program-Pleasant or Unpleasant?</p></td>
											<td><p>August 1, 2015</p></td>
											<td><p>
													<a
														href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-AUG-2015-Pleasant-or-Unpleasant.pdf"
														title="Download" style="color: green;" download>PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Beyond the Program-Brain Power</p></td>
											<td><p>June 1, 2015</p></td>
											<td><p>
													<a
														href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-JUNE-2015-Brain-Power.pdf"
														title="Download" style="color: green;" download>PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Beyond the Program-STOP!</p></td>
											<td><p>May 1, 2015</p></td>
											<td><p>
													<a
														href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-MAY-2015-STOP.pdf"
														title="Download" style="color: green;" download>PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Beyond the Program-Listening</p></td>
											<td><p>April 1, 2015</p></td>
											<td><p>
													<a
														href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-APR-2015-Listening.pdf"
														title="Download" style="color: green;" download>PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Beyond the Program-New Beginnings</p></td>
											<td><p>March 1, 2015</p></td>
											<td><p>
													<a
														href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-MAR-2015-New-Beginnings.pdf"
														title="Download" style="color: green;" download>PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Beyond the Program-Is It Helpful?</p></td>
											<td><p>February 1, 2015</p></td>
											<td><p>
													<a
														href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-FEB-2015-Is-It-Helpful.pdf"
														title="Download" style="color: green;" download>PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Beyond the Program-Presence Vs Presents</p></td>
											<td><p>January 1, 2015</p></td>
											<td><p>
													<a
														href="<%=request.getContextPath()%>/NewStyles/pdf/BTP-JAN-2015-Presence-vs-Presents.pdf"
														title="Download" style="color: green;" download>PDF</a>
												</p></td>
										</tr>
										
										
									
										
										<tr>
											<td><p>Beyond the Program-Testing</p></td>
											<td><p>April, 2016</p></td>
											<td><p>
													<a
														href="<%=request.getContextPath()%>/NewStyles/pdf/BTP April 2016 Testing.pdf"
														title="Download" style="color: green;" download>PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Beyond the Program-Self Compassion</p></td>
											<td><p>Feburary, 2016</p></td>
											<td><p>
													<a
														href="<%=request.getContextPath()%>/NewStyles/pdf/BTP Feb 2016 Self Compassion.pdf"
														title="Download" style="color: green;" download>PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Beyond the Program-Mindfulness Throughout The Day</p></td>
											<td><p>January, 2016</p></td>
											<td><p>
													<a
														href="<%=request.getContextPath()%>/NewStyles/pdf/BTP Jan 2016 Mindfulness Throughout The Day.pdf"
														title="Download" style="color: green;" download>PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Beyond the Program-Taking Mindfulness Home</p></td>
											<td><p>June, 2016</p></td>
											<td><p>
													<a
														href="<%=request.getContextPath()%>/NewStyles/pdf/BTP June 2016 Taking Mindfulness Home.pdf"
														title="Download" style="color: green;" download>PDF</a>
												</p></td>
										</tr>

										<tr>
											<td><p>Beyond the Program-Mindfulness Book Release</p></td>
											<td><p>March, 2016</p></td>
											<td><p>
													<a
														href="<%=request.getContextPath()%>/NewStyles/pdf/BTP March 2016 Mindfulness Book Release.pdf"
														title="Download" style="color: green;" download>PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Beyond the Program-Self Care</p></td>
											<td><p>May, 2016</p></td>
											<td><p>
													<a
														href="<%=request.getContextPath()%>/NewStyles/pdf/BTP May 2016 Self Care.pdf"
														title="Download" style="color: green;" download>PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Beyond the Program-Uncertainty</p></td>
											<td><p>November, 2016</p></td>
											<td><p>
													<a
														href="<%=request.getContextPath()%>/NewStyles/pdf/BTP Nov 2016 Uncertainty.pdf"
														title="Download" style="color: green;" download>PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Beyond the Program-Tune In</p></td>
											<td><p>October, 2016</p></td>
											<td><p>
													<a
														href="<%=request.getContextPath()%>/NewStyles/pdf/BTP Oct 2016 Tune In.pdf"
														title="Download" style="color: green;" download>PDF</a>
												</p></td>
										</tr>
										<tr>
											<td><p>Beyond the Program-Starting A New Year</p></td>
											<td><p>September, 2016</p></td>
											<td><p>
													<a
														href="<%=request.getContextPath()%>/NewStyles/pdf/BTP Sept 2016 Starting A New Year.pdf"
														title="Download" style="color: green;" download>PDF</a>
												</p></td>
										</tr>
										
										<tr>
											<td><p>Beyond The Program - Taking Care of Yourself </p></td>
											<td><p>January, 2017</p></td>
											<td><p>
													<a
														href="<%=request.getContextPath()%>/NewStyles/pdf/Beyond The Program-Taking Care of Yourself.pdf"
														title="Download" style="color: green;" download>PDF</a>
												</p></td>
										</tr>
										
									</tbody>
								</table>
							</div>

						</div>
						<!--TAB 3 ENDS-->

					</div>
					
				</div>
				<div class="videobtn">
					<input type="button" title="PROCEED TO NEXT STEP"
						value="Start" class="blueBtn"
						onclick="location.href = '<%=request.getContextPath()%>/teacher';" />
				</div>
			</div>
		</section>
	</div>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/responsiveslides.js"></script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.fancybox.pack.js?v=2.1.5"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/tab.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$("#header").sticky({
				topSpacing : 0
			});
			$.daisyNav();
		});
	</script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>

	<script type="text/javascript">
		$(function() {
			SyntaxHighlighter.all();
		});

		$("#flexiselDemo3").flexisel({
			visibleItems : 5,
			animationSpeed : 1000,
			autoPlay : true,
			autoPlaySpeed : 3000,
			pauseOnHover : true,
			enableResponsiveBreakpoints : true,
			responsiveBreakpoints : {
				portrait : {
					changePoint : 480,
					visibleItems : 1
				},
				landscape : {
					changePoint : 640,
					visibleItems : 2
				},
				tablet : {
					changePoint : 768,
					visibleItems : 3
				}
			}
		});
		$(window).load(function() {

			$('.flexslider').flexslider({
				animation : "slide",
				start : function(slider) {
					$('body').removeClass('loading');
				}
			});

		});
		
		function showTab(current, max) {
			for (i = 1; i <= max; i++) {
				getMyHTMLElement('tab' + i).style.display = 'none';
				getMyHTMLElement('mtab' + i).className = '';
			}
			getMyHTMLElement('tab' + current).style.display = '';
			getMyHTMLElement('mtab' + current).className = 'selected';
		}
	</script>

</body>
</html>
