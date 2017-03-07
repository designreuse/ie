<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">


<title>Play Track</title>

<!-- Bootstrap core CSS -->
<link
	href="<%=request.getContextPath()%>/NewStyles/assets/css/bootstrap.min.css"
	rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link
	href="<%=request.getContextPath()%>/NewStyles/assets/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">
<script
	src="<%=request.getContextPath()%>/NewStyles/assets/js/ie-emulation-modes-warning.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- Custom styles for this template -->
<link
	href="<%=request.getContextPath()%>/NewStyles/assets/css/main-style.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<link
	href="<%=request.getContextPath()%>/NewStyles/assets/css/track_play.css"
	rel="stylesheet">
</head>
<!-- NAVBAR
================================================== -->
<body>
	<div id="mySidenav" class="sidenav">
		<span class="explorer_txt">HELP HEAL PROJECT <a
			href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a></span>
		
			<ul  class="list-group sideMenu_ul">
			<c:forEach var="student" items="${studentList}">
			<li class="list-group-item"><a href="/ie/track/${student.audioTrackId}">${student.audioTitle}</a></li>
    		
    		</c:forEach>
    		</ul> 
	</div>

	<div class="wide wide_banner">
		<span class="burger_menu" onclick="openNav()">&#8801;</span>
		<!--  <div class="col-xs-5 line"><hr></div>
    <div class="col-xs-2 logo">LOGO</div>
    <div class="col-xs-5 line"><hr></div> -->
		<div class="container">
			<div class="carousel-caption track_op">
				<div class="col-md-5 col-md-offset-3 pull-left">
					<div id="trackDiv" class="progress-radial progress">
						<div class="overlay">
							<img class="img-responsive img-circle"
								src="<%=request.getContextPath()%>/NewStyles/img/track_banner.jpg"
								alt="">
							<div class="controls">
								<!-- <span class="glyphicon glyphicon-volume-up" id="mute" data-toggle="audioplayer" data-icon="muted" data-active="false"></span>
                          <span class="glyphicon glyphicon-volume-off hide" id="muted" data-toggle="audioplayer" data-icon="mute" data-active="false"></span> -->
								<span class="glyphicon glyphicon-play active" id="stop"
									data-toggle="audioplayer" data-icon="play"></span> <span
									class="glyphicon glyphicon-pause hide" id="play"
									data-toggle="audioplayer" data-icon="stop"></span>
								<!-- <span class="glyphicon glyphicon-pause" id="pause" data-toggle="audioplayer" data-icon="pause"></span> -->
							</div>
							<div class="clearfix"></div>

						</div>

					</div>

				</div>

				<input type="hidden" id="trackL" value=${trackList}></input>
				<div class="clear20"></div>
				<!-- <div id="player">
                            <div id="volume"></div>
                          </div> -->
				<div class="col-sm-11 pull-left" style="width: 62%" >

					<a href="<%=request.getContextPath()%>/after"><button
							type="button" class="btn btn-primary" style="margin-left: 70% !important; font-size: 20px;">Stop</button></a>
				</div>
			</div>
		</div>

		<div class="footer_track_name"
			style="position: absolute; width: 100%; padding: 20px 0; background-color: rgba('0,0,0,0.5'); bottom: 0">

		</div>
	</div>



	<!-- Bootstrap core JavaScript-->
<%-- 	<script
		src="<%=request.getContextPath()%>/NewStyles/assets/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src=<%=request.getContextPath()%>/NewStyles/assets/js/vendor/jquery.min.js"><\/script>')
	</script> --%>

	<script>
		function openNav() {
			document.getElementById("mySidenav").style.width = "280px";
		}

		function closeNav() {
			document.getElementById("mySidenav").style.width = "0";
		}
	</script>
	<script type="text/javascript">
		
	</script>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>

	<%-- <script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script
		src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script> --%>
	<script
		src="<%=request.getContextPath()%>/NewStyles/assets/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script
		src="<%=request.getContextPath()%>/NewStyles/assets/js/ie10-viewport-bug-workaround.js"></script>
	
	  <script type="text/javascript">
	  	var trackId= ${trackId};
		var trackNumber = 0;
		var firstTrack = 0;
		var splitstr = $("#trackL").val().split(',');
		var trackList = [];
		for(i=0; i < splitstr.length; i++)
			trackList.push(splitstr[i].replace(/"/g,""));
		var lastTrack = splitstr.length-1;
		$('#myName').text(trackList[trackNumber]);
	 	if (trackId < (lastTrack) || trackId > firstTrack)
			{
			trackNumber = trackId-1;
			}
    	var originalContent = $('#trackDiv').clone();
        $(function test() {
        	
            var play = $('#play'),
            pause = $('#pause'),
            stop = $('#stop'),
            mute = $('#mute'),
            muted = $('#muted'),
            song = new Audio('http://innerexplorer.org/ie//audioFiles/'+trackList[trackNumber]),
          
            duration = song.duration;

          	song.type= 'audio/mpeg';
          
          /* if(trackNumber > 0)
        	  {
        	  song.setAttribute('autoplay', 'autoplay');
        	  song.play();
        		$("#stop").removeClass('active');
                $("#stop").addClass('hide');
                $("#play").removeClass('hide');
                $("#play").addClass('active');
        	  } */

            stop.on('click', function(e) {
              e.preventDefault();
                $(this).addClass('hide');
                $('#play').removeClass('hide').trigger('click');        
            })

          play.on('click', function(e) {
            e.preventDefault();
                if (!$(this).hasClass('active')){
                	song.play();
                    $('.active').removeClass('active');
                	$(this).addClass('active');
                }else{
                    song.pause();
                    $('.active').removeClass('active');
                    $(this).addClass('hide');
                    stop.removeClass('hide').addClass('active');
                }
          });

          pause.on('click', function(e) {
            e.preventDefault();
            song.pause();
            $('.active').removeClass('active');
            $(this).addClass('active');
          });

          song.addEventListener('timeupdate', function (){
            var curtime = song.currentTime / song.duration * 100;
            $('.progress-radial').addClass('progress-'+parseInt(curtime));
            $('.progress-radial').removeClass('progress-'+parseInt(curtime-1));
          }); 
          
          song.addEventListener('ended', function (){
              $("#trackDiv").replaceWith(originalContent);
              if (trackNumber == lastTrack)
            	  {
            	  	trackNumber = 0;
            	  	$("#play").removeClass('active');
                    $("#play").addClass('hide');
            	  	$("#stop").removeClass('hide');
                    $("#stop").addClass('active');
            	  }
              else
            	  {
            	  	trackNumber = trackNumber + 1;
            	  	$("#stop").removeClass('active');
                    $("#stop").addClass('hide');
                    $("#play").removeClass('hide');
                    $("#play").addClass('active');
            	  }
              originalContent = $("#trackDiv").clone();
              var nextTrack = trackNumber+1;
              
              location.pathname = '/ie/track/' + nextTrack;
              test();      
            }); 
		});
</script>
</body>

</html>
