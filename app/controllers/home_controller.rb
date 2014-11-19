class HomeController < ApplicationController

  def index
    @books = Book.includes(:authors, :subjects).all
  end

  def search
    search_string = params[:search][:text]
    first_two = search_string[0..1]
    result = []
    case first_two
      when "t:"
        book = Book.includes(:authors, :subjects).find_by_title(search_string[2..-1])
        result.push(book) unless book.nil?
      when "a:"
        author = Author.find_by_name(search_string[2..-1])
        result = author.books.includes(:authors, :subjects) unless author.nil?
      when "s:"
        subject = Subject.find_by_name(search_string[2..-1])
        result = subject.books.includes(:authors, :subjects) unless subject.nil?
    end
    @books = result
    render partial: "books", locals: {books: @books} and return
  end
  
end