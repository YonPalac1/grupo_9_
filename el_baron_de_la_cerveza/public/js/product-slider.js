	var elem = document.querySelector('.main-carousel');
	var flkty = new Flickity( elem, {
	  // options
	  cellAlign: 'center',
	  contain: true,
  	wrapAround: true,
	  pageDots: false,
	  autoPlay: true 
	  
	});

// element argument can be a selector string
//   for an individual element
var flkty = new Flickity( '.main-carousel', {
});