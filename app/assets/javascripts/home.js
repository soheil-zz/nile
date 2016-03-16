$(document).ready(function() {
  $('#search-text').on('keypress',
      function(e) {
        if (e.keyCode == 13) {
          $.get('/books',
            {'search_term': $('#search-text').val()}
          )
        }
      }
    )
});