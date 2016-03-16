class AuthorsBooks < ActiveRecord::Migration
  def change
    create_table :authors_books do |t|
      t.integer :book_id
      t.integer :author_id
    end
  end
end
