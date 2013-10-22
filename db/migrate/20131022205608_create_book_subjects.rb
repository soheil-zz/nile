class CreateBookSubjects < ActiveRecord::Migration
  def change
    create_table :book_subjects do |t|
      t.integer :book_id
      t.integer :subject_id
      t.timestamps
    end
  end
end
