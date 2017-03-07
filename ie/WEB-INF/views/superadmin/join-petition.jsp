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
<title>Petition</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</head>

<body>
<div class="wrapper">
    <%@include file="header.jsp" %>
    <input type="text" name="checkBoxValue" id="checkBoxValue" value="0">
    <!--inner_wrapper starts-->
    <div class="inner_wrapper">
    	<div class="about_us">
        	<div class="content_inner">
            	<div class="pracProgress_hdr">
                    <h2>Petition</h2>
                    <div class="green_line_btm"></div>
                </div>
                <div class="petition-up-text">
                    <h4>What do academic decline, poverty, and juvenile crime all have in common? If you guessed emotional stress as a root cause, you’d be right.</h4>
					<h4>However what you might not know is how these outcomes can be prevented with a simple intervention. We can break this cycle in just one generation!  Let's be the generation that gets it done.  </h4>
					<p>We wanted to reach out to you to bring Inner Explorer to<br>
					<c:if test="${not empty petition.image}">
						<span><img class="school-logo" src="<%=request.getContextPath()%>/petition-media/${petition.image}">${schoolName}</span></p>
					</c:if>
					<c:if test="${empty petition.image}">
                    	<span><img class="school-logo" src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png">${schoolName}</span></p>
                    </c:if>

                </div>
                <div class="containerSmall" id="petitionContent" >
                	<div class="camp_add_cmnt">
                    	<label>Petition Information</label>
                        <div class="getstartForm_teacher margin-top-zero">
							<ul>
								<li>
									<div class="contact-row">
										<div class="outer-field-wrap">
											<div class="outer-field">
												<input type="text" placeholder="Heading"  value="${petition.heading}"name="heading" readonly="readonly"/>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
                        <div class="add_cmnt_msg margin-top-zero">
                           	<textarea placeholder="Add Comment/Testimonials" name="petitionComment" readonly="readonly"> ${petition.comment}</textarea>
                        </div>
                   	</div>

                    <div class="user-comments">
                    	<p>Comments</p>
                        <ul>
                        <c:if test="${fn:length(comments) eq 0}">
                        <li>No comment found</li>
                        </c:if>
                        <c:forEach var="comment" items="${comments}">
                        	<li>
                            	<h4>${comment.name} </h4>
                                <p>${comment.comment}</p>
                                <c:if test="${comment.image ne null}">
                                <img src="<%=request.getContextPath()%>/petition-media/${comment.image}">
                                </c:if>
                                
                            </li>
                            </c:forEach>
                        </ul>
                    </div>   
                </div>
            </div>
        </div>
    </div>
    <!--inner_wrapper ends--> 
</div>
<footer>
    <div class="container">
        <div class="footerLeft">
            <p>Copyright © 2015 Inner Explorer</p>
        </div>
        <div class="footerRight">
            <ul>
                <li><a href="javascript:;">Privacy Policy</a></li>
                <li><a href="javascript:;">Terms & Conditions</a></li>
            </ul>
        </div>
    </div>
</footer>
<%-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script> --%> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>

</body>

<script type="text/javascript">
function changeChkValue(){
	
	var chkValue=$("#checkBoxValue").val();
	
	if(chkValue=="0"){
		$("#petitionContent").show();
		$("#checkBoxValue").val("1");
	}
	else if(chkValue=="1"){
		$("#petitionContent").hide();
		$("#checkBoxValue").val("0");
	}
}
function sendMailToFriend(){
	location.reload();
}
</script>


</html>
 