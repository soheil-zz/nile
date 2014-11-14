class HomeController < ApplicationController

  def index
    @books = Book.includes(:authors, :subjects).all
    @authors = Author.includes(:books).all
    @subjects = Subject.includes(:books).all
  end

  def search
    input = params[:search_text]
    if input.first == "t"
      @books = Book.where("title LIKE ?", input[3..-1])
      render :json => @books
    elsif input.first == 'a'
      @authors = Author.includes(:books).where("name LIKE ?", input[3..-1]).all
      books = []
      @authors.each do |author|
        books += author.books
      end
      render :json => books
    elsif input.first == 's'
      @subjects = Subject.includes(:books).where("name LIKE ?", input[3..-1]).all
      books = []
      @subjects.each do |subject|
        books += subject.books
      end
      render :json => books
    else
      render :json => [:status => "broken"]
    end
  end

end
