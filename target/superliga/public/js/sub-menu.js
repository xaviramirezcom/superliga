		$(document).ready(function() {
			
/*snap menu*/
			$("#navigation-wrapper").sticky({ topSpacing: 0 });

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
				
			});

		});
/*--------------*/






