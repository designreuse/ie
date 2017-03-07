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
<title>Get Started</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css"	id="style_components" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="wrapper">
		<%@include file="header.jsp"%>
		<section class="makeDonateSct">
			<div class="containerSmall">
        <div class="pracProgress_hdr">
                    <h2>Get Started</h2>
                    <div class="green_line_btm"></div>
                </div>
			</div>
		</section>
        <section class="get-started-new-sec">
        	<div class="container">
            	<div class="new-started-step">
                	<div class="containerSmall">
                    	<div class="small-containor">
                    		<div class="new-started-grey">
                        	<div class="new-started-img">
                        	<c:if test="${schoolDetailTemp.promoCode != 'IEHOME2016'}">
								<%-- <img src="<%=request.getContextPath()%>/NewStyles/images/started-step80.png">   --%>                      	
                        	</c:if>
                        	<c:if test="${schoolDetailTemp.promoCode == 'IEHOME2016'}">
                        		<%-- <img src="<%=request.getContextPath()%>/NewStyles/images/started-step60.png"> --%>
                        	</c:if>
                            </div>
                            <div class="new-started-head">
                            	<h3>ADMINISTRATOR SIGNUP</h3>
                                <p>Select a Program</p>
                            </div>
                        </div>
                        </div>
                        </div>
                        <div class="container">
                        <form:form action="saveProgramTemp" modelAttribute="dtoUser" method="post" id="saveProgramTemp">
                	<input type="hidden" value="${schoolDetailTemp.schoolId}" name="schoolId">
                	<input type="hidden" id="selectedPrograms" name="uniqueProgramIds" value="${schoolDetailTemp.schoolProg}">
                        <div class="get-start-new-form">
                        	<div class="getstartForm_started">
                	<label class="start-new-label">Select Program</label>
					<ul>
					</ul>
					<!-- Display Program Start  -->
					<div class="school_setup_wrapper" id="progDetail">
								<div class="school_setup_box ">
								<c:forEach items="${programs}" var="program" varStatus="programCount" begin="0" end="3">
								<c:if test="${programCount.count == 1}">
									<div class="img_setup program4" id="programImg_${program.programId}" onclick="showProgramContent(${program.programId});">
										<div class="imgsetup_lg">
										<input type="hidden" id="programAmt_${program.programId}" value="${program.programAmount}">
											<img src="<%=request.getContextPath()%>/NewStyles/images/img${program.programId}.jpg" alt="" />
											<div class="overlay_setup" id="overlay_${program.programId}">
												 <p>${program.programDescDetail}</p> 
											</div>
										</div>
										<div class="check-box-absolute">
										<div id="check_${program.programId}"></div>
											<%-- <img alt="" src="" id="check_${program.programId}"/> --%>
										</div>
									</div>
								</c:if>
								<c:if test="${programCount.count != 1}">
 									<div class="img_setup program4" id="programImg_${program.programId}" onclick="showProgramContent(${program.programId});">
										<div class="imgsetup_lg">
										<input type="hidden" id="programAmt_${program.programId}" value="${program.programAmount}">
											<img src="<%=request.getContextPath()%>/NewStyles/images/img${program.programId}.jpg" alt="" />
											<div class="overlay_setup" id="overlay_${program.programId}">
												<p>${program.programDescDetail}</p> 
											</div>
										</div>
										<div class="check-box-absolute">
											<div id="check_${program.programId}"></div>
											<!--  <img alt="" src="" id="check_${program.programId}"/>-->
										</div>
									</div>
								</c:if>
								</c:forEach>
								</div>
							</div>
					<!-- Display Program End -->
				</div>
                        </div>
                        <div class="containerSmall">
                        <div class="back-next-btn">
                        	<ul>
                            	<%-- <li><a onclick="backButtonSubmit(${schoolDetailTemp.schoolId})">Back</a></li> --%>
                                <li>
                                <input type="submit" value="Next">
                                <!-- <a href="javascript:;">Next</a> -->
                                </li>
                            </ul>
                        </div>
                        </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </section>
	</div>
	<form action="savePrincipalTemp" id="savePrincipalTemp" method="post">
		<input type="hidden" name="isBack" id="isBack" value="Y"> <input
			type="text" name="id" id="id">
	</form>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
<script	src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"	type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/dateFormat.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript">	
jQuery(document).ready
	(function($){
		$.format = DateFormat.format;
		var schoolDetailTemp = '${schoolDetailTemp.schoolProg}';
		if(schoolDetailTemp!=null && schoolDetailTemp!=""){
			$('#check_'+schoolDetailTemp).prop('src', '<%=request.getContextPath()%>/NewStyles/images/tick-mark.png');
			$('#programImg_'+schoolDetailTemp).removeAttr("onclick");
			$('#programImg_'+schoolDetailTemp).attr("onclick","hideProgramContent("+schoolDetailTemp+")");
			$("#selectedPrograms").val(schoolDetailTemp);
		}
		$("#header").sticky({ topSpacing: 0 });
		$.daisyNav();
		$("#login").click(function(e) {
	        $(".login_panel").toggle();
	        e.stopPropagation();
	    });
		$('#saveProgramTemp').validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            //ignore: "",
            rules: {
            	name: {
                    required: true,
                },
                address: {
                    required: true,
                },
                state: {
                    required: true,
                },
                zipCode: {
                    required: true,
                }
            },

            invalidHandler: function(event, validator) { //display error alert on form submit   
            },

            highlight: function(element) { // hightlight error inputs
                $(element)
                    .closest('.outer-field-wrap').addClass('has-error'); // set error class to the control group
            },
            
            success: function(label) {
                label.closest('.outer-field-wrap').removeClass('has-error');
                label.closest('.outer-field-wrap ').removeClass('has-error');
                label.remove();
            },

            errorPlacement: function(error, element) {
                    error.insertAfter(element);
            },

            submitHandler: function(form) {
            	var selectedPrograms = $("#selectedPrograms").val();
            	if(selectedPrograms==""){
            		alert("Please select one program");
            		return false;
            	}
            	else{
            		form.submit();
            	}
            }
        });
	});
</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
<script type="text/javascript">
    /* $(function(){
      SyntaxHighlighter.all();
    }); */
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
	
    function showProgramContent(programId){
    	 $.each($('[id^=check_]'),function(i,ele){
    		 $(ele).removeClass("tick_image_add");
 			 $(ele).removeClass('overlay_setup_signon_active'); 
 		});
		$('#check_'+programId).addClass("tick_image_add");   
		$('#programImg_'+programId).attr("onclick","hideProgramContent("+programId+")");
    	   var selectedProg = $('#selectedPrograms').val();
    		if(selectedProg.indexOf(programId)<0){
    			$('#selectedPrograms').val(programId);
    		}
    }
   function hideProgramContent(programId){
	   $('#check_'+programId).removeClass("tick_image_add"); 
    	   $('#programImg_'+programId).removeAttr("onclick");
    	   $('#programImg_'+programId).attr("onclick","showProgramContent("+programId+")");
    	   var selectedProg = $('#selectedPrograms').val();
    		if(selectedProg.indexOf(programId)>=0){
    			$('#selectedPrograms').val("");
    		}
    }
    function backButtonSubmit(tempSchoolId){
    	$("#id").val(tempSchoolId);
    	$("#savePrincipalTemp").submit();
    	
	}
</script>


</body>
</html>