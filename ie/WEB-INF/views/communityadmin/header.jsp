<%-- <header id="header">
        <div class="container ">
            <div class="logo" onclick="location.href = '<%=request.getContextPath()%>/communityadmin';"> <img src="<%=request.getContextPath()%>/NewStyles/images/logo.jpg" alt="Logo" title="logo" /> </div>
            <div class="hdRight">
                <nav>
                    <div class="menu-toggle-button" data-menu-id="demo-menu"><img alt="" src="<%=request.getContextPath()%>/NewStyles/images/toggle-menu.png"></div>
                    <ul id="demo-menu" class="menu-list">
                        <li><a href="<%=request.getContextPath()%>/communityadmin" class="font_strong dk_black" title="">Dashboard</a></li>
                        <li><a href="<%=request.getContextPath()%>/communityadmin/manage-content" class="font_strong" title="">Manage Content</a></li>
                        <li><a href="<%=request.getContextPath()%>/communityadmin/school-listing" class="font_strong" title="">School Listing</a></li>
                        <li class="divider">|</li>
                        <li>Welcome, ${loginName}</li>
    
                    </ul>
                </nav>
                <div class="startRight">
						<input type="button" value="Logout" class="startBtn" onclick="location.href='<%=request.getContextPath()%>/j_spring_security_logout';"/>
					</div>
            </div>
        </div>
    </header> --%>
<header id="header">
	<div class="container ">
		<div class="logo">
			<a href="<%=request.getContextPath()%>/communityadmin" title="">
				<%-- <img src="<%=request.getContextPath()%>/NewStyles/images/logo.jpg" alt="Inner Explorer" title="Inner Explorer" /> --%>
			</a>
		</div>
		<div class="hdRight">

			<nav>
				<div class="menu-toggle-button" data-menu-id="demo-menu">
					<img alt=""
						src="http://innerexplorer.org/wp-content/themes/compass/images/toggle-menu.jpg">
				</div>
				<ul id="demo-menu" class="menu-list">
					<%-- <li class="xtra_nav_margin"> <div class="searchBox">
			<input type="button" id="login" title="Search" class="search_icon login">
			<div class="login_panel">
			  <form id="searchForm" role="search" action="<%=request.getContextPath()%>/communityadmin/searchAllUser" method="get">
				<input type="button" class="searchbar_btn">
				<input type="text" name="s" class="searchbar" placeholder="Search ...">
			  </form>
			</div>
		  </div> </li>  --%>
					<%-- <li id="login" class="xtra_nav_margin">
		  				<a href="<%=request.getContextPath()%>/communityadmin/searchResult" class="font_strong dk_black icons_hdr" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/srch-hdr.png">Search</a>
		  				</li> --%>
		  				<li><a
						href="<%=request.getContextPath()%>/communityadmin/manageProfile"
						class="font_strong manp-p-icon" title="">Manage Profile</a></li>
					<li><a href="<%=request.getContextPath()%>/communityadmin/dashboard"
						class="font_strong dk_black dsh-t-icon" title="">Dashboard</a></li> 
					<li><a
						href="<%=request.getContextPath()%>/communityadmin"
						class="font_strong mng-cls-icon" title="">Manage Users</a></li>
					
					

				</ul>
			</nav>
			<div class="startRight">
				<p>Welcome, ${loginName}</p>
				<input type="button" value="Logout"
					onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout';"
					class="startBtn" />
			</div>
		</div>
	</div>

</header>
<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script', '//www.google-analytics.com/analytics.js',
			'ga');

	ga('create', 'UA-73908394-1', 'auto');
	ga('send', 'pageview');
	
</script>



