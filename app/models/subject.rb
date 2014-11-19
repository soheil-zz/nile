class Subject < ActiveRecord::Base
  attr_accessible :name

  has_many :book_subs
  has_many :books, through: :book_subs
end
