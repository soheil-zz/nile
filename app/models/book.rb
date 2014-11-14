class Book < ActiveRecord::Base
  attr_accessible :title

  has_many :authorships
  has_many :authors, :through => :authorships

  has_many :book_subjects
  has_many :subjects, :through => :book_subjects

  def self.order_by_authors
    Book.joins(:authors).order("authors.name")
  end

  def self.order_by_subjects
    Book.joins(:subjects).order("subjects.name")
  end
end
