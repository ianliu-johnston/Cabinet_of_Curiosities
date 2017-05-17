document.addEventListener("DOMContentLoaded", function(event){
//Put all javascript code inbetween these two tags.
//Moves the octopus around the chaos.html page.
    $(document).ready(function(){
	animate();
    });
    function animate(){
	randy = (Math.floor(Math.random()*500)).toString()+"px";
	randy2 = (Math.floor(Math.random()*500)).toString()+"px";
	randy3 = Math.floor(Math.random()*1000+ 2000);
    $("#flyingOctopus").animate({"left": randy, "top": randy2}, randy3, animate);
}
//makes a picture bigger or smaller
    var thumbnailElement = document.getElementById("smart_thumbnail");
    thumbnailElement.addEventListener("click", function(){
	if (thumbnailElement.className == ""){
	    thumbnailElement.className = "small";
	}
	else{
	    thumbnailElement.className = "";
	}
    });
//controls navbar appearance for mobile or small screens.
    (function($){
	var $window = $(window);
	var navBar = document.getElementById('navigation');
	function resize(){
	    if ($window.width() < 514){
		navBar.className = '';
	    }
	    else {
	    navBar.className='nav nav-tabs';
	    }
	}
	$window
	    .resize(resize)
	    .trigger('resize');;
    })(jQuery);

});