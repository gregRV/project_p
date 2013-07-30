$(document).ready(function(){
	var selectedPogsId = [];

 	// Accesses ID from clicking the Pog
	$('.draggable').click(function(){
		var thisPog = $(this);
		$.ajax({
			url: '/pogs_img',
			type: 'get',
			data: {id: $(this).data('id')}
		}).done(function(pog){
			$('.droppable').append("<img class='pog-loading' src='"+pog.url+"' >");
			selectedPogsId.push(thisPog.data('id'));

			// Display 'Ready!' button if 1+ Pogs selected
			if (selectedPogsId.length > 0){
				$('.play-btn').css('display', 'inline');
			}
		});
 	});

 	$('.play-btn').click(function(){
 		console.log(selectedPogsId);

 		// array.join(); (comma separated vals)
 		// maybe send a string of id's to server,
 		// parse and create entries in database?
 	});
});