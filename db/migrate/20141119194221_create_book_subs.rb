class CreateBookSubs < ActiveRecord::Migration
  def change
    create_table :book_subs do |t|
      t.integer :book_id
      t.integer :subject_id

      t.timestamps
    end
  end
end
