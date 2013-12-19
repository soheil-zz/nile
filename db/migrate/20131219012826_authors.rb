class Authors < ActiveRecord::Migration
  def up
    create_table :authors do |t|
      t.string :author
    end
  end

  def down
    drop_table :authors
  end
end
