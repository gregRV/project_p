$(document).ready(function() {

  // DYNAMIC FORMS TO CREATE NEW POGS
  $('.add-pog').click(function(e){
    e.preventDefault();

    // appends 'New Pog Form' partial
    $.ajax({
      url: '/pogs/partial',
      type: 'post'
    }).done(function(response){
      $(response).appendTo('.new-pog-area');
    });
  });

  // SUBMIT ALL FIELDS FROM DYNAMIC FORMS
  $('#create-pogs-form').submit(function(e){
    e.preventDefault();

    $.ajax({
      url: '/pogs',
      type: 'post',
      data: $('form').serialize()
    }).done(function(response){
      window.location = '' +response.url+ '';
    });
  });
});



/////////////////////////
//    DRAG & DROP!
/////////////////////////
$(function() {
	// MAKES POGS DRAGGABLE
  $( ".draggable" ).draggable({
  	revert: "invalid",
  });

  // DRAG BACK INTO POG-PROFILE
  $(".pog-profile").droppable({
  	accept: ".draggable",
  	drop: function(event, ui){
  		// ui.draggable.prepend($('img:first-child'));
  	}
  });

  // DROP AREA ACCEPTS DRAGGABLE ITEMS
  $( ".droppable" ).droppable({
  	accept: ".draggable",
  	drop: function(){
  		$(this).find('p').html('DROPPED!');
  		console.log($(this));
  	}
  });
});