class CreatePrice < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.integer :value, limit: 8, null: false, default: 0
      t.integer :currency, null: false, default: 0
      t.belongs_to :offer, index: true
    end
  end
end
