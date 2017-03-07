<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server

	response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance

	response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
%>

<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Community</title>

<link rel="stylesheet"
	href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	rel="stylesheet">

<c:if test="${companyName eq '1'}">
	<link rel="icon"
		href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
		type="image/x-icon">
</c:if>
<c:if test="${companyName eq '2'}">
	<link rel="icon"
		href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
		type="image/x-icon">
</c:if>
<c:if test="${companyName eq '1'}">
	<link rel="stylesheet" type="text/css"
		href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</c:if>
<c:if test="${companyName eq '2'}">
	<link rel="stylesheet" type="text/css"
		href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</c:if>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link
	href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/NewStyles/css/forum-style.css"
	rel="stylesheet">

</head>
<style>

.media .media-object {

   max-width: 70px;

   border: 2px solid #d9d9d9

;

   max-height: 70px;

   min-height: 70px;

}

.pull-left {

   float: left;

   padding-top: 35px;

}

.media-body {

   width: 10000px;

   padding-top: 20px;

}

.active1{

background-color: #d9d9d9



}

.tree{

  padding: 6px 10px 0;

}

.test{

  padding: 6px 10px 0;

}

.tree-toggle.nav-header.lbTree > a{    float: left;

   line-height: 17px !important}

   .tab-content {

   padding: 20px 15px;

   border-top: 0 !important;

   border-bottom-right-radius: 0 !important;

   border-bottom-left-radius: 0 !important;

   float: left;

}

.tab-content {

   -moz-border-bottom-colors: none;

   -moz-border-left-colors: none;

   -moz-border-right-colors: none;

   -moz-border-top-colors: none;

   border-bottom-left-radius: 0px;

   border-bottom-right-radius: 0px;

   border-color: -moz-use-text-color #ddd #ddd;

   border-image: none;

   border-style: none solid solid;

   border-width: 0;

   float: left;

   padding: 20px 15px;

}

.mh700{

min-height:700px;

}

.video_upload {

   background: rgba(0, 0, 0, 0) url("images/icon9.png") no-repeat scroll 0 0;

   cursor: pointer;

   display: block;

   height: 24px;

   left: 42px !important;

   position: absolute;

   width: 32px; top:-5px !important

}

.cam_upload{left: 2px !important;

 top:-6px !important }

</style>
<body>
	<%@include file="header.jsp"%>
	<!-- Chat Box -->
	<div class="container mh700">
		<div class="row">
			<div class="col-md-12 text-center" id="ourPrograms">
				<div class="title-main-community">
					<h2>Community</h2>
				</div>
			</div>
			<div
				class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bhoechie-tab-container">
				<!-- Tab Menu -->
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12 bhoechie-tab-menu">
					<div class="list-group">
						<a href="#" class="list-group-item active"> <i
							class="fa fa-wpforms  icon-left tabIco"></i>Channels
						</a>
						<ul class="nav nav-list ulhar">

							<c:forEach var="dtoForumMasters" items="${dtoForumMasters}">
								<c:if test="${dtoForumMasters.forumId eq '4'}">
									<li class="test"><label
										class="tree-toggle nav-header lbTree"> <i
											class="fa fa-building treeIcon"></i><a href="#!"
											id="${dtoForumMasters.forumId}" aria-controls="t1"
											role="tab" data-toggle="tab"
											onclick="getData(${dtoForumMasters.forumId})">${dtoForumMasters.forumName}</a></label>
									</li>
								</c:if>
							</c:forEach>
						</ul>
						<a href="#" class="list-group-item active"> <i
							class="fa fa-wpforms  icon-left tabIco"></i>IE Channels
						</a>
						<ul class="nav nav-list ulhar">

							<c:forEach var="dtoForumMasters" items="${dtoForumMasters}">
								<c:if test="${dtoForumMasters.forumId != '4'}">

									<li class="tree"><label
										class="tree-toggle nav-header lbTree"> <i
											class="fa fa-building treeIcon"></i><a href="#!"
											id="${dtoForumMasters.forumId}" aria-controls="t1"
											role="tab" data-toggle="tab"
											onclick="getData(${dtoForumMasters.forumId})">${dtoForumMasters.forumName}</a></label>
									</li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>
				<!-- Tan=b Menu -->
				<!-- Inner Content Area -->
				<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 bhoechie-tab" style="max-height:650px !important; overflow-y: auto;">
					<div class="bhoechie-tab-content active">

						<div class=" tab-pane fade active in" id="auto_load_div"
							role="tabpanel">
							<br> <br>
							<p style="font-style: italic !important;">Good Morning
								${loginName}, Inner Explorer wishes you a Good Day!</p>
						</div>
					</div>
					<div class="col-md-12 text-center socialMapOuter">
						<div class=" tab-pane fade active in" id="auto_load_div"
							role="tabpanel"></div>
					</div>


				</div>


				<!-- Activity Feeds -->
				<div class="col-md-3 col-lg-3 col-sm-12 col-xs-12 p0">
					<div class="activity-feed">
						<span>Activity Feed</span>
					</div>
					<div class="row msg_container base_sent" id="activityFeedDiv"
						style="max-height: 650px !important; overflow-y:auto !important">
						<table class="table table-striped table-bordered table-hover"
							id="sample_1">
							<%--  <c:forEach var="migrated" items="${migrated}"> --%>
							<!-- <tr class="odd gradeX">
								 <td>
									John has looged in on 23-Dec-2016
								</td> 
							</tr> -->
							<%-- </c:forEach> --%>
						</table>


					</div>
					<!-- End Activity Feeds -->
				</div>
			</div>
		</div>
	</div>


	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<%@include file="../footer.jsp"%>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.counterup.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/waypoints.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/tab.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jquery.vmap.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/maps/jquery.vmap.usa.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/data/jquery.vmap.sampledata.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/jquery-easy-pie-chart/jquery.easy-pie-chart.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.resize.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.pie.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.stack.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.crosshair.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.time.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.axislabels.js"></script>
	<script src="<%=request.getContextPath()%>/NewStyles/js/charts.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.tooltip.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/charts-flotcharts.js"></script>
	<script type="text/javascript">
function formShow(){
 $(".ulhar")[0].style.display="block"
}

function formShow1(){
   $(".ulhar")[0].style.display="none"
}
  
</script>
	<script type="text/javascript">
 	$(document).ready(function () {
    $('#t1').on('click',function(){
      $('#tTab_1').show();
      $('#tTab_2').hide();
      $('#tTab_3').hide();
      $('#tTab_4').hide();
    });
     $('#t2').on('click',function(){   
    	 $('#tTab_2').show();
       $('#tTab_1').hide();
       $('#tTab_3').hide();
       $('#tTab_4').hide();
    });
     $('#t3').on('click',function(){   
    	 $('#tTab_3').show();
          $('#tTab_1').hide();
          $('#tTab_2').hide();
          $('#tTab_4').hide();
       });
     $('#t4').on('click',function(){   
    	 $('#tTab_4').show();
          $('#tTab_1').hide();
          $('#tTab_2').hide();
          $('#tTab_3').hide();
       });
});
 	
 	function getActivityFeedData(){
 		$("#sample_1").html('');		
		var url='<%=request.getContextPath()%>/teacher/getActivityFeedData';
		$.ajax({
			url:url,
			method:'GET',
			async :false,
			cache:false,
			success:function(response){
				var divData = '';
          		$.each( response.modelMap.dtoUsers, function(index,value) {
          			divData+='<tr><td><b style="color:#5a5a5a; font-size:15px;">'+value.teacherName+'</b> has logged in on <b style="color:#5a5a5a; font-size:15px;">'+value.uCurrentDate+ '</b></td></tr>';
				}); 	
                $("#sample_1").html(divData);              
				}
		});
 	}
</script>

	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$("#header").sticky({
				topSpacing : 0
			});
			$.daisyNav();
		});
	</script>

	<script type="text/javascript">
        $(document).ready(function(){    
          $("[data-toggle=tooltip]").tooltip();
       
         $("div.bhoechie-tab-menu>div.list-group>a").click(function(e) {
            e.preventDefault();
            var index = $(this).index();
            $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass("active");
            if(index==0){
               $("div.bhoechie-tab>div.bhoechie-tab-content").eq(0).addClass("active");
            }
            else{
              $("div.bhoechie-tab>div.bhoechie-tab-content").eq(index-2).addClass("active");
            }
        });
          });
</script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
	<script type="text/javascript">
	
  $(document).ready(function() {
	getActivityFeedData();
	//setInterval(getActivityFeedData,10000);
	var showChar = 50;
    var ellipsestext = "...";
    var moretext = "more";
    var lesstext = "less";
    $('.more').each(function() {
      var content = $(this).html();

      if(content.length > showChar) {

        var c = content.substr(0, showChar);
        var h = content.substr(showChar-1, content.length - showChar);

        var html = c + '<span class="moreelipses">'+ellipsestext+'</span>&nbsp;<span class="morecontent"><span>' + h + '</span>&nbsp;&nbsp;<a href="" class="morelink">'+moretext+'</a></span>';

        $(this).html(html);
      }

    });

    $(".morelink").click(function(){
      if($(this).hasClass("less")) {
        $(this).removeClass("less");
        $(this).html(moretext);
      } else {
        $(this).addClass("less");
        $(this).html(lesstext);
      }
      $(this).parent().prev().toggle();
      $(this).prev().toggle();
      return false;
    });
  });
</script>
	<script type='text/javascript'>        
    $(document).ready(function() {
    
        $('.tree-toggle').click(function () {
              $(this).parent().children('ul.tree').toggle(200);
            });
            $(function(){
            $('.tree-toggle').parent().children('ul.tree').toggle(200);
            })          
    });
</script>
	<!-- java Script -->
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/libs/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$("[data-toggle=tooltip]").tooltip();
			var postTextData;
			
			//$("#test11")[0].disabled=true;
		});
		function showTab(current,max){
			for (i=1;i<=max;i++){
			//getMyHTMLElement('tab' + i).style.display = 'none';
			getMyHTMLElement('mtab' + i).className = '';
			}
			//getMyHTMLElement('tab' + current).style.display = '';
			getMyHTMLElement('mtab' + current).className = 'selected';
			}
		$("div.bhoechie-tab-menu>div.list-group>a").click(
				function(e) {
					e.preventDefault();
					var index = $(this).index();
					 $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass(
							"active");
					$("div.bhoechie-tab>div.bhoechie-tab-content").eq(index)
							.addClass("active"); 
					if(index==0){
					      $("div.bhoechie-tab>div.bhoechie-tab-content").eq(0).addClass("active");
			            }
			            else{
			              $("div.bhoechie-tab>div.bhoechie-tab-content").eq(index-2).addClass("active");
			            }
				});
	</script>
	<script>
      function auto_load(){
        $.ajax({
          url: '<%=request.getContextPath()%>/teacher/getText',
          cache: false,
          success: function(data){
          } 
        });
      }
 
      $(document).ready(function(){
      });
 
      //Refresh auto_load() function after 10000 milliseconds
     // setInterval(auto_load,10000);
   </script>
	<script type="text/javascript">

	function getData(forumId){
		$("#auto_load_div").html('');
	
		var url='<%=request.getContextPath()%>/teacher/getForum';
		$.ajax({
			url:url,
			method:'GET',
			async :false,
			data:{forumId:forumId},
			cache:false,
			success:function(response){
				
				var divData = '';
				divData+='<div class="comment-tabs custom-comment-tab">'+
                '<ul class="nav nav-tabs" role="tablist">'+
            '<li class="active"><a href="#most-recent" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Most Recent</h4></a></li>'+
        '</ul>'+            
        '<div class="tab-content tab-chat-box "><span id="hello" style="color:red; display:none;">Please enter some text to post.</span>';
			/* divData+='<nav aria-label="Page navigation">'+
            '<ul class="pagination pull-right custom-pagination">'+
            '<li>'+
             ' <a href="#" aria-label="Previous">'+
              '  <span aria-hidden="true">&laquo;</span>'+
              '</a>'+
            '</li>'+
            '<li class="active"><a href="#">1</a></li>'+
            '<li>'+
            '  <a href="#" aria-label="Next">'+
             '   <span aria-hidden="true">&raquo;</span>'+
              '</a>'+
            '</li>'+
          '</ul>'+
      '</nav>'+
      '<div class="clear1"></div>'; */
      
      divData+='<div class="widget-area no-padding blank">'+
      ' <div class="status-upload">'+
         '<!--<form name="topic_form" id="topic_form" action="savePost" method="POST"> -->'+
        '   <textarea placeholder="Discussion Topic" name="postText" id="postText"></textarea>'+
         '  <ul>'+
          /* '   <li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Audio"><i class="fa fa-music"></i></a></li>'+ */
             '  <li><div class="photoIcon"><div class="cam_upload" style="background-image:url(/ie/NewStyles/images/video_socialMap.png)"><input required="required" name="file1" type="file"  id="videoPath" onchange="copyVideoName();" /></div></div></li>'+
           /* '  <li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Sound Record"><i class="fa fa-microphone"></i></a></li>' +*/
           '  <li><div class="photoIcon"><div class="video_upload" style="left: 10%; background-image:url(/ie/NewStyles/images/image_socialMap.png)"><input required="required" name="file" type="file"  id="imagePath" onchange="copyImageName();" /></div></div></li>'+
          ' </ul>'+
          ' <input id="test11" type="button" value="POST" title="Post" class="btn btn-success green pull-right" onclick="SaveTopic('+forumId+')" ></input>'+
        ' <!-- </form> -->'+
      ' </div><!-- Status Upload  -->'+
    ' </div>';
  
    divData+='</div></div>';
          
          $.each( response.modelMap.dtoForumTopics, function(index,value) {
         
             divData+='<div class="tab-pane active" id="most-recent">';  
				//most-recent div
				divData+='<ul class="media-list"><li class="media"><a class="pull-left" href="#">';
				if(value.profilePic!=''){
					if(value.profilePic!=undefined){
						
						divData+='<img class="media-object img-circle" src="<%=request.getContextPath()%>/NewStyles/images/teacher-profile/'+value.profilePic+'" alt="profile">';
						}
					
					else{
						divData+='<img class="media-object img-circle" src="<%=request.getContextPath()%>/NewStyles/images/teacher-profile/user.png" alt="profile">';
					}
				}
				else{
					divData+='<img class="media-object img-circle" src="<%=request.getContextPath()%>/NewStyles/images/teacher-profile/user.png" alt="profile">';
				}
				
				
				
				
				divData+='</a> <div class="media-body"> <div class="well well-lg"> <h4 class="media-heading text-uppercase reviews">' +value.userName+
				'</h4><ul class="media-date text-uppercase reviews list-inline">';
				
				 if(value.topicText.startsWith("img")){
	                    divData+='<li class="dd" id="createdDate">'+value.createdDate+'</li>'+
                                  '</ul><p class="media-comment" id="topicText">'+
	                   '<img class="media-object" style="max-width:2000px" src="<%=request.getContextPath()%>/NewStyles/images/forum-profile/'+value.topicText.substring(3 )+'"  alt="profile"></img>'+
	                   '<a href="<%=request.getContextPath()%>/NewStyles/images/forum-profile/'+value.topicText.substring(3 )+'" target="_blank">Click to Open</a>'+
	                   '</p>';    
	                }
	                else if(value.topicText.startsWith("vid")){
	                    divData+='<li class="dd" id="createdDate">'+value.createdDate+'</li>'+
	                   '</ul><p class="media-comment" id="topicText">'+
	                   '<video class="media-object" style="max-width:2000px" src="<%=request.getContextPath()%>/NewStyles/images/forum-profile/'+value.topicText.substring(3)+'"  alt="profile"></video>'+
	                   '<a href="<%=request.getContextPath()%>/NewStyles/images/forum-profile/'+value.topicText.substring(3 )+'" target="_blank">Play</a>'+
	                   '</p>';    
	                }
	                else{
	                    divData+='<li class="dd" id="createdDate">'+value.createdDate+'</li>'+
	                                        '</ul><p class="media-comment" id="topicText">'+value.topicText+
	                                        '</p>';    
	                                    }
				
                divData+='</div> </div> </li> <div class="collapse" id="replyOne"><ul class="media-list">'+
                '<li class="media media-replied"><a class="pull-left" href="#">'+
                ' <img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/ManikRathee/128.jpg" alt="profile">'+
                '</a></li><li class="media media-replied"> <div class="widget-area no-padding blank status-upload-inner">'+
                '<div class="status-upload">'+
                                '<form name="comment_form" id="comment_form" action="saveComment" method="POST">'+
                                    '<textarea placeholder="Comment" name="Comment"></textarea>'+
                                    '<ul>'+
                                        '<li><a title="" data-toggle="tooltip"'+
                                            'data-placement="top" data-original-title="Audio"><i'+
                                             '   class="fa fa-music"></i></a></li>'+
                                        '<li><a title="" data-toggle="tooltip"'+
                                         '   data-placement="top" data-original-title="Video"><i'+
                                          '      class="fa fa-video-camera"></i></a></li>'+
                                        '<li><a title="" data-toggle="tooltip"'+
                                         '   data-placement="top"'+
                                          '  data-original-title="Sound Record"><i'+
                                           '     class="fa fa-microphone"></i></a></li>'+
                                        '<li><a title="" data-toggle="tooltip"'+
                                         '   data-placement="top" data-original-title="Picture"><i'+
                                          '      class="fa fa-picture-o"></i></a></li>'+
                                    '</ul>'+
                                    '<button type="submit" class="btn btn-success green">'+
                                     '   <i class="fa fa-share"></i> Reply'+
                                    '</button>'+
                                '</form>'+
                            '</div>'+
                        '</div>'+
                    '</li>'+
                '</ul> </div>  </li> </ul> </div>';
				});
                
                	
				
                $("#auto_load_div").html(divData);              
				}
		});
	}	

	
	function SaveTopic(forumId){
		if($("#postText").val().trim()==""){
			$("#hello")[0].style.display="block";
		}
		else{
			var url='<%=request.getContextPath()%>/teacher/saveTopic';
			postTextData = $("#postText").val();
			//imageContent = $("#imagePath").val();

			
			$.ajax({
				url:url,
				method:'POST',
				async :false,
				data:{postText:postTextData, forumId:forumId},
				cache:false,
				success:function(response){
					getData(forumId);
				}
			});
		}
		
	
	} 

	</script>
	<script type="text/javascript">
	function getHistoryForTeacher(){
		$("#sample_16").html('');
		
		 var url='<%=request.getContextPath()%>/teacher/getHistoryForTeacher';
		$.ajax({
			url:url,
			method:'GET',
			async :true,
			success:function(response){
				if(response!=null){
					
					$("#audioFeedbackDetail").show();

					 var audioDetails='';
					 audioDetails+='<thead><tr><th><strong>Email</strong></th>'+
									 '<th><strong>Program Name</strong></th>'+
									 '<th><strong>Modified Date</strong></th>'+
									 '<th><strong>Audio Name</strong></th>'+
									 '<th><strong>Is Complete</strong></th></thead><tbody>';
						
						$.each(response.modelMap.dtoUsers, function(index,value) {
							
							audioDetails+='<tr><td>'+value.email+'</td>'+
											'<td>'+value.programName+'</td>'+
											'<td>'+value.timeZone+'</td>'+
											'<td>'+value.audioName+'</td>'+
											'<td>'+value.isComplete+'</td></tr>';
						});
			    	
						audioDetails+='</tbody>';
					 
						$("#sample_16").html(audioDetails);
					    /* $("#sample_16").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15}); */
					
					     $.fancybox({
							 'minWidth':1000,
							 'minHeight':500,
						     'autoScale': true,
						     'autoDimensions': true,
						     'centerOnScroll': true,
						     'href' : '#audioFeedbackDetail'
						  }); 
			}
			
			}
		});
	}

	function getHistoryForParent(){
		$("#sample_15").html('');
		
		 var url='<%=request.getContextPath()%>/teacher/getHistoryForParent';
		$.ajax({
			url:url,
			method:'GET',
			async :true,
			success:function(response){
				if(response!=null){
					
					$("#audioFeedbackDetailForParent").show();

					 var audioDetails='';
					 audioDetails+='<thead><tr><th><strong>Email</strong></th>'+
									 '<th><strong>Modified Date</strong></th>'+
									 '<th><strong>Audio Name</strong></th>'+
									 '<th><strong>Is Complete</strong></th></thead><tbody>';
						
						$.each(response.modelMap.dtoUsers, function(index,value) {
							
								
							audioDetails+='<tr><td>'+value.email+'</td>'+
											'<td>'+value.timeZone+'</td>'+
											'<td>'+value.audioName+'</td>'+
											'<td>'+value.isComplete+'</td></tr>';

						});
						audioDetails+='</tbody>';
					 
						$("#sample_15").html(audioDetails);
					     $.fancybox({
							 'minWidth':1000,
							 'minHeight':500,
						     'autoScale': true,
						     'autoDimensions': true,
						     'centerOnScroll': true,
						     'href' : '#audioFeedbackDetailForParent'
						  }); 
			}
			
			}
		});
	}
	
	function copyVideoName(){
              var fullPath  = $("#videoPath").val();
               if (fullPath) {
                     var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
                     var filename = fullPath.substring(startIndex);
                     if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
                             filename = filename.substring(1);
                     }
                     filename="vid"+filename;
                     saveVideo(filename);
           }

        }
	
	  function saveImage(filename){
		  var forumId=$(".active1").find("a")[0].id;  
		  var data = new FormData();
		  var fullPath  = $("#imagePath").val();
			data.append('file', jQuery('#imagePath')[0].files[0]);
			data.append('forumId',forumId);
			data.append('fullPath',fullPath);
			//alert("imagePath"+fullPath);
		  $.ajax({
		        url: '<%=request.getContextPath()%>/teacher/uploadImage',
				data: data,
		        contentType: false,
		        processData: false,
		    enctype: 'multipart/form-data',
		        type: 'POST',
		        success: function(data){
		                  // alert(data);
		        	getData(forumId);
		                }
		       });
	    	}  
	  
	  function saveVideo(filename){
		  var forumId=$(".active1").find("a")[0].id;  
		  var data = new FormData();
			data.append('file1', jQuery('#videoPath')[0].files[0]);
			data.append('forumId',forumId);
		  $.ajax({
		        url: '<%=request.getContextPath()%>/teacher/uploadVideo',
				data: data,
		        contentType: false,
		        processData: false,
		    enctype: 'multipart/form-data',
		        type: 'POST',
		        success: function(data){
		                  // alert(data);
		        	getData(forumId);
		                }
		       });
	    	}  
	  
	  function copyImageName(){
		         var fullPath  = $("#imagePath").val();
		           if (fullPath) {
		                 var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
		                 var filename = fullPath.substring(startIndex);
		                 if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
		                         filename = filename.substring(1);
		                 }
		                 //filename="img"+filename;
		                 saveImage(filename);
		       } 
		    }
	</script>
	<script type='text/javascript'>//<![CDATA[
$(window).load(function(){
$('.tree').click(function() {
    $(this).addClass('active1').siblings().removeClass('active1');
    $('.test').removeClass('active1');
});
$('.test').click(function() {
   $(this).addClass('active1');
   $('.tree').siblings().removeClass('active1');
});
});
//]]>

</script>

</body>
</html>
