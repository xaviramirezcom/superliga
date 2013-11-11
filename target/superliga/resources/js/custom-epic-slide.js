var udt_global_vars = {
	"epic_slideshow" : "1",
	"epic_slide_timer" : "4000",
	"epic_slide_animation_speed" : "600",
	"epic_slide_animation" : "topToBottom",
	"epic_mobile_slide_animation" : "topToBottom",
	"epic_easing" : "200"
};
$(window)
		.load(
				function() {
					var epic_easing_str = 'easeInOutCirc';
					var use_epic_slideshow = false;
					var use_epic_autoplay = false;
					if (udt_global_vars.epic_slideshow == '1') {
						use_epic_slideshow = true;
					}
					if (udt_global_vars.epic_autoplay == '1') {
						use_epic_autoplay = false;
					}

					// call slider
					$('#epicSlider')
							.epicSlider(
									{
										loop : true, // Boolean: whether
														// slideshow should loop
														// or not
										slideShow : use_epic_slideshow, // Boolean:
																		// use
																		// slideshow
																		// or
																		// not
										autoPlay : true, // Boolean: autoplay
															// uplon load or not
										slideShowInterval : parseInt(
												udt_global_vars.epic_slide_timer,
												10), // Integer: slideshow
														// cycling speed, in
														// milliseconds
										transitionSpeed : parseInt(
												udt_global_vars.epic_slide_animation_speed,
												10), // Integer: transitions
														// speed, in
														// milliseconds
										startSlide : 0, // Integer: starts at 0
										shuffleSlides : false, // Boolean:
																// shuffle
																// slides or not
										easing : epic_easing_str, // String:
																	// easing
																	// method -
																	// see
																	// http://jqueryui.com/demos/effect/easing.html
										fx : udt_global_vars.epic_slide_animation, // String:
																					// none,
																					// fade,
																					// leftToRight,
																					// topToBottom
										fxmobile : udt_global_vars.epic_mobile_slide_animation, // String:
																								// mobile
																								// effect
																								// -
																								// none,
																								// fade,
																								// leftToRight,
																								// topToBottom
										pattern : true
									// Boolean: add pattern or not
									});

					/* Flexslider setup */
					$('.flexslider').flexslider({
						animation : "slide",
						animationLoop : false,
						slideshow : false,
						itemWidth : 635,
						itemMargin : 0,
						move : 1,
						minItems : 1,
						maxItems : 3,
						start : function() {
						}
					});
					$('.flexslider1').flexslider({
						animation : "fade",
						controlNav : false,
						slideshowSpeed : 3000
					});
					/* Izotope */
					var jQuerycontainer = jQuery('.portfolio');
					// Run to initialise column sizes
					updateSize();
					// Load masonry when images all loaded
					jQuerycontainer.imagesLoaded(function() {
						jQuerycontainer.isotope({
							// options
							itemSelector : '.element',
							layoutMode : 'masonry',
							transformsEnabled : false,
							columnWidth : function(containerWidth) {
								containerWidth = jQuerybrowserWidth;
								return Math.floor(containerWidth / jQuerycols);
							}
						});
					});
					// update columnWidth on window resize
					jQuery(window).smartresize(function() {
						updateSize();
						jQuerycontainer.isotope('reLayout');
					});
					// Set item size
					function updateSize() {
						jQuerybrowserWidth = jQuerycontainer.width();
						jQuerycols = 6;
						if (jQuerybrowserWidth >= 1200) {
							jQuerycols = 6;
						} else if (jQuerybrowserWidth >= 800
								&& jQuerybrowserWidth < 1200) {
							jQuerycols = 4;
						} else if (jQuerybrowserWidth >= 401
								&& jQuerybrowserWidth < 800) {
							jQuerycols = 3;
						} else if (jQuerybrowserWidth < 401) {
							jQuerycols = 2;
						}
						// console.log("Browser width is:" +
						// jQuerybrowserWidth);
						// console.log("Cols is:" + jQuerycols);

						// jQuerygutterTotal = jQuerycols * 20;
						jQuerybrowserWidth = jQuerybrowserWidth; // -
																	// jQuerygutterTotal;
						jQueryitemWidth = jQuerybrowserWidth / jQuerycols;
						jQueryitemWidth = Math.floor(jQueryitemWidth);
						jQuery(".element").each(function(index) {
							jQuery(this).css({
								"width" : jQueryitemWidth + "px"
							});
						});
						var jQueryoptionSets = jQuery('#options .option-set'), jQueryoptionLinks = jQueryoptionSets
								.find('a');
						jQueryoptionLinks
								.click(function() {
									var jQuerythis = jQuery(this);
									// don't proceed if already selected
									if (jQuerythis.hasClass('selected')) {
										return false;
									}
									var jQueryoptionSet = jQuerythis
											.parents('.option-set');
									jQueryoptionSet.find('.selected')
											.removeClass('selected');
									jQuerythis.addClass('selected');
									// make option object dynamically, i.e. {
									// filter: '.my-filter-class' }
									var options = {}, key = jQueryoptionSet
											.attr('data-option-key'), value = jQuerythis
											.attr('data-option-value');
									// parse 'false' as false boolean
									value = value === 'false' ? false : value;
									options[key] = value;
									if (key === 'layoutMode'
											&& typeof changeLayoutMode === 'function') {
										// changes in layout modes need extra
										// logic
										changeLayoutMode(jQuerythis, options)
									} else {
										// otherwise, apply new options
										jQuerycontainer.isotope(options);
									}
									return false;
								});
					}
					;
				});
$(document).ready(function() {
	/* responsive tabs */
	RESPONSIVEUI.responsiveTabs();
})