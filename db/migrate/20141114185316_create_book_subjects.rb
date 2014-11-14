class CreateBookSubjects < ActiveRecord::Migration
  def change
    create_table :book_subjects do |t|
      t.integer :book_id, :null => false
      t.integer :subject_id, :null => false

      t.timestamps
    end
    add_index :book_subjects, :book_id
    add_index :book_subjects, :subject_id
    add_index :book_subjects, [:book_id, :subject_id], :unique => true
  end
end
