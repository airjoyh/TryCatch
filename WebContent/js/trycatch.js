$(function() {
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
	/***************************************  
	*                                      *
	*               별점주기js                * 
	*                                      *                           
	****************************************/
	var starRating = function() {
		//승진기회
		var $star1 = $("#star-A"), $result1 = $star1.find("#star-1>b");
		$(document).on("focusin", "#star-A>.input", function() {
			$(this).addClass("focus");
		}).on("focusout", "#star-A>.input", function() {
			var $this1 = $(this);
			setTimeout(function() {
				if ($this1.find(":focus").length === 0) {
					$this1.removeClass("focus");
				}
			}, 100);
		}).on("change", "#star-A :radio", function() {
			$result1.text($(this).next().text());
		}).on("mouseover", "#star-A label", function() {
			$result1.text($(this).text());
		}).on("mouseleave", "#star-A>.input", function() {
			var $checked1 = $star1.find(":checked");
			if ($checked1.length === 0) {
				$result1.text("0");
			} else {
				$result1.text($checked1.next().text());
			}
		});
		
		//승진기회
		var $star2 = $("#star-B"), $result2 = $star2.find("#star-2>b");
		$(document).on("focusin", "#star-B>.input", function() {
			$(this).addClass("focus");
		}).on("focusout", "#star-B>.input", function() {
			var $this2 = $(this);
			setTimeout(function() {
				if ($this2.find(":focus").length === 0) {
					$this2.removeClass("focus");
				}
			}, 200);
		}).on("change", "#star-B :radio", function() {
			$result2.text($(this).next().text());
		}).on("mouseover", "#star-B label", function() {
			$result2.text($(this).text());
		}).on("mouseleave", "#star-B>.input", function() {
			var $checked2 = $star2.find(":checked");
			if ($checked2.length === 0) {
				$result2.text("0");
			} else {
				$result2.text($checked2.next().text());
			}
		});
		
	
	};
	starRating();
	
	

});

