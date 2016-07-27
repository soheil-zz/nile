class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :subject

      t.timestamps
    end
    add_index :subjects, :subject
  end
end
