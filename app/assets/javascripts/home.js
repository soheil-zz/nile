$(document).ready(function() {
  $('#search-text').on('keydown', function(e) {
    if (e.which == 13) {
      $.ajax({
        method: "POST",
        url: "/search",
        data: { "query": $('#search-text').val() },
        success: function(data, status, xhr) {
          $("#search-results").html("<h2>Search Results:</h2>");

          $.each(data, function(key, value) {
            $("#search-results").append("<p>" + value.name + "</p>");
          });
        }
      });
    }
  });
});
