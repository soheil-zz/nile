class Author < ActiveRecord::Base
  attr_accessible :author
  has_and_belongs_to_many :books
end
