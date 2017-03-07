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
<title>Search</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">

 	<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	
	<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/select2/select2_metro.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
	
	<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/> 
</head>

<body>
	<div class="wrapper">
		<%@include file="header.jsp" %>
		<%-- <section class="slider-inner">
			<img src="<%=request.getContextPath()%>/NewStyles/images/slider1.jpg" alt="Slider" /> 
		</section> --%>

		<section class="tehDsh-step1 ">
			<div class="container">
		
       <div class="pracProgress_hdr">
            <h2>Search</h2>
            <div class="green_line_btm"></div>

          </div>
				
				<div class="clr"></div>
				
				<div class="misc_content pbtm_0">
	            <div class="function-list padding-top-zero">
                	<ul>
                        <li class="new-dshbrd wdth50">
                        	<div class="left-fun-mini wdth50" style="cursor: pointer;" onclick="setSearchType('All');">
                            	<h3 class="mtop10">${totalCount}</h3>
                                <p>Total Count</p>
                            </div>
                            <div class="mid-fun-mini wdth50" style="cursor: pointer;border-right: none !important;" onclick="setSearchType('IE');">
                            	<h3 class="mtop10">${ieCounter}</h3>
                                <p>IE Count</p>
                            </div>
                         <%--    <div class="right-fun-mini wdth33" style="cursor: pointer;" onclick="setSearchType('NoneIE');">
                            	<h3 class="mtop10">${nonIeCounter}</h3>
                                <p>Non IeCount</p>
                            </div> --%>
                        </li>
                    </ul>
                </div>
				</div>
				
				<form id="searchUserForm"  action="<%=request.getContextPath()%>/superadmin/searchResult" method="get">
				<input type="hidden" readonly="readonly" value="All" name="searchType" id="searchType"/>
				<div class="srch-srch-bar">
				<div class="containerSmall">
				<div class="techForm srch_bar_cntr">
					<label class="wdth_auto">Search</label>
					<div class="step4-textInput">
						<div class="contact-row">
							<div class="outer-field-wrap">
								<div class="outer-field">
									<input type="text" placeholder="keyword" name="searchKey" value="${sKeyword}" id="searchBox" data-toggle="tooltip" title="Type School Name or Person Name">
								</div>
							</div>
						</div>
					</div>
					
					<input type="button" value="Go" class="search_btnicon" onclick="searchKeyword();"> 
					<!-- <input type="submit" value="Go" class="search_btnicon" > -->
				</div>
				</div>
				</div>
				</form>
				
				
				    
					
				
				<div class="teachListTable ur_grid ur_grid_pop">
					<table class="table table-striped table-hover table-bordered" id="sample_1">
					<!-- <table cellpadding="0" cellspacing="0" id="searchResultTable"> -->
					<thead>
						<tr>
							<th ></th>
							<th >Description</th>
							<th ></th>
							<th >City</th>
							<th >Zip</th>
							<th >Member Since</th>
							<th >IE Affiliation</th>
							<th >Contact</th>
							
						</tr>
						</thead>
						<c:forEach var="dtoSearchUsers" items="${dtoSearchUsers}">
						<tr>
						<c:if test="${dtoSearchUsers.info eq 'School'}">
						<td><img class="srchImgUser"  src="<%=request.getContextPath()%>/NewStyles/images/school-default.jpg"/></td>
						</c:if>
						
						<c:if test="${dtoSearchUsers.info eq 'Teacher'}">
						<td><img class="srchImgUser"  src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png"/></td>
						</c:if>
						
						<c:if test="${dtoSearchUsers.info eq 'Master'}">
						<td><img class="srchImgUser"  src="<%=request.getContextPath()%>/NewStyles/images/datarecord.png"/></td>
						</c:if>
						
						<td>${dtoSearchUsers.name}</td>
						<c:if test="${dtoSearchUsers.info eq 'School'}">
						<td><img class="srchImgLogo"  src="<%=request.getContextPath()%>/NewStyles/images/ie-logo-txt-new.png"/></td>
						</c:if>
						
						<c:if test="${dtoSearchUsers.info eq 'Teacher'}">
						<td></td>
						</c:if>
						
						<c:if test="${dtoSearchUsers.info eq 'Master'}">
						<td></td>
						</c:if>
						
						<td>${dtoSearchUsers.city}</td>
						<td>${dtoSearchUsers.zip}</td>
						<td>${dtoSearchUsers.joined_since}</td>
						
						
						<c:if test="${dtoSearchUsers.info eq 'Master'}">
                                         <td> </td>
                                         </c:if>
                                         <c:if test="${dtoSearchUsers.info ne 'Master'}">
                                         <td>${dtoSearchUsers.affiliationType}</td>
                                         </c:if>

						
						
						
						<c:if test="${dtoSearchUsers.info eq 'Master'}">
						<td>${dtoSearchUsers.masterAddress} </td>
						</c:if>
						<c:if test="${dtoSearchUsers.info ne 'Master'}">
						<td>
						<a href="javascript:showContactInfo(${dtoSearchUsers.userId});"><img src="<%=request.getContextPath()%>/NewStyles/images/msg-icn.png"/></a>
						</td>
						</c:if>
						
						
						</tr>
						</c:forEach>
						
					
					</table>
				</div>
				
			</div>
		</section>
	</div>
	
	
	<!-- Send Email Popup  Contact Form -->
<div  id="sendEmailToContactPopup" class="playback-Popup" style="display: none;">
           <div class="hdr hdr_new padding-btm">
            <form name="contactemailForm" id="contactemailForm" >
            <div class="popup-form popupSend-form">
        	<p>Send Email</p>
            <div class="pop-form-field borderNone">
				<input type="text" placeholder="Subject" id="title" name="title" />
			</div>
            <div class="pop-form-field">
				<textarea placeholder="Write Message" id="Contactmessage" name="Contactmessage" class="Mbtm0"></textarea>
			</div>
            <div class="btns-outer mtop10">
				<input class="submit-btn fl" type="button" value="SEND" onclick="submitContactEmail();">
			</div>
        </div>
            </form>
        
        </div>
      <input type="hidden" name="contactPersonId" id="contactPersonId" readonly="readonly"/>  
</div>
	
	
	
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %> 
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
   <script src="<%=request.getContextPath()%>/NewStyles/js/bootstrapcdn.js"></script>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script> 
   <script type="text/javascript">	
	jQuery(document).ready
	(function($){
		
		$('[id^=sample_1]').dataTable({"aLengthMenu": [[15, 50, 100, -1],[15, 50, 100, "All"] ],columnDefs: [ {
	        orderable: false,
	        className: 'select-checkbox',
	        targets:   0
	    } ],
	    language: {
	        search: "_INPUT_",
	        searchPlaceholder: "Find..."
	    },
	    select: {
	        style:    'os',
	        selector: 'td:first-child'
	    },
	    order: [[ 1, 'asc' ]], "iDisplayLength": 15});
		
		$("#header").sticky({ topSpacing: 0 });
		$('[data-toggle="tooltip"]').tooltip();
		$.daisyNav();
	});
	</script>
	
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
   <script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>

   <script type="text/javascript">
    $(function(){
      
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
	
	/* function Group(title, slug, id) {
    this.title = title;
    this.slug = slug;
    this.id = id;
	} */



	function searchKeyword(){
		
		var searchKey = $("#searchBox").val();
		
		/* For Solr and database query */
		var url='<%=request.getContextPath()%>/searchByKeyword';
	
		/* For Solr only query */
		var url='<%=request.getContextPath()%>/searchSolrByKeyword';
 		$.ajax({
 			url:url,
 			method:'GET',
 			async :true,
 			cache:false,
 			data: {searchKey:searchKey},
 			success:function(response){
 				
 				if(response != null  && response.modelMap.dtoSolrSearchs!=null){
 				var searchResult='';
 				searchResult+='<thead><tr><th></th><th>Description</th><th></th><th>Member Since</th>'+
				'<th>IE Affiliation</th><th >Contact</th>'+
				'</tr></thead>';
				
				$.each( response.modelMap.dtoSolrSearchs, function(index,value) {
					
					searchResult+='<tr><td >';
					if(value.info=="School"){
						searchResult+='<img class="srchImgUser"  src="<%=request.getContextPath()%>/NewStyles/images/school-default.jpg"/></td>';
					}
					else{
						searchResult+='<img class="srchImgUser"  src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png"/></td>';
					}
					
					
					
					searchResult+='<td >'+value.name+'</td>'+
					'<td >';
					if(value.info=="School"){
						searchResult+='<img class="srchImgLogo"  src="<%=request.getContextPath()%>/NewStyles/images/ie-logo-txt-new.png"/></td>';
					}
					searchResult+='<td >'+value.joined_since+'</td>'+
					'<td>'+value.affiliationType+'</td>'+
					'<td ><a href="javascript:showContactInfo('+value.userId+');"><img src="<%=request.getContextPath()%>/NewStyles/images/msg-icn.png"/></a></td>'+
					'</tr>';
				});
	    	
				searchResult+='</tbody>';
	    	
		$("#sample_1").html(searchResult);
 				}
 				
 				}
 		});
		
	} 
	
	function showContactInfo(id){
		 $.fancybox({
			 'minWidth':300,
			 'padding':45,
			 'minHeight':150,
		     'autoScale': true,
		     'autoDimensions': true,
		     'centerOnScroll': true,
		     'href' : '#sendEmailToContactPopup'
		  });
		 $("#contactPersonId").val(id);
	}
	
	  function submitContactEmail(){
		  var userId=$("#contactPersonId").val();
		  var title=$("#title").val();
		  var message=$("#Contactmessage").val();
		  if($.trim(title)!="" && $.trim(message)!=""){
		  var url='<%=request.getContextPath()%>/sendEmailToSearchUser';
			$.ajax({
				url:url,
				method:'POST',
				async :false,
				data:{userId:userId,title:title,message:message},
				cache:false,
				success:function(response){
					$.fancybox.close();
					}
			});
		  }
	  }
	  
	  
	$("#searchBox").keypress(function(event) {
		    if (event.which == 13) {
		    	submitSearchForm();
		    }
		}); 
	  
	function submitSearchForm(){
		$("#searchUserForm").submit();
	}
	
	function setSearchType(searchTypeVal){
		$("#searchType").val(searchTypeVal);
		$("#searchUserForm").submit();
	}
	
</script>

</body>
</html>
