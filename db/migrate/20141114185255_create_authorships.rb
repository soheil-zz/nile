class CreateAuthorships < ActiveRecord::Migration
  def change
    create_table :authorships do |t|
      t.integer :book_id, :null => false
      t.integer :author_id, :null => false

      t.timestamps
    end
    add_index :authorships, :book_id
    add_index :authorships, :author_id
    add_index :authorships, [:book_id, :author_id], :unique => true
  end
end
