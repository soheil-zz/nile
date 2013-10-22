class HomeController < ApplicationController

  def index
    @recent_books = Book.order("created_at DESC").limit(5)
    @recent_authors = Author.order("created_at DESC").limit(5).includes(:books)
    @recent_subjects = Subject.order("name DESC, created_at DESC").limit(5).includes(:books)
  end
  
end