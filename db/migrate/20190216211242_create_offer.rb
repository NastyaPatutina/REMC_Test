class CreateOffer < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.string :offer_type, null: false, default: "sale"
      t.belongs_to :block, index: true
    end
  end
end
