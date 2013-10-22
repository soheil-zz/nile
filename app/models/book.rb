class Book < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :title

  has_many :authorships
  has_many :authors, :through => :authorships

  has_many :book_subjects
  has_many :subjects, :through => :book_subjects

  def self.search_by_title(title)
    Book.where(:title => title).all
  end
end
