$(document).ready(function() {
  $('#search-text').on('keypress', function(e) {
    if (e.which == 13) {
      $('#search-form').submit();
    }
  });
});
