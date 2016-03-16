class BooksSubjects < ActiveRecord::Migration
  def change
    create_table :books_subjects do |t|
      t.integer :book_id
      t.integer :subject_id
    end
  end
end
