class Book < ActiveRecord::Base
  attr_accessible :author, :subject, :title
end
