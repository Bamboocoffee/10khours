class CreateFromScratches < ActiveRecord::Migration[5.2]
  def change
    create_table :from_scratches do |t|

      t.timestamps
    end
  end
end
