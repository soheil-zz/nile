function renderSearchResult(data) {
  var html = ""
         +'<div id="results">'
         +'<ul>';

  $.each(data, function(i, v) {
    html += '<li>' + v.title + '</li>'
  });
  // for(var i = 0; i < data.length; ++i) {
  //   html += '<li>' + data[i].title + '</li>'
  // }
  html += '</ul>';
  html += '</div>';
  return html;
};


$(document).ready(function() {
  // function(data) {
  //   var html = ""
  //          +'<div id="results">'
  //          +'<ul>';
  //
  //   $.each(data, function(i, v) {
  //     html += '<li>' + v.title + '</li>'
  //   });
  //   // for(var i = 0; i < data.length; ++i) {
  //   //   html += '<li>' + data[i].title + '</li>'
  //   // }
  //   html += '</ul>';
  //   html += '</div>';
  //   return html;
  // };

  $("#search-text").on("keypress", function(event) {
    if(event.which == 13) {
      event.preventDefault();
      var input = event.target.value;
      $.ajax("/search",{
        type: "get",
        data: {"search_text": input},
      success: function(data, status) {
        $("#search-results div").remove();
        $("#search-results").html(renderSearchResult(data));
      }
      })
    }
  });
});
