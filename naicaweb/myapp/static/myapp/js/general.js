jQuery(document).ready(function () {                    	
// TRANSITIONS
	// Hide menu bar on scroll events
	var didScroll;
	
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
	
	// Mobile side menu functionality
	$('#SideMenuButton').on('click touch', function() {
		$('#SideMenu').toggleClass('open');
		$('body').toggleClass('pushed');
		
		console.log('open menuuu');
	});
	
	// Close side menu
	$('#CloseSideMenuButton').on('click touch', function () {
		$('#SideMenu').toggleClass('open');
		$('body').toggleClass('pushed');
	});
});