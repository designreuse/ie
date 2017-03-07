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
 <spring:eval expression="@propertyConfigurer.getProperty('service.url')" var="baseURL" />
<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Step-4</title>
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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
</head>

<body>
	<div class="wrapper">
		<header id="header">
			<div class="container "> 
				<div class="logo">
					<a href="<%=request.getContextPath()%>/teacher/endTour" title="">
<%-- 					<img src="<%=request.getContextPath()%>/NewStyles/images/logo.jpg" alt="Logo" title="logo" /> --%>
					</a>
				</div>
				<div class="hdRight">
	                <div class="startRight">
	                	<p>Welcome, ${loginName}</p>
							<%-- <input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout';" class="startBtn hdr-btn-clr"/> --%>
							 	<c:if test="${companyName eq '1'}">
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout?name=teacher&userIdForLogout=${userIdForLogout}';" class="startBtn hdr-btn-clr"/>
						</c:if>
						<c:if test="${companyName eq '2'}">
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout?name=teachercrim';" class="startBtn hdr-btn-clr"/>
						</c:if>
					</div>
            	</div>
			</div>
		</header>
		<%-- <section class="slider-inner">
			<img src="<%=request.getContextPath()%>/NewStyles/images/slider1.jpg" alt="Slider" />
		</section> --%>

		<section class="tehDsh-step1 ">
			<div class="containerSmall">
		
       <div class="pracProgress_hdr">
            <h2>Training Resources</h2>
            <div class="green_line_btm"></div>

          </div>
    
				<!-- <h3>Training Resources</h3> -->
				<%-- <div class="steplist">
					<img src="<%=request.getContextPath()%>/NewStyles/images/teacher-step3.png" alt="Steps" />
				</div> --%>
				
				<div class="round-steps-outer">
				<div class="chain">
			    	<ul>
			        	<li>
			            	<a href="<%=request.getContextPath()%>/teacher/teacher-dash-step1">
			            		<h3>1</h3>
			                	<p>Go through Training Video</p>
			                </a>
			            </li>
			            <li class="chain-clr-grn">
			            	<a href="<%=request.getContextPath()%>/teacher/teacher-dash-step2">
			            		<h3>2</h3>
			                	<p>Introduce the Concept to Class</p>
			                </a>
			            </li>
			            <li class="chain-clr-grn">
			            	<a href="<%=request.getContextPath()%>/teacher/teacher-dash-step5">
			            		<h3>3</h3>
			                	<p>Training Resources</p>
			                </a>
			            </li>
<%-- 			            <c:if test="${firstLogin == 'N'}">
			            <li class="chain-clr-grn">
			            	<a href="<%=request.getContextPath()%>/teacher/teacher-dash-step3">
			            		<h3>4</h3>
			                	<p>Letters to Parents</p>
			                </a>
			            </li>
			            </c:if> --%>
			            <c:if test="${companyName eq '1'}">
			            <li class="chain-clr-grn">
			            	<a href="<%=request.getContextPath()%>/teacher/teacher-dash-step4">
<%-- 			            		<c:if test="${firstLogin == 'N'}">
			            			<h3>5</h3>
			            		</c:if>
			            		<c:if test="${firstLogin == 'Y'}"> --%>
			            			<h3>4</h3>
			            		<%-- </c:if> --%>
			                	<p>Join the Community</p>
			                </a>
			            </li>
			            </c:if>
			            <li class="chain-clr-grn">
			            	<a href="<%=request.getContextPath()%>/teacher/teacher-dash-step6">
			            		<h3>
			            		<c:if test="${companyName eq '1'}">
			            		5
			            		</c:if>
			            		<c:if test="${companyName eq '2'}">
			            		4
			            		</c:if>
			            		</h3>
			                	<p>Recommended Best Practices</p>
			                </a>
			            </li>
			            
			        </ul>
			    </div>
			    </div>
			    
				<div class="clr"></div>
				
				<div class="techcont Mbtm0">
					<!-- <h4 class="padding-top-zero pdng-btm-20">Best Practices</h4> -->
				</div>
                
                <div class="tech-dash-cntnt padding-btm-zero">
                
                	
                    <div class="tech-step-6-left">
                    	<h3>Following are the Recommended Best Practices:</h3>
                        <ul>
                        	<li class="green-dot-left-1">Pick a time of day that is a normal transition to run the program - try to stick with it.</li> 
<li class="green-dot-left-2">Adjust the volume on the speakers each day; some tracks are louder than others. </li>
<li class="green-dot-left-3">Ask students to all face the same direction so no one is “looking” at anyone else. </li>
<li class="green-dot-left-4">Ask the students to put their journal on desk before you start so they are ready. </li>
<li class="green-dot-left-5">Turn out the lights if possible to inspire a sense of calm. </li>
<li class="green-dot-left-6">Participate with your students (even close your eyes). They’ll take it seriously if you do!</li>
<li class="green-dot-left-7">Expect some students to be squirrelly; this is different from what they normally do. </li>
<li class="green-dot-left-8">Expect after a few weeks for some students to say, "This is stupid” or “What’s the point, I don’t think it’s working”. 
As they go inward, it can be uncomfortable to face aspects of their lives that may be easier to avoid through distraction. 
Any discomfort will subside and they will be healthier and happier as a result.</li> 
<li class="green-dot-left-9">Expect some students to have strong reactions, maybe related to past trauma. Handle them as you normally would, through the school social worker and/or counselors/psychologists. </li>
<li class="green-dot-left-10">Building a habit takes time. Gently guide the students to remain quiet through the practices. Even if they seem disengaged, they will hear the instruction and will move through this phase. </li>
<li>Enjoy a deepening sense of community and calm in your classroom! </li></ul>
                       
                    </div>
                
                	<div class="videobtn">
                 <input type="button" class="blueBtn" onClick="location.href='<%=request.getContextPath()%>/teacher/endTour'" value='DONE' title="Done">
					
				</div>
                
				</div>
			</div>
		</section>
	</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %> 
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script> 
   <script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$("#header").sticky({ topSpacing: 0 });
		$.daisyNav();
	});
	</script>
	
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
   <script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>

   <script type="text/javascript">
    $(function(){
      //SyntaxHighlighter.all();
      var letterSatus = '${letterSent}'; 
      if(letterSatus == 'true'){
    	  alert("Letter to parents sent successfully.");
    	  '<c:remove var="letterSent"/>';
      }
      if(letterSatus == 'false'){
    	  alert("Letter to parents message failed.");
    	  '<c:remove var="letterSent"/>';
      }
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
	
	function Group(title, slug, id) {
    this.title = title;
    this.slug = slug;
    this.id = id;
	}


    $(window).load(function(){
 /*    	if('${firstLogin}'=='Y'){ */

		  '  <c:url value="${baseURL}webservice.php?method=recentcommunity" var="url">'+
			 ' <c:param name="email" value="${loginEmail}" />'+
			'</c:url>'
			$.getJSON('${url}', function(data) {
				$("div.teachListTable table").html('');
				$("div.teachListTable table").append('<tr><th width="55%">Recommended Groups for You</th><th>Owner Name</th><th>&nbsp</th></tr>');
		       if(data.data.length>0){
					$.each(data.data, function(index,value) {
							if(value.status == 0){
								$("div.teachListTable table").append("<tr><td>"+value.title+"</td>	<td>"+value.userName+"</td>	<td align=\"center\"><input id =\""+value.id+"\" type=\"button\" value=\"Join\" class=\"startBtn-table\" onclick=\"joinGroup('"+value.slug+"','"+value.id+"')\"/></td>	</tr>");
							}else{
								$("div.teachListTable table").append("<tr><td>"+value.title+"</td>	<td>"+value.userName+"</td>	<td align=\"center\"><input id =\""+value.id+"\" type=\"button\" value=\"Leave\" class=\"startBtn-table\" onclick=\"unjoinGroup('"+value.slug+"','"+value.id+"')\" /></td>	</tr>");
							}
					});
		       }else{
		    	   $("div.teachListTable table").append("<tr><td>No record Found</td><td></td><td></td></tr>");
		       }
				
			});
/*     	}else{
		  '  <c:url value="http://115.248.100.78/webservice.php?method=updatecommunity" var="url">'+
			 ' <c:param name="email" value="${loginEmail}" />'+
			'</c:url>'
			$.getJSON('${url}', function(data) {
				$("div.teachListTable table").html('');
				$("div.teachListTable table").append('<tr><th width="55%">Recommended Groups for You</th><th>Owner Name</th><th>&nbsp</th></tr>');
		       if(data.data.length>0){
					$.each(data.data, function(index,value) {
							if(value.status == 0){
								$("div.teachListTable table").append("<tr><td>"+value.title+"</td>	<td>"+value.userName+"</td>	<td align=\"center\"><input id =\""+value.id+"\" type=\"button\" value=\"Join\" class=\"startBtn-table\" onclick=\"joinGroup('"+value.slug+"','"+value.id+"')\"/></td>	</tr>");
							}else{
								$("div.teachListTable table").append("<tr><td>"+value.title+"</td>	<td>"+value.userName+"</td>	<td align=\"center\"><input id =\""+value.id+"\" type=\"button\" value=\"Leave\" class=\"startBtn-table\" style='background: #d8dce3'/></td>	</tr>");
							}
					});
		       }else{
		    	   $("div.teachListTable table").append("<tr><td>No record Found</td><td></td><td></td></tr>");
		       }
				
			});
    	} */
		
		$('#searchBox').blur(function(event) {
			var searchVal = $(this).val();
			if(searchVal == ''){
				searchVal="method=recentcommunity";
			}else{
				searchVal="method=communitysearch&search="+searchVal;
			}
			  '  <c:url value="${baseURL}webservice.php?'+searchVal+'" var="url">'+
				 ' <c:param name="email" value="${loginEmail}" />'+
				'</c:url>'
			
				$.getJSON('${url}', function(data) {
					$("div.teachListTable table").html('');
					$("div.teachListTable table").append('<tr><th width="55%">Recommended Groups for You</th><th>Owner Name</th><th>&nbsp</th></tr>');
					if(data.data.length>0){
						$.each(data.data, function(index,value) {
								if(value.status == 0){
									$("div.teachListTable table").append("<tr><td>"+value.title+"</td>	<td>"+value.userName+"</td>	<td align=\"center\"><input id =\""+value.id+"\" type=\"button\" value=\"Join\" class=\"startBtn-table\" onclick=\"joinGroup('"+value.slug+"','"+value.id+"')\"/></td>	</tr>");
								}else{
									$("div.teachListTable table").append("<tr><td>"+value.title+"</td>	<td>"+value.userName+"</td>	<td align=\"center\"><input id =\""+value.id+"\" type=\"button\" value=\"Leave\" class=\"startBtn-table\" onclick=\"unjoinGroup('"+value.slug+"','"+value.id+"')\"  /></td>	</tr>");
								}
						});
					}else{
				    	   $("div.teachListTable table").append("<tr><td>No record Found</td><td></td><td></td></tr>");
				       }
				});
		});
		
	      $('.flexslider').flexslider({
	        animation: "slide",
	        start: function(slider){
	          $('body').removeClass('loading');
	        }
	      });
	});
    
	function joinGroup(slug, id)
	{
		if($('#'+id).text() != "Leave")
		var url= '${baseURL}webservice.php?method=forumjoin&email=${loginEmail}&slug='+slug;		
		$.ajax(url, {
      		success: function(data) 
      		{
         		$('#'+id).attr('value','Leave');
         		//$('#'+id).attr('style','background: #d8dce3');
         		$('#'+id).attr('onclick',"unjoinGroup('"+slug+"',"+ id+")");
      		},
		    error: function() {
		         alert('An error occurred');
		    }
   		});
		console.log('${loginEmail}')
	}
	
	function unjoinGroup(slug, id)
	{
		if($('#'+id).text() != "Join")
		var url= '${baseURL}webservice.php?method=forumunjoin&email=${loginEmail}&slug='+slug;		
		$.ajax(url, {
      		success: function(data) 
      		{
         		$('#'+id).attr('value','Join');
         		$('#'+id).removeAttr('style');
         		$('#'+id).removeAttr('onclick');
         		$('#'+id).attr('onclick',"joinGroup('"+slug+"',"+ id+")");
      		},
		    error: function() {
		         alert('An error occurred');
		    }
   		});
		console.log('${loginEmail}')
	}
</script>

</body>
</html>
