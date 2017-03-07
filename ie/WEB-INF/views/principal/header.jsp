
<header id="header">
	<div class="container ">
		<div class="logo">
			<a href="<%=request.getContextPath()%>/principal" title=""> <%-- <img src="<%=request.getContextPath()%>/NewStyles/images/logo.jpg" alt="Inner Explorer" title="Inner Explorer" /> --%>
			</a>
		</div>
		<div class="hdRight">
			<nav>
				<div data-menu-id="demo-menu" class="menu-toggle-button">
					<img
						src="http://innerexplorer.org/wp-content/themes/compass/images/toggle-menu.jpg"
						alt="">
				</div>
				<ul id="demo-menu" class="menu-list">
					<%-- <li class="xtra_nav_margin"><a href="<%=request.getContextPath()%>/principal" class="font_strong dk_black icons_hdr" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/nav-icon.png">Dashboard</a></li> --%>
					 <c:if test="${companyName eq '1'}">
					<li><a href="<%=request.getContextPath()%>/principal"
						class="font_strong dk_black dsh-t-icon" title="">Dashboard</a></li>
					<li><a
						href="<%=request.getContextPath()%>/principal/manageTeachers"
						class="font_strong dk_black mant-p-icon" title="">Manage
							Teachers</a></li>
							</c:if>
					<li><a href="<%=request.getContextPath()%>/principal/campaign"
						class="font_strong manc-p-icon" title="">Manage Campaign</a></li>
					<li><a
						href="<%=request.getContextPath()%>/principal/training1"
						class="font_strong tra-t-icon" title="">Resources</a></li>
					 <c:if test="${companyName eq '1'}">
					<c:if test="${expiryStatus eq 'N'}">
						<li><a
							href="<%=request.getContextPath()%>/principal/practiceProgress"
							class="font_strong prap-p-icon" title="">Practice Progress</a></li>
					</c:if>
					</c:if>
					<%-- <li><a
						href="<%=request.getContextPath()%>/principal/principalSocialMap"
						class="font_strong dk_black scl-m-icon" title="">Social Map</a></li>
					 --%>
					<%-- <li><a
						href="<%=request.getContextPath()%>/principal/community"
						class="font_strong icons_hdr com-t-icon" title="">Social Map</a></li> --%>
					

					<li><a href="<%=request.getContextPath()%>/principal/radio"
						class="font_strong rad-p-icon" title="">Radio</a></li>
					<li><a
						href="<%=request.getContextPath()%>/principal/manageProfile"
						class="font_strong manp-p-icon" title="">Manage Profile</a></li>

				</ul>
			</nav>
			<div class="startRight">
				<p>Welcome ${loginName}</p>
				<input type="button" value="Logout"
					onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout';"
					class="startBtn" />

			</div>

		</div>
	</div>
	<!-- <div id="demo">Feeds</div> -->
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

<%-- <script type="text/javascript">
window.setTimeout('myFunction()',2000);

function myFunction() {
	var url='<%=request.getContextPath()%>/principal/getFeeds';
	 var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("demo").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET", url, true);
	  xhttp.send();
	
	 window.setTimeout('myFunction()',15000); 
}
</script> --%>
