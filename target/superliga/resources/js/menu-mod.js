		$(document).ready(function() {
			/*snap menu*/
			$("#navigation-wrapper").sticky({ topSpacing: 0 });
			// animate a regular anchor navigation with offset -100px
			$('body').localScroll({
				hash: true,
				filter: '.animated, .animated-btn',
				onBefore: function(){
					this.offset = -101;
				}
			});

			$('#separator4, #separator3, #animated-id').localScroll({
				hash: true,
				filter: '.animated-btn',
				onBefore: function(){
					this.offset = -101;
				}
			});

			// highlight menu element on scroll
			calculateScroll();
			$(window).scroll(function(event) {
				calculateScroll();
			});


			$("ul#menu").click(function(){
				if( $("ul#menu li").not(".home").css('display') != 'inline' ){
					if($("ul#menu").hasClass('showmenu')) {
						$("ul#menu").removeClass('showmenu');
						$("ul#menu li").css('display','none');
					} else {
						$("ul#menu").addClass('showmenu');
						$("ul#menu li").css('display','block');
					}
				}
			});
			$(window).resize(function() {
				if( $(window).width() >= 944 ){
					if( $("ul#menu li").css('display' ) == 'none' )
						$("ul#menu li").not(".home").css('display','inline');
				}
				else{
					$("ul#menu li").css('display','none');
				}
				calculateScroll();
			});
		});

/*	Automatically Highlights Navigation Item */
		var rangeTop		= 200; //rangeTop is used for changing the class a little sooner that reaching the top of the page
		var rangeBottom		= 200; //rangeBottom is similar but used for when scrolling bottom to top
		function calculateScroll() {
			var winTop = $(window).scrollTop();
			var contentTop		= [];
			var contentBottom	= [];
			$('#navigation ul').find('a.animated').each(function(){
				contentTop.push( $( $(this).attr('href') ).offset().top );
				contentBottom.push( $( $(this).attr('href') ).offset().top + $( $(this).attr('href') ).height() );
			})

			$.each( contentTop, function(i){
				$('#navigation li').eq(i).removeClass('current');
				if ( winTop > contentTop[i] - rangeTop && winTop < contentBottom[i] - rangeBottom ){
					$('#navigation li').removeClass('current').eq(i).addClass('current');
				}
			})
		}
/*--------------*/













