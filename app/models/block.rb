# == Schema Information
#
# Table name: blocks
#
#  id          :bigint(8)        not null, primary key
#  area        :integer          default(0), not null
#  floor       :integer          default(0), not null
#  building_id :bigint(8)
#

class Block < ApplicationRecord
  belongs_to :building
  has_many :offers
end
