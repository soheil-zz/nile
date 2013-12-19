class Subjects < ActiveRecord::Migration
  def up
    create_table :subjects do |t|
      t.string :subject
    end
  end

  def down
    drop_table :subjects
  end
end
