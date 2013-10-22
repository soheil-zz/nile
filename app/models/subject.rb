class Subject < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name
  
  has_many :book_subjects
  has_many :books, :through => :book_subjects
end
