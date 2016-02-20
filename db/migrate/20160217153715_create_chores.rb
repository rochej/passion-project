class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|
      t.string :name
      t.integer :points
      t.boolean :clean
      t.integer :frequency
      t.string :icon
      t.timestamps
    end
  end
end
