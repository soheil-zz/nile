class Book < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :title
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :subjects
end
