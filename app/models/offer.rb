# == Schema Information
#
# Table name: offers
#
#  id         :bigint(8)        not null, primary key
#  offer_type :string           default("sale"), not null
#  block_id   :bigint(8)
#

class Offer < ApplicationRecord
  has_one :price
end
