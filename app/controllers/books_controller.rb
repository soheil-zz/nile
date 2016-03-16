class BooksController < ApplicationController
  def index
    books_we_want = Book.search(params[:search_term])

    render json: books_we_want
  end
end