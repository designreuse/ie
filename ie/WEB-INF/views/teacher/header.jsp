<%-- <header id="header">
        <div class="container ">
            <div class="logo" onclick="location.href='<%=request.getContextPath()%>/teacher';"> <img src="<%=request.getContextPath()%>/NewStyles/images/logo.jpg" alt="Logo" title="logo" /> </div>
            <div class="hdRight">
                <nav>
                    <div class="menu-toggle-button" data-menu-id="demo-menu"><img alt="" src="<%=request.getContextPath()%>/NewStyles/images/toggle-menu.png"></div>
                    <ul id="demo-menu" class="menu-list">
                        <li><a href="<%=request.getContextPath()%>/teacher" class="font_strong dk_black" title="">Dashboard</a></li>
                        <li><a href="<%=request.getContextPath()%>/teacher/campaign" class="font_strong" title="">Campaign</a></li>
                        <li><a href="<%=request.getContextPath()%>/teacher/teacher-dash-step1" class="font_strong" title="">Restart Training</a></li>
                        <li><a href="<%=request.getContextPath()%>/teacher/manage" class="font_strong" title="">Manage Profile</a></li>
                        <li class="divider">|</li>
                        <li><a href="#" class="font_strong dk_black" title="">Welcome ${loginName}</a></li>
                        <li>Welcome, ${loginName}</li>
                    </ul>
                </nav>
                <div class="startRight">
						<input type="button" value="Logout" class="startBtn" onclick="location.href='<%=request.getContextPath()%>/j_spring_security_logout';"/>
					</div>
            </div>
        </div>
    </header> --%>
   
    
    
    <c:if test="${companyName eq '1'}">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</c:if>
<c:if test="${companyName eq '2'}">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</c:if>
<c:if test="${companyName eq '3'}">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style-tgi.css">
</c:if>
    
    <spring:eval expression="@propertyConfigurer.getProperty('service.url')" var="baseURL" />
	    <c:url value="${baseURL}community-inner" var="url">
		  <c:param name="useremail" value="${loginEmail}" />
		   <c:if test="${not empty classTeacherRelationId}">
		     <c:param name="mcstatus" value="${classTeacherRelationId}" />
		   </c:if>
		   	<c:if test="${empty classTeacherRelationId}">
		     <c:param name="mcstatus" value="0" />
		   </c:if>
		</c:url>
    <header id="header">
    <div class="container ">
        <div class="logo">
					<a href="<%=request.getContextPath()%>/teacher" title=""></a>
				</div>
        <div class="hdRight">
                <nav>
                <div data-menu-id="demo-menu" class="menu-toggle-button active"><img src="http://innerexplorer.org/wp-content/themes/compass/images/toggle-menu.jpg" alt=""></div>
               <ul id="demo-menu" class="menu-list">
               <!-- <li class="xtra_nav_margin">     <a href="http://innerexplorer.org" title="Home">
			<input type="button" class="home_icon">
           </a></li> -->
           
             <c:if test="${expiryStatus eq 'N'}">
                        <c:if test="${showPractice eq 'Y'}">
                        <li><a href="<%=request.getContextPath()%>/teacher/mindful-practice-new" class="font_strong icons_hdr prac-t-icon" title="">
<%--                         <img src="<%=request.getContextPath()%>/NewStyles/images/practice-icon.png"> --%>
                        Practice Area</a></li>
                        </c:if>
                        </c:if>

                <c:if test="${not empty classTeacherRelationId}">
       
                        
                         <c:if test="${companyName eq '1'}">
                       	<li><a href="<%=request.getContextPath()%>/teacher/training" class="font_strong icons_hdr cam-t-icon" style= "background-image:url('/ie/NewStyles/images/presentation.png')" title="">
                       	 
                       	Launch</a></li>
                       	  </c:if> 
                       	  
                        
                        <c:if test="${classSize gt 1}">
                        <li><a href="<%=request.getContextPath()%>/teacher/change-class" class="font_strong icons_hdr ccls-t-icon" title="">
                        <%-- <img src="<%=request.getContextPath()%>/NewStyles/images/change-class.png"> --%>
                        Change Class</a></li>  
                        </c:if>
                       
                       
                         <li><a href="<%=request.getContextPath()%>/teacher/onboarding" class="font_strong icons_hdr tra-t-icon" title="">
<%--                         <img src="<%=request.getContextPath()%>/NewStyles/images/nav-icon-6.png"> --%>
                        Tools</a></li>
                        
                         <c:if test="${companyName eq '1'}">
                        <li><a href="<%=request.getContextPath()%>/teacher/radio" class="font_strong icons_hdr par-t-icon" title="">
<%--                         <img src="<%=request.getContextPath()%>/NewStyles/images/parent.png"> --%>
                        Parents</a></li>
                        </c:if>
                         <c:if test="${companyName eq '1'}">
                        <li><a href="<%=request.getContextPath()%>/teacher/community" class="font_strong icons_hdr com-t-icon" title="">
                       <%--  <img src="<%=request.getContextPath()%>/NewStyles/images/nav-icon-com.png"> --%>
                        Social Map</a></li>
                        </c:if> 
                     <%--    <c:if test="${companyName eq '2'}">
                        <li><a href="<%=request.getContextPath()%>/teacher/radio" class="font_strong icons_hdr par-t-icon" title="">
                        <img src="<%=request.getContextPath()%>/NewStyles/images/parent.png">
                        Parents</a></li>
                        </c:if> --%>
                          <%-- <li><a href="<%=request.getContextPath()%>/teacher/teacherSocialMap" class="font_strong icons_hdr scl-m-icon" title="">Social Map</a></li> --%>
                       
                       	<c:if test="${companyName eq '1'}">
                       	<li><a href="<%=request.getContextPath()%>/teacher/campaign" class="font_strong icons_hdr cam-t-icon" title="">
<%--                        	<img src="<%=request.getContextPath()%>/NewStyles/images/nav-icon-2.png"> --%>
                       	Campaign</a></li>
                       	  </c:if>
                        </c:if>
                       	
                        <c:if test="${not empty classTeacherRelationId}">
                        <li><a href="<%=request.getContextPath()%>/teacher/practiceHistory" class="font_strong icons_hdr his-t-icon" title="">
                       <%--  <img src="<%=request.getContextPath()%>/NewStyles/images/nav-icon-8.png"> --%>
                        History</a></li>
                          <li><a href="<%=request.getContextPath()%>/teacher/share" class="font_strong icons_hdr pro-t-icon" title=""  style= "background-image:url('/ie/NewStyles/images/friend.png')" >

                     


                       Invite</a></li>
                        <li><a href="<%=request.getContextPath()%>/teacher/manage" class="font_strong icons_hdr pro-t-icon" title="">
<%--                         <img src="<%=request.getContextPath()%>/NewStyles/images/nav-icon-7.png"> --%>
                        Profile</a></li>
                        
                     
                       
                       
                      
                         <c:if test="${companyName eq '1'}">
                        	<li><a href="<%=request.getContextPath()%>/teacher/events" class="font_strong icons_hdr cam-t-icon"  style= "background-image:url('/ie/NewStyles/images/calender.png')" title="">
 <%--                        	<img src="<%=request.getContextPath()%>/NewStyles/images/calender.png"> --%>
                        	Events</a></li>
                        	  </c:if> 
                		</c:if>
    
                    </ul>
                </nav>
                <div class="startRight">
                	<p>Welcome, ${loginName}</p>
                	<c:if test="${companyName eq '1'}">
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout?name=teacher&userIdForLogout=${userIdForLogout}&classTeacherId=${classTeacherRelationId}';" class="startBtn hdr-btn-clr"/>
						</c:if>
						<c:if test="${companyName eq '2'}">
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout?name=teachercrim';" class="startBtn hdr-btn-clr"/>
						</c:if>
						<c:if test="${companyName eq '3'}">
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout?name=teachertgi';" class="startBtn hdr-btn-clr"/>
						</c:if>
					</div>
            </div>
    </div>
 <form
		action="${pageContext.request.contextPath}/teacher/bonusTrack"
		method="GET" id="startClass1">
		<input type="hidden" id="classTeacherRelationId1"
			name="classTeacherRelationId" /> <input type="hidden" id="strtPrac"
			name="strtPrac" value="Y" />
	</form>
</header>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-73908394-1', 'auto');
  ga('send', 'pageview');

</script>
<script type="text/javascript">
var signupstep=${signupstep};
if(signupstep == '1'){
window.location.href="<%=request.getContextPath()%>/teacher/teachersignupStep1";
}
else if(signupstep == '2'){
	window.location.href="<%=request.getContextPath()%>/teacher/teachersignupStep2";
}


</script>
<script type="text/javascript">	

   function startClass1(classTeacherRelationId){
	  //alert("For daily"+classTeacherRelationId)
	   $("#classTeacherRelationId1").val(classTeacherRelationId);
	  
	   /* session.setAttribute("startPractice", "Y"); */
	   $("#startClass1").submit();
   }
   </script>


