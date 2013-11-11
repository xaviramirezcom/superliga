$(function() {
	"use strict";
	/* =========================================================== */
	/*
	 * Google Map /*===========================================================
	 */
	function initializeGoogleMap() {
		var latlng = new google.maps.LatLng(34.001, -118.469);
		var settings = {
			zoom : 17,
			center : latlng,
			mapTypeControl : false,
			scrollwheel : false,
			mapTypeControlOptions : {
				style : google.maps.MapTypeControlStyle.DROPDOWN_MENU
			},
			navigationControl : false,
			navigationControlOptions : {
				style : google.maps.NavigationControlStyle.SMALL
			},
			mapTypeId : google.maps.MapTypeId.ROADMAP
		};
		var map = new google.maps.Map(document.getElementById("map_canvas"),
				settings);
		var image = 'img/map_marker.png';
		var myLatLng = new google.maps.LatLng(34.001, -118.469);
		var beachMarker = new google.maps.Marker({
			position : myLatLng,
			map : map,
			icon : image
		});
	}
	/* Initialize GoogleMap */
	initializeGoogleMap();

	$('#foo').carouFredSel({
		auto : false,
		responsive : true,
		width : '100%',
		prev : '#prev',
		next : '#next',
		scroll : 1,
		items : {
			height : 'auto',
			visible : {
				min : 1,
				max : 1
			}
		},
		mousewheel : true,
		swipe : {
			onMouse : true,
			onTouch : true
		}
	});
	$('#foo2').carouFredSel({
		auto : false,
		responsive : true,
		width : '100%',
		prev : '#prev2',
		next : '#next2',
		scroll : 1,
		items : {
			height : 'auto',
			visible : {
				min : 2,
				max : 6
			}
		},

		mousewheel : true,
		swipe : {
			onMouse : true,
			onTouch : true
		}
	});
});