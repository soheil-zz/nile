class SearchController < ApplicationController
  def search
    search_input = params[:search_input]
    search_values = search_input.split(":")
    case search_values.first
    when "t"
      @books = Book.search_by_title(search_values.last)
    end
    render :json => { books: @books.to_json }
  end
end