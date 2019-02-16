class CreateBuilding < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :class, null: false
      t.string :street, null: false
      t.string :house_number, null: false
      t.integer :floors, null: false, default: 0
    end
  end
end
