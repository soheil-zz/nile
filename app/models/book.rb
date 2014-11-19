class Book < ActiveRecord::Base
  attr_accessible :title

  has_many :book_subs
  has_many :subjects, through: :book_subs
  has_many :book_authors
  has_many :authors, through: :book_authors
end
