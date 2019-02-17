# == Schema Information
#
# Table name: prices
#
#  id       :bigint(8)        not null, primary key
#  value    :bigint(8)        default(0), not null
#  currency :integer          default(0), not null
#  offer_id :bigint(8)
#

class Price < ApplicationRecord
end
