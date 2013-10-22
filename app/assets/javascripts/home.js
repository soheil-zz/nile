


$(document).ready(function() {
  $('#search-text').on("keypress", function(e) {
    var search_input = $(this).val();
    if (e.which == 13)
    {
      $.get("/search", {
        search_input: search_input
      }, function(data) {
        $("#search-results").hide().html("");
        var books = data.books;
        for (i in books)
        {
          var book = books[i];
          var book_div = $("#base-book-div").clone();
          book_div.find(".book-title").html(book.title);
          book_div.appendTo($("#search-results"));
        }
        $("#search-results").show();
      }, 
      "JSON");
    }
  });
});