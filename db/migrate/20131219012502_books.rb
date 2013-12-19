class Books < ActiveRecord::Migration
  def up
    create_table :books do |t|
      t.string :title
    end
  end

  def down
    drop_table :books
  end
end
