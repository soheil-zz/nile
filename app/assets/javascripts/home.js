


$(document).ready(function() {

  $('#search-text').keydown(function(event){
    if (event.which === 13) {
      $.ajax('/home/search', {
        data: {query: $(this).val()},
        success: function(data, status, jqXHR) {
          $('#search-results').html(data);
        }
      });
    }
  })
  
});