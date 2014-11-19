class BookSub < ActiveRecord::Base
  attr_accessible :book_id, :subject_id

  belongs_to :book
  belongs_to :subject
end
