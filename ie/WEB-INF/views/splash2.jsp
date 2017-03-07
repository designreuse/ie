<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Inner Explorer</title>

<style>

<!--[if lt IE 9]>
<script>
	document.createElement('video');
</script>
<![endif]-->
video { display: block; }
@import url(http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800);
@import url(https://fonts.googleapis.com/css?family=Indie+Flower);

video#bgvid { 
    position: fixed;
    top: 50%;
    left: 50%;
    min-width: 100%;
    min-height: 100%;
    width: auto;
    height: auto;
    z-index: -100;
    -ms-transform: translateX(-50%) translateY(-50%);
    -moz-transform: translateX(-50%) translateY(-50%);
    -webkit-transform: translateX(-50%) translateY(-50%);
    transform: translateX(-50%) translateY(-50%);
    background: url(polina.jpg) no-repeat;
    background-size: cover; 
}



.hero { max-width:1000px; width:100%;}

.hero {
    color: #fff;
    left: 50%;
    position: absolute;
    text-align: center;
    text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.75);
    text-transform: uppercase;
    top: 50%;
	-webkit-transform: translate3d(-50%, -50%, 0px);
    transform: translate3d(-50%, -50%, 0px);
    z-index: 3;
	display:none;
}
.hero h1 {
    font-size:52px;
    font-weight:300;
    margin:0 10px 10px 10px;
    padding:0 0 10px 0;
    font-family:'Open Sans', sans-serif;
    border-bottom:2px solid #fff;
    color:#02a451;
}

.hero h3{ font-size:22px; font-weight:300; color:#02a451; text-transform:initial; margin:0; padding:0;   font-family:'Open Sans', sans-serif;}

.btn{ position:absolute; right:50px; top:150px;}

.btn a{ font-size:15px;   font-family:'Open Sans', sans-serif; background:#02a451; border:1px solid #02a451; text-decoration:none; padding:12px; color:#ffffff;}

/*@media (min-aspect-ratio: 16/9) {
.fullscreen-bg__video {
width: 100%;
height: auto;
}
}
@media (max-aspect-ratio: 16/9) {
.fullscreen-bg__video {
width: auto;
height: 100%;
}*/


</style>

</head>

<body>

<video autoplay  poster="polina.jpg" id="bgvid">
		<source src="<%=request.getContextPath()%>/media/video4.webm" type="video/webm">
		<source src="<%=request.getContextPath()%>/media/video4.mp4" type="video/mp4">
</video>

<!--<div class="fullscreen-bg">
	<video loop autoplay poster="img/videoframe.jpg" class="fullscreen-bg__video" id="player">
		<source src="video/video1.webm" type="video/webm">
		<source src="video/video1.mp4" type="video/mp4">
		<source src="video/video1.ogv" type="video/ogg">
	</video>
</div>-->
<div class="cont">
	<div class="hero">        
		<hgroup>
			<h1>HOPE  .   INTENTION   .   PEACE</h1>         
			<h3>JOIN MINDFUL AWARENESS REVOLUTION</h3>
        </hgroup>
	</div>
</div>
<div class="btn"> <a href="http://innerexplorer.org/">START HERE</a></div>
</body>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-73908394-1', 'auto');
  ga('send', 'pageview');

</script>
</html>
