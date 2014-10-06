class Subject < ActiveRecord::Base
  attr_accessible :name

  has_many :books
  has_many :authors
end
