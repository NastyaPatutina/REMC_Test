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
end
