class RenameBookSubject < ActiveRecord::Migration
  def change
    rename_table :book_subjects, :books_subjects
  end
end
