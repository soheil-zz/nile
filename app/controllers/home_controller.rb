class HomeController < ApplicationController

  def search
  	@books = []
  	['t', 'a', 's'].each do |operator|
	  	matches = params[:q].scan(/#{operator}:(.*)/)
	  	if matches.any?
	  		keyword = matches[0][0]
		  	case operator
	  		when 't'
			  	@books = Book.where('title LIKE ?', '%' + keyword + '%')
	  		when 'a'
			  	@books = Author.where('name LIKE ?', '%' + keyword + '%').map{|a|a.books}.flatten
	  		when 's'
			  	@books = Subject.where('subject LIKE ?', '%' + keyword + '%').map{|s|s.books}.flatten
			  end
	  	end
  	end
  	respond_to do |format|
		  format.html { render :layout => false }
		end
  end
  
end