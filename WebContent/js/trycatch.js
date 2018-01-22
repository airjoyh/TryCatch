(function($) {
	"use strict"; // Start of use strict

	$('.nav').affix({
		offset : {
			top : 205
		}
	});

	$('#skillAdd').click(function() {
		$('#skillModalBody').prepend('<button name="skills" class="btn btn-info" onclick="script:$(this).hide()" style="margin-right:5px;">'
												+ '<li class="glyphicon glyphicon-pencil">'
												+ $('#skillName').val()
												+ '</li></button>');
		$('#skillName').val('');
	});

})(jQuery); // End of use strict
