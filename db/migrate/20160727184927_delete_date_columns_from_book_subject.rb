class DeleteDateColumnsFromBookSubject < ActiveRecord::Migration
  def change
    remove_column :books_subjects, :created_at, :datetime
    remove_column :books_subjects, :updated_at, :datetime
  end
end
