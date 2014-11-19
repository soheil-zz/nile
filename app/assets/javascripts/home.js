


$(document).ready(function() {
  $("#submit").on("click", sendSearchRequest);
});

sendSearchRequest = function(event) {
  event.preventDefault();
  searchText = $("#search-text").val();
  $.ajax("/search", {
    type: "POST",
    success: handleSearchResults,
    error: function() { alert("WHOOPS") },
    data: { search: { text: searchText } }
  });
};

handleSearchResults = function(data, status) {
  console.log(data);
  $("#newest-books-by-title").find("ul").empty().append(data);
}