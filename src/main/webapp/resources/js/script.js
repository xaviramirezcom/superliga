$(window).load(function(){
	 "use strict";
    $('.tweet').tweet({
		modpath: 'twitter/',
		count: 1,
		loading_text: 'loading twitter feed...',
		/* etc... */});
	/* Tooltips */
	$('.social-icons a, .social-icons2 a').tooltip();


/* Accordion */

	$('.accordion-body').prev().removeClass("active")
	$('.accordion-body.in').prev().addClass("active")
	$('.accordion-heading').click(function(){
		if($(this).hasClass('active')){
			$(this).removeClass("active")	
		}	
		else{	
			$('.accordion-heading').removeClass("active")	
			$(this).addClass("active")	
		}	
	});

/* Process gallery */

	/*var process_gallery = new Gallery.Process($('.process-container')[0], false, {'transition': 'Slide'});
	process_gallery.go_to(0);
	process_gallery.resize();*/

    // --------------- Dribble ----------------- //
    $.jribbble.getShotsByPlayerId('mikesmith187', function (playerShots) {
        var html = [];
        
        $.each(playerShots.shots, function (i, shot) {
            html.push('<li class="thumb"><figure class="overlay"><a href="' + shot.url + '" target="_blank">');
            html.push('<img src="' + shot.image_url + '" ');
            html.push('alt="' + shot.title + '"></figure></a></li>');
        });
        
        $('.shots.thumbs').html(html.join(''));
        $('.overlay a').prepend('<span class="more"></span>');

    }, {page: 1, per_page: 5});
   
   $(".process-container .process-item").hover(function(){
        var numItem = $(this).attr("data-show");
        $(".process_description_wrap>div").hide();
        $(".process_description_" + numItem).stop().show();
   });
});


/*--------------*/













