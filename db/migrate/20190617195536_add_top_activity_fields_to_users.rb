class AddTopActivityFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :activity1, :string
    add_column :users, :activity2, :string
    add_column :users, :activity3, :string
    add_column :users, :activity1_time, :int
    add_column :users, :activity2_time, :int
    add_column :users, :activity3_time, :int
  end
end
