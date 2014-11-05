


$(document).ready(function() {
  initPage();
});


initPage: function() {
  $('#search-text').on('keyup', function(event){

    if (event.keyCode === 13) {
      var searchText = $('#search-text').val();
      fetchBooks(searchText)            
    }
  })
}

(function() {

  function displayBooks(data) {
   var books = data[0];
   $('#newest-books-by-title').append(books.title)
   $('#newest-books-by-authors').append(books.author)
   $('#newest-books-by-subject').append(books.subject) 
  }

  function fetchBooks(searchText){
    $.ajax({
          url: '/home/show_selected_books',
          type: 'get',
          data: {searchText: searchText},
          success: displayBooks 
        })
  }
})()