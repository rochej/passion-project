class CreateGoldstars < ActiveRecord::Migration
  def change
    create_table :goldstars do |t|
      t.belongs_to :user
      t.belongs_to :chore
      t.timestamps
    end
  end
end
