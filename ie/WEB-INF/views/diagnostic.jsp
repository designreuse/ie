<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Inner Explorer Network Diagnostics</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/octicons/3.1.0/octicons.min.css">

    <!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <style>
    body { background-color:#222;}
      .speed_container{
        margin:5% 0 0 25%;
      }
    </style>
  </head>
  <body>
  <h2 >
Inner Explorer Diagnostics
</h2>
    <div class="container" style="margin:150px auto;">
      <div class="col-sm-5 text-center speed_container">
        <div class="panel panel-default">
          <div class="panel-heading text-center">
            <h1 class="panel-title">Speed Test <div id="status" style="float: right;">You're online</div></h1>
          </div>
          <div class="panel-body text-center">
              <h3 id="progress" ></h3>
          </div>
        </div>
      </div>
  </div>

  <!-- <h1 id="progress">JavaScript is turned off, or your browser is realllllly slow</h1> -->
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <%-- <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.speedtest.js"></script> --%>
  	
  	<script type="text/javascript">
    
    //S3//var imageAddr = "https://s3-us-west-2.amazonaws.com/compass-contents/audioFiles/diagnostics.png";
      var imageAddr = "http://innerexplorer.org/ie/audioFiles/diagnostics.png"; 
      var downloadSize = 2744327; //bytes
      function updateOnlineStatus()
      {
          document.getElementById("status").innerHTML = "You're online";
      }

      function updateOfflineStatus()
      {
          document.getElementById("status").innerHTML = "You're offline";
      }

      window.addEventListener('online',  updateOnlineStatus);
      window.addEventListener('offline', updateOfflineStatus);
      
      function ShowProgressMessage(msg) {
          if (console) {
              if (typeof msg == "string") {
                  console.log(msg);
              } else {
                  for (var i = 0; i < msg.length; i++) {
                      console.log(msg[i]);
                  }
              }
          }
          
          var oProgress = document.getElementById("progress");
          if (oProgress) {
              var actualHTML = (typeof msg == "string") ? msg : msg.join("<br />");
              oProgress.innerHTML = actualHTML;
          }
      }

      function InitiateSpeedDetection() {
          ShowProgressMessage("Checking your bandwidth, please wait...");
          window.setTimeout(MeasureConnectionSpeed, 1);
      };    

      if (window.addEventListener) {
          window.addEventListener('load', InitiateSpeedDetection, false);
      } else if (window.attachEvent) {
          window.attachEvent('onload', InitiateSpeedDetection);
      }

      function MeasureConnectionSpeed() {
          var startTime, endTime;
          var download = new Image();
          startTime = (new Date()).getTime();
          var cacheBuster = "?nnn=" + startTime;
          
          
          
        /*   var download = document.getElementById("track");
          
          var objectUrl = URL.createObjectURL(imageAddr);
          $("#track").prop("src", objectUrl);
          
          download.preload = "auto";
          download.load();
          download.addEventListener('loadstart', function(e){
  	        console.log('Loading started...');
  	     
  	    });
          
          download.addEventListener('canplaythrough', function(e){
  	        console.log('Can play through video without stopping...');
  	      endTime = (new Date()).getTime();
          showResults();
  	    }); */
          
          
          
          
          
          
          download.src = imageAddr + cacheBuster;
          download.onload = function () {
              endTime = (new Date()).getTime();
              showResults();
          }
          
          download.onerror = function (err, msg) {
              ShowProgressMessage("Invalid content, or error downloading");
          }
          
        
          
          function showResults() {
              var duration = (endTime - startTime) / 1000;
              var bitsLoaded = downloadSize* 8;
              var speedBps = (bitsLoaded / duration).toFixed(2);
              var speedKbps = (speedBps / 1024).toFixed(2);
              var speedMbps = (speedKbps / 1024).toFixed(2);
              ShowProgressMessage([
                  "Your connection speed is:", 
                  /* speedBps + " bps", 
                  speedKbps + " kbps",  */
                  speedMbps + " Mbps"
              ]);
          }
      }
      
    </script>

  </body>
</html>
