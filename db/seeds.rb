# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

5.times do |i|
  Building.create(building_class: i % 2 == 0 ? "A" : "B",
                  street: "Street ##{Random.new.rand(1..3)}",
                  house_number: "#{i}",
                  floors: i + 20)
end

10.times do |i|
  Block.create(area: 70 * (i % 3 + 1), floor: (i % 5) * 3 + 1, building_id: Building.ids.at(i % 5))
end

20.times do |i|
  Offer.create(offer_type: i % 2 == 0 ? "rent" : "sale", block_id: Block.ids.at(i % 10))
end

20.times do |i|
  Price.create(value: Random.new.rand(1000..10000), currency: Random.new.rand(1..3), offer_id: Offer.ids.at(i))
end