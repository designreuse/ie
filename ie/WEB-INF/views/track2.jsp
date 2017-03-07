<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
   

    <title>Play Track</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/NewStyles/assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="<%=request.getContextPath()%>/NewStyles/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/NewStyles/assets/js/ie-emulation-modes-warning.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/NewStyles/assets/css/main-style.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
     <link href="<%=request.getContextPath()%>/NewStyles/assets/css/track_play.css" rel="stylesheet">
  </head>
<!-- NAVBAR
================================================== -->
  <body>
    <div id="mySidenav" class="sidenav">
        <span class="explorer_txt">HEP HEAL PROJECT <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a></span>
        

      <ul class="list-group sideMenu_ul">
          <li class="list-group-item">
          <a href="<%=request.getContextPath()%>/track">
              <span class="tag tag-default tag-pill float-xs-right track_day">Day 1 <span class="totl_count">1</span></span>
           <span class="track_name">Breathing Buddy</span>
           <span class="nar_name"><p class="pull-left">Laura Bakosh </p><p class="pull-right">06:00</p></span>
           </a>
          </li>
          <li class="list-group-item">
          <a href="<%=request.getContextPath()%>/track2">
            <span class="tag tag-default tag-pill float-xs-right track_day_not_listn">Day 2 </span>
           <span class="track_name">Breathing Buddy</span>
           <span class="nar_name"><p class="pull-left">Laura Bakosh </p><p class="pull-right">06:00</p></span>
           </a>
          </li>
          <li class="list-group-item">
          <a href="<%=request.getContextPath()%>/track3">
            <span class="tag tag-default tag-pill float-xs-right track_day">Day 3 <span class="totl_count">1</span></span>
           <span class="track_name">Breathing Buddy</span>
           <span class="nar_name"><p class="pull-left">Laura Bakosh </p><p class="pull-right">06:00</p></span>
           </a>
          </li>
          <li class="list-group-item">
          <a href="<%=request.getContextPath()%>/track4">
            <span class="tag tag-default tag-pill float-xs-right track_day_not_listn">Day 4 </span>
           <span class="track_name">Breathing Buddy</span>
           <span class="nar_name"><p class="pull-left">Laura Bakosh </p><p class="pull-right">06:00</p></span>
           </a>
          </li>
        </ul>
    </div>

<div class="wide wide_banner">
    <span class="burger_menu" onclick="openNav()">&#9776;</span>
   <!--  <div class="col-xs-5 line"><hr></div>
    <div class="col-xs-2 logo">LOGO</div>
    <div class="col-xs-5 line"><hr></div> -->
    <div class="container">
        <div class="carousel-caption track_op">
            <div class="col-md-5 col-md-offset-3 pull-left">
                    <div class="progress-radial progress">
                      <div class="overlay">
                        <img class="img-responsive img-circle" src="<%=request.getContextPath()%>/NewStyles/img/track_banner.jpg" alt="">
                        <div class="controls">
                          <!-- <span class="glyphicon glyphicon-volume-up" id="mute" data-toggle="audioplayer" data-icon="muted" data-active="false"></span>
                          <span class="glyphicon glyphicon-volume-off hide" id="muted" data-toggle="audioplayer" data-icon="mute" data-active="false"></span> -->
                            <span class="glyphicon glyphicon-play active" id="stop" data-toggle="audioplayer" data-icon="play"></span>
                          <span class="glyphicon glyphicon-pause hide" id="play" data-toggle="audioplayer" data-icon="stop"></span>
                          <!-- <span class="glyphicon glyphicon-pause" id="pause" data-toggle="audioplayer" data-icon="pause"></span> -->
                        </div>
                        <div class="clearfix"></div>

                      </div>
                      
                    </div> 
             
            </div>
            <div class="clear20"></div>
                        <!--   <div id="player">
                            <div id="volume"></div>
                          </div> -->
                          <div class="col-sm-11 text-center">

									<a href="<%=request.getContextPath()%>/after"><button type="button" class="btn btn-primary">Stop</button></a>
								</div>
        </div>
      </div>

  <div class="footer_track_name" style="position:absolute; width:100%; padding:20px 0; background-color:rgba('0,0,0,0.5'); bottom:0">

  </div>      
</div>


   
    <!-- Bootstrap core JavaScript-->
    <script src="<%=request.getContextPath()%>/NewStyles/assets/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src=<%=request.getContextPath()%>/NewStyles/assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="<%=request.getContextPath()%>/NewStyles/assets/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="<%=request.getContextPath()%>/NewStyles/assets/js/ie10-viewport-bug-workaround.js"></script>
    <script>
            function openNav() {
                document.getElementById("mySidenav").style.width = "250px";
            }

            function closeNav() {
                document.getElementById("mySidenav").style.width = "0";
            }
    </script>
    <script type="text/javascript">
       
    </script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>
    <script type="text/javascript">

        $(function () {
            var play = $('#play'),
            pause = $('#pause'),
              stop = $('#stop'),
            mute = $('#mute'),
            muted = $('#muted'),
            song = new Audio('http://innerexplorer.org/ie//audioFiles/Exploring Me-2_1_1.mp3'),
            
            duration = song.duration;

          song.type= 'audio/mpeg';
          //song.src= 'http://innerexplorer.org/ie//audioFiles/Exploring Me-1_1_1.mp3';

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
                    //var curtime = song.currentTime / song.duration * 100;
                   // $('.progress-radial').removeClass('progress-'+parseInt(curtime));
                  //song.currentTime = 0;            
                    $(this).addClass('hide');
                    stop.removeClass('hide').addClass('active');

                  /*  e.preventDefault();
            song.pause();
            $('.active').removeClass('active');
            $(this).addClass('active');
               */ }
          });

          pause.on('click', function(e) {
            e.preventDefault();
            song.pause();
            $('.active').removeClass('active');
            $(this).addClass('active');
          });

          mute.on('click', function(e) {
            e.preventDefault();
            song.volume = 0;
            $(this).addClass('hide');
            $('#muted').removeClass('hide');
          });

          muted.on('click', function(e) {
            e.preventDefault();
            song.volume = 1;
            $(this).addClass('hide');
            $('#mute').removeClass('hide');
          });

          song.addEventListener('timeupdate', function (){
            var curtime = song.currentTime / song.duration * 100;
            $('.progress-radial').addClass('progress-'+parseInt(curtime));
            $('.progress-radial').removeClass('progress-'+parseInt(curtime-1));
          }); 
        });

      $("#volume").slider({
        min: 0,
        max: 100,
        value: 0,
        range: "min",
        animate: true,
        slide: function(event, ui) {
        setVolume((ui.value) / 100);
        }
      });

  var myMedia = document.createElement('audio');
  $('#player').append(myMedia);
  myMedia.id = "myMedia";
   song = new Audio('http://innerexplorer.org/ie//audioFiles/Exploring Me-2_1_1.mp3'),
    duration = song.duration;

function playAudio(fileName, myVolume) {
  var mediaExt = (myMedia.canPlayType('audio/mp3')) ? '.mp3' 
    : (myMedia.canPlayType('audio/ogg')) ? '.ogg' 
    : '';
  if (mediaExt) {
    myMedia.src = fileName + mediaExt;
    myMedia.setAttribute('loop', 'loop');
    setVolume(myVolume);
    myMedia.play();
  }
}

function setVolume(myVolume) {
    var myMedia = document.getElementById('myMedia');
    myMedia.volume = myVolume;
}
    </script>
  </body>

</html>
