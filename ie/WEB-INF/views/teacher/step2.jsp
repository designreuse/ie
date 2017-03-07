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
							<li><a href="<%=request.getContextPath()%>/teacher/step3">
									<h3>3</h3>
									<p>Training Video</p>
							</a></li>

							<li><a href="<%=request.getContextPath()%>/teacher/step4">
									<h3>4</h3>
									<p>Classroom Tools</p>
							</a></li>
						</ul>
					</div>
				</div>


				<div class="onboard-video">
					<h4>Questionnaire</h4>
					<div class="questionnaire-onboarding">
						<div class="onboard-list-hd">How familiar are you with
							mindful awareness?</div>
						<div class="onboard-list-form">
							<label><input type="radio" name="none" value="none"
								onclick="setQ1Value('none');">None</label> <label><input
								type="radio" name="none" value="somewhat"
								onclick="setQ1Value('somewhat');">Somewhat</label> <label><input
								type="radio" name="none" value="very"
								onclick="setQ1Value('very');">Very</label>
						</div>
					</div>
					<div class="questionnaire-onboarding">
						<div class="onboard-list-hd">What are your expectations for
							implementing Inner Explorer in your classroom? (click all that
							apply)</div>
						<div class="onboard-list-form">
							<label><input type="checkbox" value="q11" id="q11"
								onchange="setQ2Value('q11')">Help with stress </label> <label><input
								type="checkbox" value="q12" id="q12"
								onchange="setQ2Value('q12')">Reduce anxiety and increase
								resilience</label> <label><input type="checkbox" value="q13"
								id="q13" onchange="setQ2Value('q13')">Improve test
								scores / grades</label> <label><input type="checkbox"
								value="q14" id="q14" onchange="setQ2Value('q14')">Enhance
								focus and self-control</label> <label><input type="checkbox"
								value="q15" id="q15" onchange="setQ2Value('q15')">Reduce
								behavioral conflict</label> <label><input type="checkbox"
								value="q16" id="q16" onchange="setQ2Value('q16')">Other…
								fill in blank<input type="text" name="q16text" id="q16text"
								class="fill-blank"></label>
						</div>
						<label class="inbound-comment">Comments</label>
						<textarea class="inbound-txt-area" id="q2Comment" name="q2Comment"></textarea>
					</div>
					<div class="questionnaire-onboarding">
						<div class="onboard-list-hd">What are some of the challenges
							you are facing in your classroom?</div>
						<div class="onboard-list-form">
							<label><input type="checkbox" value="q21" id="q21"
								onchange="setQ3Value('q21')">Management </label> <label><input
								type="checkbox" value="q22" id="q22"
								onchange="setQ3Value('q22')">Burn out </label> <label><input
								type="checkbox" value="q23" id="q23"
								onchange="setQ3Value('q23')">Low participation and
								engagement</label> <label><input type="checkbox" value="q24"
								id="q24" onchange="setQ3Value('q24')">Behavioral
								conflict</label> <label><input type="checkbox" value="q25"
								id="q25" onchange="setQ3Value('q25')">Other… fill in
								blank<input type="text" name="q25text" id="q25text"
								class="fill-blank"></label>
						</div>
						<label class="inbound-comment">Comments</label>
						<textarea class="inbound-txt-area" id="q3comment" name="q3comment"></textarea>
					</div>
					
				<%-- 	<div class="videobtn">
					<input type="button" title="PROCEED TO NEXT STEP"
						value="PROCEED TO NEXT STEP" class="blueBtn"
						onclick="location.href = '<%=request.getContextPath()%>/teacher/step3';" />
				</div> --%>
				</div>
			</div>
		</section>
	</div>
	
	<form class="hello"
				action="<%=request.getContextPath()%>/teacher/endTour"
				name="teacherQuestionForm" id="teacherQuestionForm">

				<input type="text" name="question1" id="question1" style="display:none;"> <input
					type="text" name="question2" id="question2" style="display:none;"> <input
					type="text" name="question3" id="question3" style="display:none;"> <input
					type="text" name="question1Text" id="question1Text" style="display:none;"> <input
					type="text" name="question2Text" id="question2Text" style="display:none;"> <input
					type="text" name="question1Comment" id="question1Comment" style="display:none;">
				<input type="text" name="question2Comment" id="question2Comment" style="display:none;">

				<%--     <c:if test="${seprateTeacher == 'N'}">
                       <div style="position: relative; clear:both; padding-top: 15px; width: 100%; float: left;">
                        <label name="tnc" id="tnc" >
                        <input type="checkbox" name="check" id="check" >
                         I agree to End User
                        <a href="#term-condition"  class="fancybox">License</a>
                         Agreement.<!-- <a href="#privacy" class="fancybox"> Agreement</a> --><br>
                        </label>
                        </div>
                       </c:if> --%>

				<div class="videobtn">
					<input type="button" value="PROCEED TO NEXT STEP" class="submit-btn"
						onclick="submitFormQuestion();" />
				</div>
			</form>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<%@include file="../footer.jsp"%>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
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
		
		function setQ1Value(radioValue) {

			$("#question1").val(radioValue);

		}

		function setQ2Value(q2Value) {
			var q2 = $("#question2").val();

			//Q11
			if (q2Value == 'q11') {
				var optInStatus = $("#q11").prop('checked');
				if (optInStatus) {
					$("#question2").val(q2 + "," + q2Value);
				} else {
					q2 = q2.replace("," + q2Value, "");
					$("#question2").val(q2);
				}
			}

			//Q12
			else if (q2Value == 'q12') {
				var optInStatus = $("#q12").prop('checked');
				if (optInStatus) {
					$("#question2").val(q2 + "," + q2Value);
				} else {
					q2 = q2.replace("," + q2Value, "");
					$("#question2").val(q2);
				}
			}

			//Q13
			else if (q2Value == 'q13') {
				var optInStatus = $("#q13").prop('checked');
				if (optInStatus) {
					$("#question2").val(q2 + "," + q2Value);
				} else {
					q2 = q2.replace("," + q2Value, "");
					$("#question2").val(q2);
				}
			}

			//Q14
			else if (q2Value == 'q14') {
				var optInStatus = $("#q14").prop('checked');
				if (optInStatus) {
					$("#question2").val(q2 + "," + q2Value);
				} else {
					q2 = q2.replace("," + q2Value, "");
					$("#question2").val(q2);
				}
			}

			//Q15
			else if (q2Value == 'q15') {
				var optInStatus = $("#q15").prop('checked');
				if (optInStatus) {
					$("#question2").val(q2 + "," + q2Value);
				} else {
					q2 = q2.replace("," + q2Value, "");
					$("#question2").val(q2);
				}
			}

			//Q16
			else if (q2Value == 'q16') {
				var optInStatus = $("#q16").prop('checked');
				if (optInStatus) {
					$("#question2").val(q2 + "," + q2Value);
				} else {
					q2 = q2.replace("," + q2Value, "");
					$("#question2").val(q2);
				}
			}

		}

		function setQ3Value(q3Value) {
			var q3 = $("#question3").val();

			//Q11
			if (q3Value == 'q21') {
				var optInStatus = $("#q21").prop('checked');
				if (optInStatus) {
					$("#question3").val(q3 + "," + q3Value);
				} else {
					q3 = q3.replace("," + q3Value, "");
					$("#question3").val(q3);
				}
			}

			//Q22
			else if (q3Value == 'q22') {
				var optInStatus = $("#q22").prop('checked');
				if (optInStatus) {
					$("#question3").val(q3 + "," + q3Value);
				} else {
					q3 = q3.replace("," + q3Value, "");
					$("#question3").val(q3);
				}
			}

			//Q23
			else if (q3Value == 'q23') {
				var optInStatus = $("#q23").prop('checked');
				if (optInStatus) {
					$("#question3").val(q3 + "," + q3Value);
				} else {
					q3 = q3.replace("," + q3Value, "");
					$("#question3").val(q3);
				}
			}

			//Q24
			else if (q3Value == 'q24') {
				var optInStatus = $("#q24").prop('checked');
				if (optInStatus) {
					$("#question3").val(q3 + "," + q3Value);
				} else {
					q3 = q3.replace("," + q3Value, "");
					$("#question3").val(q3);
				}
			}

			//Q25
			else if (q3Value == 'q25') {
				var optInStatus = $("#q25").prop('checked');
				if (optInStatus) {
					$("#question3").val(q3 + "," + q3Value);
				} else {
					q3 = q3.replace("," + q3Value, "");
					$("#question3").val(q3);
				}
			}

		}

		function submitFormQuestion() {

			var question1Text = $("#q16text").val();
			var question2Text = $("#q25text").val();
			var question1Comment = $("#q2Comment").val();
			var question2Comment = $("#q3comment").val();

			$("#question1Text").val(question1Text);
			$("#question2Text").val(question2Text);
			$("#question1Comment").val(question1Comment);
			$("#question2Comment").val(question2Comment);
			$("#teacherQuestionForm").submit();

		}
		
	</script>
<script>
		window.location.hash = "";
		window.location.hash = "";//again because google chrome don't insert first hash into history
		window.onhashchange = function() {
			window.location.hash = "";
		}
	</script>
</body>
</html>
