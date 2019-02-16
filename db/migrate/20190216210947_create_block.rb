class CreateBlock < ActiveRecord::Migration[5.2]
  def change
    create_table :blocks do |t|
      t.integer :area, null: false, default: 0
      t.integer :floor, null: false, default: 0
      t.belongs_to :buildings, index: true
    end
  end
end
