class HomeController < ApplicationController

  def index
    @books = Book.all
    @titles = @books.map { |book| book.title }
    @authors = @books.map { |book| book.author }
    @subjects = @books.map { |book| book.subject }
  end

  def show_selected_books
    query_string = params[:searchText].split(':')
    column_name = query_string.first()
    value = query_string.last()
    
    c, v = params[:searchText].split(":")

    case column_name
      when 'a'
        results = Book.where({author:value})
      when 't'
        results = Book.where({title:value})
      when 's'
        results = Book.where({subject:value})
    end

    render json: results
    # head :ok
  end
  
end