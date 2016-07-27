class BookSubject < ActiveRecord::Base
  before_validation on: [:create, :update] do
    self.created_at = Date.today
  end
  attr_accessible :book_id, :subject_id
end
