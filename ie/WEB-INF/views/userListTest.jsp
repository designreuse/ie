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
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>test Coverage</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link
	href="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jqvmap.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/select2/select2_metro.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
<style type="text/css">
#map_wrapper {
	height: 325px;
}

#map_wrappe {
	height: 625px;
}

#map_canvas {
	width: 100%;
	height: 100%;
}

#map_canva {
	width: 100%;
	height: 100%;
}

.controls {
	float: right;
}

.dataTables_info {
	text-align: left !important;
}
</style>
</head>

<body>
	<div class="wrapper">
		<!--inner_wrapper starts-->
		<div class="container">
		
		<div class="pracProgress_hdr">
            <h2>Users List</h2>
               <div class="green_line_btm">
               </div>
			   <div class="clr"></div>
     	</div>
     	
			<div class="ur_grid ur_grid_pop p-font14">

				<table class="table table-striped table-hover table-bordered">
					<thead>
						<tr>
							<th>Server</th>
							<th>Sessions</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>A</td>
							<td>${bSessions}</td>
						</tr>
						<tr>
							<td>B</td>
							<td>${bSessions}</td>
						</tr>
					</tbody>
				</table>



				<table class="table table-striped table-hover table-bordered"
					id="sample_1">
					<thead>
						<tr>
							<th>User Email</th>
							<th>User Name</th>
							<th>Current Server</th>
							<th>Move to A/B</th>

							<!-- 								        <th style="display:none;"></th> -->
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${userList}" var="user" varStatus="count">
							<tr>
								<td>${user.email}</td>
								<td>${user.username}</td>
								<td id="list${count.index}"><c:forEach items="${savedlUserList}" var="list2"
										varStatus="counter">
										<c:if test="${list2[0] eq user.userId}">
									              ${list2[1]}
									      </c:if>
									</c:forEach></td>
								<td><select id="selectValue${count.index}"
									name="selectValue${count.index}" onchange="saveType(this,'list${count.index}')">
										<option value="0">TYPE</option>
										<option value="${user.userId}">A</option>
										<option value="${user.userId}">B</option>
								</select></td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<%-- 	<%@include file="footer.jsp" %> --%>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jquery.vmap.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/maps/jquery.vmap.usa.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/data/jquery.vmap.sampledata.js"
		type="text/javascript"></script>
	<!-- <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script> -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/select2/select2.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script>
	<script language="javascript" type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/tab.js"></script>
	<script type="text/javascript">
$(function(){
	$("#header").sticky({ topSpacing: 0 });
	$('[id^=sample_1]').dataTable({"aLengthMenu": [[15, 50, 100, -1],[15, 50, 100, "All"] ],columnDefs: [ {
        orderable: false,
        className: 'select-checkbox',
        targets:   0
    } ],
    select: {
        style:    'os',
        selector: 'td:first-child'
    },
    order: [[ 1, 'asc' ]], "iDisplayLength": 15});
	
});
function saveType(sel,index){
	
	var type =  sel[sel.selectedIndex].text;
	var typeUserId =  sel[sel.selectedIndex].value;
	//alert(typeState);
	//if(parseInt(typeState)!==0){
	$.ajax({
		url : "<%=request.getContextPath()%>/saveTestUserType",
		data : {type:type,
			   typeUserId:typeUserId
		},
		method : 'POST',
	//	async:false,
		success : function(result) {
		//	location.reload();
		$("#"+index).text(type);
		}
	});
	//}
}

</script>


</body>
</html>
