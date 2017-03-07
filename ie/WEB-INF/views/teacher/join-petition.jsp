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
<c:if test="${companyName eq '1'}">
	<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<c:if test="${companyName eq '2'}">
	<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
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
                    <h2>Join Petition</h2>
                    <div class="green_line_btm"></div>
                </div>
                <div class="petition-up-text">
                    <h4>What do academic decline, poverty, and juvenile crime all have in common? If you guessed emotional stress as a root cause, you’d be right.</h4>
					<h4>However what you might not know is how these outcomes can be prevented with a simple intervention. We can break this cycle in just one generation!  Let's be the generation that gets it done.  </h4>
					<p>We wanted to reach out to you to bring Inner Explorer to<br>
                    <span><img class="school-logo" src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png">${schoolName}</span></p>
                    <div class="petition-check-outer">
                        <div class="petition-check">
                        	<input type="checkbox" name="checkbox" id="checkbox_id" value="value" onclick="changeChkValue();">
							<label for="checkbox_id">I Support It</label>
                        </div>
                    </div>
                </div>
                <form:form name="petitionForm" id="petitionForm" modelAttribute="dtoUser" action="postPetitionComment" enctype="multipart/form-data">
                <form:input path="petitionId" type="hidden" name="petitionId" value="${petitionId}"/>
                <div class="containerSmall" id="petitionContent" style="display: none;">
                	<div class="camp_add_cmnt">
                    	<label>Enter Information</label>
                        <div class="getstartForm_teacher margin-top-zero">
							<ul>
								<li>
									<div class="contact-row">
										<div class="outer-field-wrap">
											<div class="outer-field">
												<form:input type="text" placeholder="First Name"  path="firstName" readonly="true"/>
											</div>
										</div>
									</div>
								</li>
                        		<li>
									<div class="contact-row">
										<div class="outer-field-wrap">
											<div class="outer-field">
												<form:input type="text" placeholder="Email Address" path="email" readonly="true"/>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
                        <div class="add_cmnt_msg margin-top-zero">
                           	<form:textarea path="petitionComment" placeholder="Add Comment/Testimonials" name="petitionComment"></form:textarea>
                        </div>
                        <div class="media-icons">
                           	<ul>
                               	<li><a><img src="<%=request.getContextPath()%>/NewStyles/images/icon10-2.png"></a></li>
                                <li>
                                <a><img src="<%=request.getContextPath()%>/NewStyles/images/icon9.png"></a>
                                </li>
                                <li>
                                <form:input path="image" type="file" name="image" id="image"/>
                                </li>
                            </ul>
                        </div>
                        <div class="btns-outer mrg_top25">
							<input class="submit-btn fl" type="submit" value="submit">
						</div>
                   	</div>
                    <div class="petition-sharing">
                    	<div class="petition-share-in">
                            <ul>
                            	<li><p>Share on</p></li>
                            	 <li><a href="http://www.linkedin.com/shareArticle?mini=true&url=${baseURL}" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"><img src="<%=request.getContextPath()%>/NewStyles/images/link_new.jpg" alt=""></a></li>
                                <li><a class="fb-share-button" title="Facebook" href="http://www.facebook.com/sharer.php?u=${baseURL}" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"><img src="<%=request.getContextPath()%>/NewStyles/images/fb_new.jpg" alt=""></a></li>
                                <li><a href="https://twitter.com/share?url=${baseURL}" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;" title="Twitter"><img src="<%=request.getContextPath()%>/NewStyles/images/twt_new.jpg" alt=""></a></li>
                                <li><a href="http://smile.amazon.com/ref=smi_ge_rl_rd_gw?_encoding=UTF8&newts=1&pldnNewCustomer=1&ref_=smi_ge_rsr_btnr1_setch#" title="Amazon Smile" target="_blank"><img src="<%=request.getContextPath()%>/NewStyles/images/amazon.png"></a></li>
                                <li><a><img src="<%=request.getContextPath()%>/NewStyles/images/g+_new.jpg" alt=""></a></li>
                            </ul>
                        </div>
                        <div class="petition-mail">
                        	<label>Send Email to Friends</label>
                            <div class="enter-mail">
                            	<input type="text" placeholder="Enter Email and Press Tab">
                            </div>
							<input class="submit-btn" type="button" value="Send" onclick="sendMailToFriend();">
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
                </form:form>
            </div>
        </div>
    </div>
    <!--inner_wrapper ends--> 
</div>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="../footer.jsp" %>
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