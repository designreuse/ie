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

<!-- Bootstrap core CSS -->
<!--     <link href="css/bootstrap.min.css" rel="stylesheet">
 -->
<!--     
 <link href="css/forum-style.css" rel="stylesheet">
      -->
<link rel="stylesheet" href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">
<%-- <link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/css/font-awesome.min.css">--%>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">



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
	<link
	href="<%=request.getContextPath()%>/NewStyles/css/forum-style.css"
	rel="stylesheet">


</head>
<!-- NAVBAR
================================================== -->
<body>
	<%@include file="header.jsp"%>

	<!-- Chat Box -->
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center" id="ourPrograms">
                    <div class="title-main-community">
                      <h2>Community</h2>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bhoechie-tab-container">
				<!-- Tab Menu -->
                      <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12 bhoechie-tab-menu">
                        <div class="list-group">
                          <a href="#" class="list-group-item active">
                           <i class="fa fa-wpforms pull-left icon-left tabIco"></i>Forums                            
                          </a>
                     	<ul class="nav nav-list ulhar">
                            <c:forEach var="dtoForumMasters" items="${dtoForumMasters}">
                                <li class="tree"><label class="tree-toggle nav-header lbTree"> <i class="fa fa-building treeIcon"></i><a href="#!" id="t${dtoForumMasters.forumId}" aria-controls="t1" role="tab" data-toggle="tab" onclick="getData(${dtoForumMasters.forumId})">${dtoForumMasters.forumName}</a></label>
                                </li> 
                                </c:forEach>              
                            </ul> 
                          <a href="#" class="list-group-item">
                            <i class="fa fa-map pull-left icon-left tabIco"></i>Social Map
                          </a>
                        </div>
                      </div>
                      <!-- Tan=b Menu -->
					<!-- Inner Content Area -->
                    <div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 bhoechie-tab">
                        <div class="bhoechie-tab-content active">
                        
                        <div class=" tab-pane fade active in" id="auto_load_div" role="tabpanel" >
                            <br>
                            <br>
                            <p style="font-style: italic !important;">Good Morning ${loginName}, Inner Explorer wishes you a Good Day!</p>
                            </div>
                        </div>
                        <div class="bhoechie-tab-content">
                                <div class="col-md-12 text-center socialMapOuter">
                                    
                                    <div class="may-pic-section-hd1 icon-box pink">                             
                                        <img src="http://innerexplorer.org/ie/NewStyles/images/teacher-profile/564732_10151233875836019_1536660805_n_1529.jpg">
                                        <p>${loginName}</p>
                                        <div class="tree-border"></div>
                                    </div>
                                    <div class="clear1"></div>
                                    
                                    <div class="social-tree-new">
                                        <ul>
                                            <li>
                                                <div class="social-share-icon-new">
                                                    <i class="fa fa-heart" aria-hidden="true"></i>
                                                    <p>Schools</p>
                                                </div>
                                                <div class="tree-listing-new">
                                                  <ul>
                                                    <div class="tree-data-icon-new highlight-person">
                                                      <li>
                                                          <img src="http://innerexplorer.org/ie/NewStyles/images/school-profile/default-school-logo.png" alt="">
                                                          <p>IE Academy</p>
                                                      </li>
                                                    </div>
                                                          
                                                  </ul>
                                                </div>
                                            </li>
                                            
                                            <li>
                                                <div class="social-share-icon-new">
                                                    <i class="fa fa-users" aria-hidden="true"></i>
                                                    <p>Parents</p>
                                                </div>
                                                <div class="tree-listing-new">
                                                    <ul></ul>
                                                </div>
                                            </li>
                                            
                                            <li>
                                                <div class="social-share-icon-new social-tree-new1">
                                                     <i class="fa fa-group" aria-hidden="true"></i>
                                                    <p>Community</p>
                                                    <div class="tree-border"></div>
                                                </div>
                                                <div class="tree-listing-new">
                                                    <ul>
                                                        <li>
                                                            <div class="tree-data-icon-new highlight-person-new">
                                                                <i class="fa fa-user" aria-hidden="true"></i>
                                                                <p>Test</p>
                                                            </div>
                                                        </li>
                                                        <li class="txt-algn-cntr">
                                                            <div class="tree-data-icon-new highlight-person-new">
                                                                <i class="fa fa-user" aria-hidden="true"></i>
                                                                <p>Test</p>
                                                            </div>
                                                        </li>  
                                                    </ul>
                                                </div>
                                            </li>
                                            <li>
                                               <div class="social-share-icon-new">
                                                   <img src="http://innerexplorer.org/ie/NewStyles/images/shared-radio-new.png" alt="">
                                                   <p>Referred</p>
                                                   <div class="tree-border"></div>
                                               </div>
                                               <div class="tree-listing-new">
                                                      <ul>
                                                          <li>
                                                              <div class="tree-data-icon-new highlight-person-new">
                                                                  <i class="fa fa-user" aria-hidden="true"></i>
                                                                  <p>Test</p>
                                                              </div>
                                                          </li>
                                                          <li class="txt-algn-cntr">
                                                             <div class="tree-data-icon-new highlight-person-new">
                                                                <i class="fa fa-user" aria-hidden="true"></i>
                                                                 <p>Test</p>
                                                             </div>
                                                          </li>
                                                          
                                                        </ul>
                                               </div>
                                            </li>
                                        </ul>
                                          
                                    </div>
                                </div>
                        </div>
                                             </div>
                    <!-- end Inner Content Area -->
                    
				<!-- Activity Feeds -->
                    <div class="col-md-3 col-lg-3 col-sm-12 col-xs-12 p0">
                        <div class="activity-feed">
                            <span>Activity Feed</span>
                        </div>
                        <div class="row msg_container base_sent">
                           <%-- <div class="col-md-3 col-xs-3 avatar p0">
                                <img class="media-object-activity" src="https://s3.amazonaws.com/uifaces/faces/twitter/dancounsell/128.jpg" alt="profile">
                            </div>
                            <div class="col-md-9 col-xs-9 p0">
                                <div class="messages msg_sent">
                                    <p class="more">Lorem ipsum dolor sit amet, consectetur adipisicing elit, Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet, consectetur adipisicing elit </p>
                                    <time datetime="2009-11-13T20:00">John . 51 min</time>
                                </div>
                            </div> --%>                            
                        </div>
                        
                    </div>
                    <!-- End Activity Feeds -->
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- FOOTER -->
	<%--<img src="images/footer.jpg" class="img-responsive"> --%>

	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<%@include file="../footer.jsp"%>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
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
            $(this).siblings('a.active').removeClass("active");
            $(this).addClass("active");
            var index = $(this).index();
            //alert(index);
            $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass("active");
            if(index==0){
               $("div.bhoechie-tab>div.bhoechie-tab-content").eq(0).addClass("active");
            }
            else{
              $("div.bhoechie-tab>div.bhoechie-tab-content").eq(index-1).addClass("active");
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
	<script src="<%=request.getContextPath()%>/NewStyles/js/libs/jquery/1.12.4/jquery.min.js"></script> 
	<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$("[data-toggle=tooltip]").tooltip();
			var postTextData;
		});
		$("div.bhoechie-tab-menu>div.list-group>a").click(
				function(e) {
					e.preventDefault();
					$(this).siblings('a.active').removeClass("active");
					$(this).addClass("active");
					var index = $(this).index();
					$("div.bhoechie-tab>div.bhoechie-tab-content").removeClass(
							"active");
					$("div.bhoechie-tab>div.bhoechie-tab-content").eq(index)
							.addClass("active");
				});
	</script>
	 <script>
      function auto_load(){
        $.ajax({
          url: '<%=request.getContextPath()%>/teacher/getText',
          cache: false,
          success: function(data){
           //  $("#auto_load_div").html(data);
          } 
        });
      }
 
      $(document).ready(function(){
 
       // auto_load(); //Call auto_load() function when DOM is Ready
 
      });
 
      //Refresh auto_load() function after 10000 milliseconds
     // setInterval(auto_load,10000);
   </script>
	<script type="text/javascript">
	function getData(forumId){
		//$("#auto_load_div").dataTable().fnDestroy();
		$("#auto_load_div").html('');
	
		var url='<%=request.getContextPath()%>/superadmin/getForum';
		//alert(forumId);
		$.ajax({
			url:url,
			method:'GET',
			async :false,
			data:{forumId:forumId},
			cache:false,
			success:function(response){
				//alert(response);
				var divData = '';
				
				divData+='<div class="comment-tabs custom-comment-tab">'+
                    '<ul class="nav nav-tabs" role="tablist">'+
                '<li class="active"><a href="#most-recent" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Most  Recent</h4></a></li>'+
                //'<li><a href="#top-rated" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Top Rated</h4></a></li>'+
             
            '</ul>'+            
            '<div class="tab-content tab-chat-box ">';
				divData+='<nav aria-label="Page navigation">'+
                '<ul class="pagination pull-right custom-pagination">'+
                '<li>'+
                 ' <a href="#" aria-label="Previous">'+
                  '  <span aria-hidden="true">&laquo;</span>'+
                  '</a>'+
                '</li>'+
                '<li class="active"><a href="#">1</a></li>'+
                '<li><a href="#">2</a></li>'+
                '<li><a href="#">3</a></li>'+
                '<li><a href="#">4</a></li>'+
                '<li><a href="#">5</a></li>'+
                '<li>'+
                '  <a href="#" aria-label="Next">'+
                 '   <span aria-hidden="true">&raquo;</span>'+
                  '</a>'+
                '</li>'+
              '</ul>'+
          '</nav>'+
          '<div class="clear1"></div>'+
          '<div class="pull-right">'+
           ' <a href="#" class=" btn btn-default stat-item btn-follow-con"><i class="fa fa-users"></i> Join Conversation</a>'+
          '</div>'+
          '<div class="clear1"></div>';
          $.each( response.modelMap.dtoForumTopics, function(index,value) {
             divData+='<div class="tab-pane active" id="most-recent">';  
				//most-recent div
				divData+='<ul class="media-list"><li class="media"><a class="pull-left" href="#">'+
				'<img class="media-object img-circle" src="http://innerexplorer.org/ie/NewStyles/images/school-profile/he-icon_763.png" alt="profile">'+
				'</a> <div class="media-body"> <div class="well well-lg"> <h4 class="media-heading text-uppercase reviews">'+value.userName+
				'</h4><ul class="media-date text-uppercase reviews list-inline">';
				
                	divData+='<li class="dd" id="createdDate">'+value.createdDate+'</li>'+
                	'</ul><p class="media-comment" id="topicText">'+value.topicText+
                	'</p>';	
				
                divData+=' </div> </div> </li> <div class="collapse" id="replyOne"><ul class="media-list">'+
                '<li class="media media-replied"><a class="pull-left" href="#">'+
                ' <img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/ManikRathee/128.jpg" alt="profile">'+
                '</a></li><li class="media media-replied"> '+
                    '</li>'+
                '</ul> </div>  </li> </ul> </div>';
				});
                divData+='<div class="widget-area no-padding blank">'+
                   ' <div class="status-upload">'+
					'<!--<form name="topic_form" id="topic_form" action="savePost" method="POST"> -->'+
                     '   <textarea placeholder="Discussion Topic" name="postText" id="postText"></textarea>'+
                        
                      '  <ul>'+
                       '   <li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Audio"><i class="fa fa-music"></i></a></li>'+
                        '  <li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Video"><i class="fa fa-video-camera"></i></a></li>'+
                        '  <li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Sound Record"><i class="fa fa-microphone"></i></a></li>'+
                        '  <li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Picture"><i class="fa fa-picture-o"></i></a></li>'+
                       ' </ul>'+
                       ' <input type="button" value="POST" title="Post" class="btn btn-success green pull-right" onclick="SaveTopic('+forumId+')" ></input>'+
                     ' <!-- </form> -->'+
                   ' </div><!-- Status Upload  -->'+
                 ' </div></div></div>';
				
                $("#auto_load_div").html(divData);              
				}
					
			
			//$("#t1Tab").html(questionDescription); 
					
			//	
		});
	}	
	
	function SaveTopic(forumId){
		
		var url='<%=request.getContextPath()%>/superadmin/saveTopic';
		postTextData = $("#postText").val();
		//alert(postTextData + " , forumId : " + forumId);
		$.ajax({
			url:url,
			method:'POST',
			async :false,
			data:{postText:postTextData, forumId:forumId},
			cache:false,
			success:function(response){
				alert("Data posted successfully");
				getData(forumId);
			}
		});
	} 

	</script>
	<script type='text/javascript'>//<![CDATA[
$(window).load(function(){
$('.tree').click(function() {
     $(this).addClass('active1').siblings().removeClass('active1');
});



});//]]>

</script>
<style type="text/css">
 .active1{
background-color: #d9d9d9 
}
 .tree{
   padding: 6px 10px 0;
}
.tree-toggle.nav-header.lbTree > a{    float: left;
    line-height: 17px !important}

</style>
</body>
</html>
