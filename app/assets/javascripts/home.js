$(document).ready(function() {
	$('#search-text').keypress(function (e) {
	  if (e.which == 13) {
		  $('#search-results').size() && $.ajax({
			  url: '/search',
			  data: {'q': $('#search-text').val()}
			}).done(function( data ) {
		    $('#search-results').html(data);
		  });
		}
  });
});