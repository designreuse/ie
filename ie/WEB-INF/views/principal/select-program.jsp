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
<title>Select Program</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>

<body>
	<div class="wrapper">
<%@include file="header.jsp" %>
		<section class="getStartSct ">
		<div class="steps_getstarted">
			<div class="containerSmall">
			<div class="pracProgress_hdr">
 				<h2>Manage Classes</h2>
				<div class="green_line_btm"></div>
				</div>
			</div>
				<div class="clr"></div>
				<form:form  method="post" modelAttribute="dtoUser" action="saveProgram" id="saveProgram" class="register-form" >
				<div class="section_makpaymnt">
					<div class="programs_our" id="ourProg">
							<div class="titlebar_programms">
								<div class="payable_amt_1">
								  <input type="hidden" id="selectedPrograms" name="programIds">  
									<span class="font24"> Select a Program</span>
								</div>
							</div>
						</div>
							<div class="school_setup_wrapper" id="progDetail">

								<div class="school_setup_box ">
								<c:forEach items="${programsList}" var="program" varStatus="programCount" begin="0" end="3">
 									<div class="img_setup program4 pos-reltv" id="programImg_${program.programId}" onclick="showProgramContent(${program.programId});">
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
											<%-- <input type="checkbox" id="check_${program.programId}"> --%>
										</div>
									</div>
								</c:forEach>
								</div>
							
								</div>
								<div class="videobtn">
									<input type="button" onclick="addProgram();" value="Next"  class="blueBtn padding-lt-rt-40" />
								</div>
							</div>
							</form:form>
</div>
			
		</section>
	</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %>
  <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script> 
   <script type="text/javascript">	
/* 	$(document).ready
	(function($){
		$.daisyNav();
	}); */
	function addProgram(){
			
				$("#saveProgram").submit();
				//return true;
			
	}

	$(document).ready(function() {    
		$("#header").sticky({ topSpacing: 0 });
		$.daisyNav();
		$.each(${programs},function(index,value){
			/* if(index=='0'){ */
				$('#check_'+value).addClass("tick_image_add");
			<%-- $('#check_'+value).prop('src', '<%=request.getContextPath()%>/NewStyles/images/tick-mark.png'); --%>
			/* $('#programImg_'+value).attr('onclick','showProgramContent('+value+')'); */
			$('#programImg_'+value).removeAttr("onclick");
			$('#programDiv_'+value).show();
			//$('#overlay_'+value).attr('style','background-color:orange');
			var selectedProg = $('#selectedPrograms').val();
			if(selectedProg.indexOf(value)<0){
				$('#selectedPrograms').val(selectedProg+value+",");
			}

		});
		
	});
	   function setProgramId(value,index,programId){
		   if(value != ''){
		   		$('#programId_'+programId+'_'+index).val(programId);
		   }else{
			   $('#programId_'+programId+'_'+index).val('');
		   }
	   }
	   
	   function showProgramContent(programId){
		  // $('#check_'+programId).prop('checked', true);
		  $('#check_'+programId).addClass("tick_image_add");
		   <%-- $('#check_'+programId).prop('src', '<%=request.getContextPath()%>/NewStyles/images/tick-mark.png'); --%>
		   //$('#programDiv_'+programId).show();
		   $('#programImg_'+programId).removeAttr("onclick");
		   $('#programImg_'+programId).attr("onclick","hideProgramContent("+programId+")");
			//$('#overlay_'+programId).attr('style','background-color:green');
		   var selectedProg = $('#selectedPrograms').val();
			if(selectedProg.indexOf(programId)<0){
				$('#selectedPrograms').val(selectedProg+programId+",");
				var amount = $('#paymentAmt').html();
				var amt = $('#programAmt_'+programId).val();
				$('#paymentAmt').html(parseInt(amount)+parseInt(amt));
				$('#finalAmt').html(parseInt(amount)+parseInt(amt));
			}
	}
	   function hideProgramContent(programId){
		  // $('#check_'+programId).prop('checked', false);
		  $('#check_'+programId).removeClass("tick_image_add");
		   /* $('#check_'+programId).prop('src', ''); */
		   var sectionLength = $('[id^=divSection_'+programId+'_]').length;
		   var divId = 0;
				$("#parentInfo_"+programId).html('<div id="divSection_'+programId+'_'+ divId + '">'+
						'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" id="programId_'+programId+'_'+ divId +'" name="programIds"/>'+
						'<input type="text" name="className_'+programId+'_'+ divId + '" placeholder="Class*" id="className_'+programId+'_'+ divId + '" onchange="setProgramId(this.value,'+ divId + ','+programId+');"/></div></div></div></li><br/>'+
			    '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
			    '<input type="text" name="teacherName_'+programId+'_'+ divId + '" placeholder="Teacher Name*"  id="teacherName_'+programId+'_'+ divId + '" /></div></div></div></li>'+
			    '<li><div class="input_relative"><div class="input_add_logo"><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
			    '<input type="text" name="teacherEmail_'+programId+'_'+ divId + '" placeholder="Teacher Email*"  id="teacherEmail_'+programId+'_'+ divId + '"/></div></div></div></div>'+
			    '<div class="plusImg" id="removeLast_'+programId+'_'+divId+'"><a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a></div>'+
			    '</div></li>');

		   $('#programImg_'+programId).removeAttr("onclick");
		   $('#programImg_'+programId).attr("onclick","showProgramContent("+programId+")");
		   $('#programDiv_'+programId).hide();
		   $('#overlay_'+programId).removeAttr('style');
		   var selectedProg = $('#selectedPrograms').val();
			if(selectedProg.indexOf(programId)>=0){
				$('#selectedPrograms').val((selectedProg.replace(programId+',','')));
				   /* $.each(${programs},function(index,value){
					   
					   if(value == programId){
				  			$('#overlay_'+programId).attr('style','background-color:orange');
				  			$('#selectedPrograms').val($('#selectedPrograms').val()+programId+",");
					   }
				   }); */
				   
				   
		   			/* var amount = $('#paymentAmt').html();
		   			var amt = $('#programAmt_'+programId).val();
		   			if(parseInt(amount)>0){
		   				$('#paymentAmt').html(parseInt(amount)-parseInt(amt));
		   				$('#finalAmt').html(parseInt(amount)-parseInt(amt));
		   			} */
			}

	}
	</script>
	
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
   <script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>

   <script type="text/javascript">
    $(function(){
      //SyntaxHighlighter.all();
    });
	
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



</script>

</body>
</html>
