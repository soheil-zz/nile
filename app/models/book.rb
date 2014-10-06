class Book < ActiveRecord::Base
  attr_accessible :title, :author_id, :subject_id

  has_many :authors
  has_many :subjects

  def as_json(options={})
    { name: title }
  end
end
