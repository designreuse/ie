var activeSong;
var activeId;
//Plays the song. Just pass the id of the audio element.
function play(id, divId){
	
    //Sets the active song to the song being played.  All other functions depend on this.
    activeSong = document.getElementById(id);
    //Plays the song defined in the audio tag.
    activeId = divId;
    if (activeSong.paused){
    	//if(divId != '')
    		loadSelectedTrack(id);
        //activeSong.play();
        $("#play-pause"+activeId).removeClass("play-ie-p");
        $("#play-pause"+activeId).addClass("pause-ie-p");
        
        
   }else{
        activeSong.pause();

        $("#play-pause"+activeId).addClass("play-ie-p");
        $("#play-pause"+activeId).removeClass("pause-ie-p");
        
   }
   
}
//Pauses the active song.
function pause(){
    activeSong.pause();
}
//Does a switch of the play/pause with one button.
function playPause(id){
    //Sets the active song since one of the functions could be play.
    activeSong = document.getElementById(id);
    //Checks to see if the song is paused, if it is, play it from where it left off otherwise pause it.
    if (activeSong.paused){
         activeSong.play();
    }else{
         activeSong.pause();
    }
}

//Updates the current time function so it reflects where the user is in the song.
//This function is called whenever the time is updated.  This keeps the visual in sync with the actual time.
function updateTime(){
 
   var currentSeconds = (Math.floor(activeSong.currentTime % 60) < 10 ? '0' : '') + Math.floor(activeSong.currentTime % 60);
    var currentMinutes = Math.floor(activeSong.currentTime / 60);
    //Sets the current song location compared to the song duration.
  document.getElementById('songTime'+activeId).innerHTML = currentMinutes + ":" + currentSeconds + ' - ' + Math.floor(activeSong.duration / 60) + ":" + (Math.floor(activeSong.duration % 60) < 10 ? '0' : ''); + Math.floor(activeSong.duration % 60);

    //Fills out the slider with the appropriate position.
    var percentageOfSong = (activeSong.currentTime/activeSong.duration);
  var percentageOfSlider = document.getElementById('songSlider'+activeId).offsetWidth * percentageOfSong;
    
    //Updates the track progress div
 document.getElementById('progressive'+activeId).style.width  >=0 + "px";

		  var currentSeconds = (Math.floor(activeSong.currentTime % 60)< 10 ? '0' : '') + Math.floor(activeSong.currentTime % 60);
		  var currentMinutes = Math.floor(activeSong.currentTime / 60);

		  //Sets the current song location compared to the song duration.
		  document.getElementById('songTime'+activeId).innerHTML = currentMinutes + ":" + currentSeconds + ' / ' + Math.floor(activeSong.duration / 60) + ":" + (Math.floor(activeSong.duration % 60) < 10 ? '0' : '') + Math.floor(activeSong.duration % 60);

		  //Fills out the slider with the appropriate position.
		  var percentageOfSong = (activeSong.currentTime/activeSong.duration);
		  var percentageOfSlider = document.getElementById('songSlider'+activeId).offsetWidth * percentageOfSong;

		  //Updates the track progress div.
		  document.getElementById('trackProgress'+activeId).style.width = Math.round(percentageOfSlider) + "px";
/*		  document.getElementById('trackProgress'+activeId).style.backgroundcolor='#008000'
			  document.getElementById('trackProgress'+activeId).style.height =10px;*/
		 // style="background-color:#008000; height:10px; width:205px;"
		  
		  
	
	var progressive = document.getElementById('progressive'+activeId); 
 console.log(activeSong.duration+" - "+activeSong.currentTime)
progressive.setAttribute('percent',percentageOfSlider); 

var deg = 0.0;
deg =   percentageOfSong*360;

$("#prcnt").text(Math.floor(percentageOfSong*100)+"%");




var $rotate = $("#progressive"+activeId).find('.rotate');
			setTimeout(function () {	
				$rotate.css({
					/*'transition': 'transform ' + activeSong.duration+ 'ms linear',*/
					/*'transform': 'rotate(' +  deg + 'deg)'*/
				});
			},1);		
			//$("#progressive"+activeId).data('percent', Math.floor(percentageOfSong*100));


			if (Math.floor(percentageOfSong*100)> 50) {
				var animationRight = 'toggle ' + (activeSong.duration / Math.floor(percentageOfSong*100) * 50) + 'ms step-end';
				var animationLeft = 'toggle ' + (activeSong.duration / Math.floor(percentageOfSong*100) * 50) + 'ms step-start';  
			/*	$("#progressive"+activeId).find('.right').css({
					animation: animationRight,
					opacity: 1
				});
				$("#progressive"+activeId).find('.left').css({
					animation: animationLeft,
					opacity: 0
				});*/
			} 
			}


function volumeUpdate(number){
    //Updates the volume of the track to a certain number.
    activeSong.volume = number / 100;
}
//Changes the volume up or down a specific number
function changeVolume(number, direction){
    //Checks to see if the volume is at zero, if so it doesn't go any further.
    if(activeSong.volume >= 0 && direction == "down"){
        activeSong.volume = activeSong.volume - (number / 100);
    }
    //Checks to see if the volume is at one, if so it doesn't go any higher.
    if(activeSong.volume <= 1 && direction == "up"){
        activeSong.volume = activeSong.volume + (number / 100);
    }
    
    //Finds the percentage of the volume and sets the volume meter accordingly.
    var percentageOfVolume = activeSong.volume / 1;
    var percentageOfVolumeSlider = document.getElementById('volumeMeter').offsetWidth * percentageOfVolume;
    
    document.getElementById('volumeStatus').style.width = Math.round(percentageOfVolumeSlider) + "px";
}
//Sets the location of the song based off of the percentage of the slider clicked.
function setLocation(percentage){
    activeSong.currentTime = activeSong.duration * percentage;
}
/*
Gets the percentage of the click on the slider to set the song position accordingly.
Source for Object event and offset: http://website-engineering.blogspot.com/2011/04/get-x-y-coordinates-relative-to-div-on.html
*/
function setSongPosition(obj,e){
    //Gets the offset from the left so it gets the exact location.
    var songSliderWidth = obj.offsetWidth;
    var evtobj=window.event? event : e;
    clickLocation =  evtobj.layerX - obj.offsetLeft;
    
    var percentage = (clickLocation/songSliderWidth);
    //Sets the song location with the percentage.
    setLocation(percentage);
}

//Set's volume as a percentage of total volume based off of user click.
function setVolume(percentage){
    activeSong.volume =  percentage;
    
    var percentageOfVolume = activeSong.volume / 1;
    var percentageOfVolumeSlider = document.getElementById('volumeMeter').offsetWidth * percentageOfVolume;
    
    document.getElementById('volumeStatus').style.width = Math.round(percentageOfVolumeSlider) + "px";
}

//Set's new volume id based off of the click on the volume bar.
function setNewVolume(obj,e){
    var volumeSliderWidth = obj.offsetWidth;
    var evtobj = window.event? event: e;
    clickLocation = evtobj.layerX - obj.offsetLeft;
    
    var percentage = (clickLocation/volumeSliderWidth);
    setVolume(percentage);
}
//Stop song by setting the current time to 0 and pausing the song.
function stopSong(){
    activeSong.currentTime = 0;
    activeSong.pause();
}