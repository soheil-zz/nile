class HomeController < ApplicationController

  def index
  end
  
  def search 
    classes = {
      't' => { column: :title},
      'a' => { table: :authors, column: :author},
      's' => { table: :subjects, column: :subject}
    }
      
    query = params[:search]['text']  
    type = query[0]
    
    search = query.split(':').last
    
    base = Book

    base = classes[type][:table].nil? ? base : base.joins(classes[type][:table])

    @results = base.where("#{classes[type][:column]} LIKE '%#{search}%'").all

   puts @results.inspect 
  end
end
