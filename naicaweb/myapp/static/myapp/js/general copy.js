jQuery(document).ready(function () {                    	
// TRANSITIONS
	// Hide menu bar on scroll events
	var didScroll;
	var lastScrollTop = 0;
	var delta = 5;
	
	// Function knows user has scrolled
	jQuery(window).scroll(function(event) {
		didScroll = true;
	});
	
    /// Run hasScrolled() on intervals for performance
	setInterval(function() {
		if (didScroll) {
	    	hasScrolled();
			didScroll = false;
		}
	}, 250);
	
    // Function for hasScrolled
	function hasScrolled() {
		var navbarHeight = $('.navigation-bar').outerHeight();
		
		var st = $(this).scrollTop();
		
		// Scroll more than delta
	    if(Math.abs(lastScrollTop - st) <= delta)
	        return;
	    
	    // If they scrolled down and are past the navbar, add class .up.
	    if (st > lastScrollTop && st > navbarHeight){
	        // Scroll Down
	        $('.navigation-bar').removeClass('down').addClass('up');
	    } else {
	        // Scroll Up
	        if(st + $(window).height() < $(document).height()) {
	            $('.navigation-bar').removeClass('up').addClass('down');
	        }
	    }
	    
	    lastScrollTop = st;
		
		/////////// TRANSITION OF IMAGES
	    // Scroll height in window
		var docViewTop = jQuery(window).scrollTop();
		var docViewBottom = docViewTop + jQuery(window).height();
		
		// Animate when partially visible
		jQuery('.transitionable').each( function(){
			
			var height = (jQuery(this).height())/2;
		
			 // Element position
			var elemTop = jQuery(this).offset().top;
			var elemBottom = elemTop + jQuery(this).height();
			
			// Trigger animation treshold
			var trigger = elemTop + height;
	
			// Trigger animation
			if (docViewBottom > trigger) {
				jQuery(this).removeClass('hidden').addClass('show');
			};
		});
	};
	
	// Only hide if Javascript is available
	jQuery('.transitionable').addClass('hidden');
	
	// Animate if visible on document ready
	hasScrolled();
});