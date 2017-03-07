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
    <spring:eval expression="@propertyConfigurer.getProperty('service.url')" var="baseURL" />
	    <c:url value="${baseURL}community-inner" var="url">
		  <c:param name="useremail" value="${loginEmail}" />
		</c:url>
    <header id="header">
    <div class="container ">
        <div class="logo">
					<a href="<%=request.getContextPath()%>/donor" title="">
					<%-- <img src="<%=request.getContextPath()%>/NewStyles/images/logo.jpg" alt="Inner Explorer" title="Inner Explorer" /> --%>
					</a>
				</div>
        <div class="hdRight">
        <c:if test="${parentExipre eq 'N'}">
                <nav>
                	<div class="menu-toggle-button" data-menu-id="demo-menu">
						<img src="http://innerexplorer.org/wp-content/themes/compass/images/toggle-menu.jpg" alt="">
					</div>
               <ul id="demo-menu" class="menu-list">
               
               <li><a title="Practice Mindful Awareness at your Home, Choose a playlist and a category as per your need." href="<%=request.getContextPath()%>/donor" class="font_strong dk_black prac-t-icon" title="">Practice</a></li>
               <li><a title="Buy Laurie Grossman's bestselling 'Master of Mindfulness'." href="<%=request.getContextPath()%>/donor/book-microsite" class="font_strong buy-b-icn" title="">Book</a></li>
               <li><a title="Practice Mindfulness using Inner Explorer's Radio." href="<%=request.getContextPath()%>/donor/radio" class="font_strong dk_black rdi-d-icn" title="">Radio</a></li>
               <li><a title="Complementary Activities for Parents to enhance the Home Edition Experience." href="<%=request.getContextPath()%>/donor/parentActivity" class="font_strong act-v-icn" title="">Activity</a></li>
               <li><a title="Share your Subscription or IE Radio with others." href="<%=request.getContextPath()%>/donor/action" class="font_strong share-hd-icn" title="">Share</a></li>
              <%--  <li><a title="See you social connection of Mindfulness over IE." href="<%=request.getContextPath()%>/donor/parentSocialMap" class="font_strong dk_black scl-m-icon" title="">Social Map</a></li>  --%>                      
               <li><a title="Be a Brand Ambassador for local Schools around you." href="<%=request.getContextPath()%>/donor/brand-ambassador-main" class="font_strong dk_black dsh-t-icon" title="">Ambassador</a></li>
               <li><a title="Donate and help schools raise funds to practice mindfulness." href="<%=request.getContextPath()%>/donor/parent-dash-tab" class="font_strong dk_black cmpg-hd-icon" title="">Campaign</a></li>
               <li><a title="Manage your and your Kid's information." href="<%=request.getContextPath()%>/donor/profile" class="font_strong pro-t-icon" title="">Profile</a></li>
                       	<%-- <li class="xtra_nav_margin"><a href="javascript:;" class="font_strong icons_hdr" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/nav-icon-5.png">Community</a></li> --%> 
                         
                        <%-- <li class="xtra_nav_margin"><a href="${url}" class="font_strong icons_hdr" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/nav-icon-com.png">Community</a></li> --%>
                       
                           
                      
                         <%-- <li class="xtra_nav_margin"><a href="<%=request.getContextPath()%>/teacher/manage" class="font_strong icons_hdr" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/nav-icon-7.png">Profile</a></li>
                        <li class="xtra_nav_margin"><a href="<%=request.getContextPath()%>/teacher/practiceHistory" class="font_strong icons_hdr" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/nav-icon-8.png">Practice History</a></li> --%>
                      
                
    
                    </ul>
                </nav>
                </c:if>
                <div class="startRight">
                	<p>Welcome, ${loginName}</p>
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout';" class="startBtn"/>
					</div>
            </div>
    </div>

</header>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-73908394-1', 'auto');
  ga('send', 'pageview');

</script>
