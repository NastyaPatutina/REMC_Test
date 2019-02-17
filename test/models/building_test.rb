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

require 'test_helper'

class BuildingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
