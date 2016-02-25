class AddCellAndEmailToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cell, :string
    add_column :users, :email, :string
  end
end
