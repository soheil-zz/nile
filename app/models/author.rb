class Author < ActiveRecord::Base
  attr_accessible :name
  has_many :books, dependent: :destroy
end
