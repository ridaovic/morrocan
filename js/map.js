	var locations = [
	
[ "<div class='map-caption'><div class='frame'><a href='#'><img src='images/map/map-location-img-1.jpg' alt='img'></a></div><div class='text-box'><div class='top-row'><h3>Donation For a School 1</h3><div class='map-progress'><div class='progress'><div class='bar' style='width: 60%;'></div></div><strong class='title'>$2385 Collected of $10000</strong> </div></div><div class='mid-row'> <strong class='title'>Donate Now:</strong> <span>UAN: 0800-222-3333</span> <span>Bank Details: HSBC</span> <span>Account No: 34256-8976</span> </div><div class='bottom-row'><ul><li><a href='#'>Directions</a></li><li><a href='#'>Nearby</a></li><li><a href='#'>Call for Support</a></li></ul></div></div></div>" , 31.508639, -9.759035],  
[ "<div class='map-caption'><div class='frame'><a href='#'><img src='images/map/map-location-img-2.jpg' alt='img'></a></div><div class='text-box'><div class='top-row'><h3>Donation For a School 2</h3><div class='map-progress'><div class='progress'><div class='bar' style='width: 60%;'></div></div><strong class='title'>$2385 Collected of $10000</strong> </div></div><div class='mid-row'> <strong class='title'>Donate Now:</strong> <span>UAN: 0800-222-3333</span> <span>Bank Details: HSBC</span> <span>Account No: 34256-8976</span> </div><div class='bottom-row'><ul><li><a href='#'>Directions</a></li><li><a href='#'>Nearby</a></li><li><a href='#'>Call for Support</a></li></ul></div></div></div>" , 31.631844, -8.012316],  
[ "<div class='map-caption'><div class='frame'><a href='#'><img src='images/map/map-location-img-3.jpg' alt='img'></a></div><div class='text-box'><div class='top-row'><h3>Donation For a School 3</h3><div class='map-progress'><div class='progress'><div class='bar' style='width: 60%;'></div></div><strong class='title'>$2385 Collected of $10000</strong> </div></div><div class='mid-row'> <strong class='title'>Donate Now:</strong> <span>UAN: 0800-222-3333</span> <span>Bank Details: HSBC</span> <span>Account No: 34256-8976</span> </div><div class='bottom-row'><ul><li><a href='#'>Directions</a></li><li><a href='#'>Nearby</a></li><li><a href='#'>Call for Support</a></li></ul></div></div></div>" , 33.576331, -7.587025],  
[ "<div class='map-caption'><div class='frame'><a href='#'><img src='images/map/map-location-img-4.jpg' alt='img'></a></div><div class='text-box'><div class='top-row'><h3>Donation For a School 4</h3><div class='map-progress'><div class='progress'><div class='bar' style='width: 60%;'></div></div><strong class='title'>$2385 Collected of $10000</strong> </div></div><div class='mid-row'> <strong class='title'>Donate Now:</strong> <span>UAN: 0800-222-3333</span> <span>Bank Details: HSBC</span> <span>Account No: 34256-8976</span> </div><div class='bottom-row'><ul><li><a href='#'>Directions</a></li><li><a href='#'>Nearby</a></li><li><a href='#'>Call for Support</a></li></ul></div></div></div>" , 34.034633, -5.006547],
[ "<div class='map-caption'><div class='frame'><a href='#'><img src='images/map/map-location-img-5.jpg' alt='img'></a></div><div class='text-box'><div class='top-row'><h3>Donation For a School 3</h3><div class='map-progress'><div class='progress'><div class='bar' style='width: 60%;'></div></div><strong class='title'>$2385 Collected of $10000</strong> </div></div><div class='mid-row'> <strong class='title'>Donate Now:</strong> <span>UAN: 0800-222-3333</span> <span>Bank Details: HSBC</span> <span>Account No: 34256-8976</span> </div><div class='bottom-row'><ul><li><a href='#'>Directions</a></li><li><a href='#'>Nearby</a></li><li><a href='#'>Call for Support</a></li></ul></div></div></div>" , 35.171640, -5.269350],  
[ "<div class='map-caption'><div class='frame'><a href='#'><img src='images/map/map-location-img-6.jpg' alt='img'></a></div><div class='text-box'><div class='top-row'><h3>Donation For a School 4</h3><div class='map-progress'><div class='progress'><div class='bar' style='width: 60%;'></div></div><strong class='title'>$2385 Collected of $10000</strong> </div></div><div class='mid-row'> <strong class='title'>Donate Now:</strong> <span>UAN: 0800-222-3333</span> <span>Bank Details: HSBC</span> <span>Account No: 34256-8976</span> </div><div class='bottom-row'><ul><li><a href='#'>Directions</a></li><li><a href='#'>Nearby</a></li><li><a href='#'>Call for Support</a></li></ul></div></div></div>" , 35.759508, -5.832966],	    
     	
	];
	// Setup the different icons and shadows
	var iconURLPrefix = 'images';
	var icons = [
				'images/map-icon-2.png', 
				'images/map-icon-2.png', 
				'images/map-icon-2.png', 
				'images/map-icon-2.png', 
				'images/map-icon-2.png', 
				'images/map-icon-2.png', 
							
			];

	var icons_length = icons.length;
	var shadow = {
	  anchor: new google.maps.Point(16,16),
	  url: iconURLPrefix + 'msmarker.shadow.png'
	};

	var myOptions = {
	  center: new google.maps.LatLng(32,-5),
	  mapTypeId: 'roadmap',
	  mapTypeControl: true,
	  streetViewControl: true,
	  panControl: true,
	  scrollwheel: false,
	  draggable: true,
	  
					  
	 styles: [{
			stylers: [{
				hue: '#000000'
			}, {
				saturation: -100                        }, {
				lightness: 1                        }]
		}],
		
					
	   zoom: 6,
	}
	
	var map = new google.maps.Map(document.getElementById("map_list"), myOptions);
	var infowindow = new google.maps.InfoWindow({
	  maxWidth: 350,
	});
	var marker;
	var markers = new Array();
	var iconCounter = 0;

	// Add the markers and infowindows to the map
	for (var i = 0; i < locations.length; i++) {  
	  marker = new google.maps.Marker({
		position: new google.maps.LatLng(locations[i][1], locations[i][2]),
		map: map,
		icon : icons[iconCounter],
		shadow: shadow
	  });

	  markers.push(marker);
	  google.maps.event.addListener(marker, 'click', (function(marker, i) {
		return function() {
		  infowindow.setContent(locations[i][0]);
		  infowindow.open(map, marker);
		}
	  })(marker, i));
	  
	  iconCounter++;
	  // We only have a limited number of possible icon colors, so we may have to restart the counter
	  if(iconCounter >= icons_length){
		iconCounter = 0;
	  }
	}