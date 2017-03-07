    <spring:eval expression="@propertyConfigurer.getProperty('service.url')" var="baseURL" />
	    <c:url value="${baseURL}community-inner" var="url">
		  <c:param name="useremail" value="${loginEmail}" />
		</c:url>
    <header id="header">
    <div class="container ">
        <div class="logo teacher_logo">
					<a href="<%=request.getContextPath()%>/contributer" title="">
					<%-- <img src="<%=request.getContextPath()%>/NewStyles/images/logo.jpg" alt="Inner Explorer" title="Inner Explorer" /> --%>
					</a>
				</div>
        <div class="hdRight">
                <nav>
                <div data-menu-id="demo-menu" class="menu-toggle-button active"><img src="http://innerexplorer.org/wp-content/themes/compass/images/toggle-menu.jpg" alt=""></div>
               <ul id="demo-menu" class="menu-list">
                       <li><a href="<%=request.getContextPath()%>/contributer" class="font_strong dk_black dsh-t-icon" title="">Dashboard</a></li>
                        <li><a href="<%=request.getContextPath()%>/contributer/campaign" class="font_strong manp-p-icon" title="">Help Us</a></li>
                    </ul>
                </nav>
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
