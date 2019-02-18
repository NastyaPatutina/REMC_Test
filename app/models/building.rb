# == Schema Information
#
# Table name: buildings
#
#  id             :bigint(8)        not null, primary key
#  building_class :string           not null
#  street         :string           not null
#  house_number   :string           not null
#  floors         :integer          default(0), not null
#

class Building < ApplicationRecord
 include Filterable

 has_many :blocks
 has_many :offers, through: :blocks
 has_many :prices, through: :blocks

 scope :building_class, ->(b_class){ where(building_class: b_class)}
 scope :street, ->(b_class){ where(street: b_class)}
 scope :house_number, ->(b_class){ where(house_number: b_class)}
 scope :floors, ->(b_class){ where(floors: b_class)}

end
