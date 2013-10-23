class HomeController < ApplicationController

  def index
  end

  def search
    query = params[:query]
    
    if query =~ /^t:/
      @results = Book.find_all_by_title(query.gsub(/^t:/, ""))
    elsif query =~ /^a:/
      a = Author.find_by_name(query.gsub(/^a:/, ""))
      @results = a.books
    elsif query =~ /^s:/
      s = Subject.find_by_name(query.gsub(/^s:/, ""))
      @results = s.books
    end 
      
    render :partial => 'search'
  end
  
end