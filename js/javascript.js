x = 0;

$(document).ready(function(){
    $( window ).scroll(function(){
        var indicator = document.getElementById("demo").innerHTML;
        var scrwidth = $(window).width();
        var wideness = document.getElementById("scrwidth").innerHTML;
        
        document.getElementById("scrwidth").innerHTML = scrwidth;
    if(x == 0 && indicator > 0 && wideness > 650 ) {
        $(".outernavbar").toggleClass("outernavbar-change");
        $(".header").toggleClass("header-change");
        $(".titletext").toggleClass("titletext-change");
         $(".subtext").toggleClass("subtext-change");
        $(".banner").toggleClass("banner-change");
        
		x += 1;
       }
    });
});

$(function() {
	var oTop = $('#counter').offset().top + window.innerHeight;
        
    $(window).scroll(function(){
        var wideness = document.getElementById("scrwidth").innerHTML;
        
 		var pTop = $('body').scrollTop();
         document.getElementById("demo").innerHTML = pTop;       
 		if( pTop == 0 && wideness > 650 ){
                    if(x == 1) {
                        
        $(".outernavbar").toggleClass("outernavbar-change");
        $(".header").toggleClass("header-change");       
        $(".titletext").toggleClass("titletext-change");
        $(".subtext").toggleClass("subtext-change");
        $(".banner").toggleClass("banner-change");
        
        
		x = 0;
       }
     		
 		} 
	});
});


