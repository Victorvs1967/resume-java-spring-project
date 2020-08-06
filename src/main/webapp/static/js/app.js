$('.timeline-panel').click(function() {
    $('.timeline-body', this).toggle();
});

const resume = {
		
	alert : function(message) {
		alert(message);
	},
	
	moreProfiles : function() {
		let page = parseInt($('#profileContainer').attr('data-profile-number')) + 1;
		let total= parseInt($('#profileContainer').attr('data-profile-total'));
		if (page >= total) {
			$('#loadMoreIndicator').remove();
			$('#loadMoreContainer').remove();
			return;
		}
		
		let url = '/fragment/more?page=' + page;
		
		$('#loadMoreContainer').css('display', 'none');
		$('#loadMoreIndicator').css('display', 'block');
		$.ajax({
			url : url,
			success : function(data) {
				$('#loadMoreIndicator').css('display', 'none');
				$('#profileContainer').append(data);
				$('#profileContainer').attr('data-profile-number', page);
				if (page >= total-1) {
					$('#loadMoreIndicator').remove();
					$('#loadMoreContainer').remove();
				} else {
					$('#loadMoreContainer').css('display', 'block');
				}
			},
			error : function(data) {
				$('#loadMoreIndicator').css('display', 'none');
				resume.alert('Error! Try again later...');
			}
		});
	}
};
