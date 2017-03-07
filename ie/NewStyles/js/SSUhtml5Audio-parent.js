var activeSong;
var activeId;
//Plays the song. Just pass the id of the audio element.
function play(id, divId){
	
	
    //Sets the active song to the song being played.  All other functions depend on this.
    activeSong = document.getElementById(id);
    //Plays the song defined in the audio tag.
    activeId = divId;
    if (activeSong.paused){
    	loadSelectedTrack(id);
     //   activeSong.play();
        $("#play-pause"+activeId).removeClass("play-he-p");
        $("#play-pause"+activeId).addClass("pause-he-p");
        
        
   }else{
        activeSong.pause();

        $("#play-pause"+activeId).addClass("play-he-p");
        $("#play-pause"+activeId).removeClass("pause-he-p");
        
   }
   
}

//Updates the current time function so it reflects where the user is in the song.
//This function is called whenever the time is updated.  This keeps the visual in sync with the actual time.
function updateTime(){
    var currentSeconds = (Math.floor(activeSong.currentTime % 60) < 10 ? '0' : '') + Math.floor(activeSong.currentTime % 60);
    var currentMinutes = Math.floor(activeSong.currentTime / 60);

    //Fills out the slider with the appropriate position.
    var percentageOfSong = (activeSong.currentTime/activeSong.duration);

    var deg = 0.0;
    deg =   percentageOfSong*360;


    var $rotate = $("#progressive"+activeId).find('.rotate');
			setTimeout(function () {	
				$rotate.css({
					'transition': 'transform ' + activeSong.duration+ 'ms linear',
					'transform': 'rotate(' +  deg + 'deg)'
				});
			},1);		
			$("#progressive"+activeId).data('percent', Math.floor(percentageOfSong*100));

			if (Math.floor(percentageOfSong*100)> 50) {
				var animationRight = 'toggle ' + (activeSong.duration / Math.floor(percentageOfSong*100) * 50) + 'ms step-end';
				var animationLeft = 'toggle ' + (activeSong.duration / Math.floor(percentageOfSong*100) * 50) + 'ms step-start';  
				$("#progressive"+activeId).find('.right').css({
					animation: animationRight,
					opacity: 1
				});
				$("#progressive"+activeId).find('.left').css({
					animation: animationLeft,
					opacity: 0
				});
			} 
}
 