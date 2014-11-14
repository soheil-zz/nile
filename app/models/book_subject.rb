class BookSubject < ActiveRecord::Base
  attr_accessible :subject_id, :book_id
  belongs_to :subject
  belongs_to :book
end
