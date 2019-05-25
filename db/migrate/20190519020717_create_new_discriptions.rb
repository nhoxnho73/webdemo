class CreateNewDiscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :new_discriptions do |t|
      t.integer :code
      t.text :discription

      t.timestamps
    end
  end
end
