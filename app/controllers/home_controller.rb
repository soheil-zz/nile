class HomeController < ApplicationController

  def index
    @books = Book.all
    @authors = Author.includes(:books)
    @subjects = Subject.includes(:books)
  end

  def search
    query = params[:query]

    if query =~ /^t:/
      results = Book.where("title LIKE '%#{query.gsub('t:', '').downcase}%'")
    elsif query =~ /^a:/
      results = Author.where("name LIKE '%#{query.gsub('a:', '').downcase}%'")
    elsif query =~ /^s:/
      results = Subject.where("name LIKE '%#{query.gsub('s:', '').downcase}%'")
    end

    render json: results
  end
end
