class BookSubjects < ActiveRecord::Migration
  def up
    create_table :books_subjects do |t|
      t.integer :book_id
      t.integer :subject_id
    end
  end

  def down
    drop_table :books_subjects
  end
end
