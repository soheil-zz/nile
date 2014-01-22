class HomeController < ApplicationController

  def index
    @books = Book.all
    @subjects = Subject.all
    @authors = Author.all
  end
  
end
