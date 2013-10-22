class BookSubject < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :book
  belongs_to :subject
end
