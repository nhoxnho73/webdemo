class CreateNewDiscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :new_discriptions do |t|
      t.bigint :new_status_id, index: true, null: false
      t.text :discription

      t.timestamps
    end
  end
end
