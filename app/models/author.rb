class Author < ActiveRecord::Base
  attr_accessible :name

  has_many :books
  has_many :subjects
end
