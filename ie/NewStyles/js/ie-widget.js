// self executing function here
(function() {
 
   var widget_link, iframe, i, widget_links;
    widget_links = document.getElementsByClassName("ie-widget");
	 var email = getParameterByName('email');
    for (i = 0; i < widget_links.length; i++) {
      widget_link = widget_links[i];
      iframe = document.createElement('iframe');
	  iframe.setAttribute('src', "http://innerexplorer.org/ie/wisdomLiveWidget?data="+email);
	 // iframe.setAttribute('src', "http://localhost:8080/compass/wisdomLiveWidget?data="+widget_link.getAttribute("data"));
      iframe.setAttribute('width', 'auto');
      iframe.setAttribute('height', 'auto');
      iframe.setAttribute('style', 'border: 1px solid #ccc; padding: 10px;');
      iframe.setAttribute('frameborder', '0');
      iframe.setAttribute('scrolling', 'no');
      widget_link.parentNode.replaceChild(iframe, widget_link);
    }

})();


function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}