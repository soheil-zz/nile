
$(document).ready(function() {

  $('#search-text').on('keypress', function(event) {
    if (event.keyCode == "13") {
      search_components = event.target.value.split(':');
      alert(search_components);
    }
  });

});
