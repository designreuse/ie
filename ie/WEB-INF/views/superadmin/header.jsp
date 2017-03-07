<c:if test="${companyName eq '1'}">
	<header id="header">
		<div class="container ">
			<div class="logo">
				<a href="<%=request.getContextPath()%>/superadmin" title=""> <%-- <img src="<%=request.getContextPath()%>/NewStyles/images/logo.jpg" alt="Inner Explorer" title="Inner Explorer" /> --%>
				</a>
			</div>
			<div class="hdRight">

				<nav>
					<div class="menu-toggle-button" data-menu-id="demo-menu">
						<img alt=""
							src="http://innerexplorer.org/wp-content/themes/compass/images/toggle-menu.jpg">
					</div>
					<ul id="demo-menu" class="menu-list">
						<li><a
							href="<%=request.getContextPath()%>/superadmin/usamapcoverage"
							class="font_strong dk_black usa-icon" title="">Coverage</a></li>
						<li><a
							href="<%=request.getContextPath()%>/superadmin/financialDashboard"
							class="font_strong dk_black fin-a-icon" title="">Financials</a></li>
						<li><a
							href="<%=request.getContextPath()%>/superadmin/school-listing"
							class="font_strong sch-a-icon" title="">Schools</a></li>
						<li><a
							href="<%=request.getContextPath()%>/superadmin/manage-content"
							class="font_strong mant-p-icon" title="">Content</a></li>
						
                        	<li><a href="<%=request.getContextPath()%>/superadmin/manageEvents" 
                        	class="font_strong cam-t-icon"  style= "background-image:url('/ie/NewStyles/images/calender.png')" 
                        	title="">Events</a></li>
                        	 
						<li><a
							href="<%=request.getContextPath()%>/superadmin/content-playback"
							class="font_strong dly-a-icon" title="">Daily Stats</a></li>
						<li><a
							href="<%=request.getContextPath()%>/superadmin/peoples-voice"
							class="font_strong dash-p-icon" title="">Supporters</a></li>
						<li><a
							href="<%=request.getContextPath()%>/superadmin/campaign"
							class="font_strong init-a-icon" title="">Initiative</a></li>
						<li><a
							href="<%=request.getContextPath()%>/superadmin/migration"
							class="font_strong mng-cls-icon" title="">Manage Users</a></li>
						<li><a
							href="<%=request.getContextPath()%>/superadmin/customerEngagement"
							class="font_strong cus-eng-icon" title="">Customer Engagement</a></li>
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
</c:if>
<c:if test="${companyName eq '2'}">
	<header class="crimheader active-livingheader">
		<div class="crimwrapper">
			<section>
				<a href="http://crim.org" class="col-md-3"><img
					src="http://crim.org/wp-content/themes/crime/images/logo.png" /></a>
				<div class=" col-md-6 text-right">
					<ul id="demo-menu" class="menu-list pull-right"
						style="padding: 20px 0">
						<li style="padding: 0px 10px;"><a
							href="<%=request.getContextPath()%>/superadmin/migration-crim"
							class="font_strong mant-p-icon" title="">Manage</a></li>
						<li style="padding: 0px 10px;"><a
							href="<%=request.getContextPath()%>/superadmin/dashboard-crim"
							class="font_strong dash-p-icon" title="">Dashboard</a></li>
							<li><a
							href="<%=request.getContextPath()%>/superadmin/manage-content-crim"
							class="font_strong mant-p-icon" title="">Content</a></li>
					</ul>
				</div>
			</section>
			<div class="col-md-3" style="float: right; padding-bottom: 10px;">
				<p style="color: white;" class="text-right">Welcome,
					${loginName}</p>
				
				<input type="button" value="Logout"
					onClick="location.href='http://crim.org';"
					class="startBtn crimLogout" />
					
			</div>
		</div>
	</header>
</c:if>
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



