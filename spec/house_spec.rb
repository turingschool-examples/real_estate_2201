require 'pry'
require './lib/room'
require './lib/house'


RSpec.describe House do
  context "Iteration 2" do
    it "exists" do
      house = House.new("$400000", "123 sugar lane")

      expect(house).to be_an_instance_of(House)
    end

    it "has a #price" do
      house = House.new("$400000", "123 sugar lane")

      expect(house.price).to eq("$400000")
    end

    it "has an #address" do
      house = House.new("$400000", "123 sugar lane")
      expect(house.address).to eq("123 sugar lane")
    end

    it "#rooms starts empty" do
      house = House.new("$400000", "123 sugar lane")
      expect(house.rooms).to eq([])
    end

    it "#add_room can add a room to house" do

      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      house.add_room(room_1)
      house.add_room(room_2)

      expect(house.rooms).to eq([room_1,room_2])
    end
  end

  context "Iteration 3" do

    it "#above_market_average? starts false" do
     house = House.new("$400000", "123 sugar lane")
     expect(house.above_market_average?).to be false

    end

    it "#rooms_from_category for bedroom" do

      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')

      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)
      expected_value = [room_1,room_2]

      expect(house.rooms_from_category(:bedroom)).to eq(expected_value)
    end

    it "#rooms_from_category for basement" do

      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')

      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)
      expected_value = [room_4]

      expect(house.rooms_from_category(:basement)).to eq(expected_value)
    end

    it "#area returns total area for house" do
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')

      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)
      house.area

      expect(house.area).to eq(1900)
    end

    it "#details  house has price and address" do
      house = House.new("$400000", "123 sugar lane")
      expected_value = "$400000", "123 sugar lane"
      expect(house.details).to eq(expected_value)

    end

  end

  context "Iteration 4" do
    xit "#price_per_square_foot" do

      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')

      house.add_room(room_4)
      house.add_room(room_1)
      house.add_room(room_3)
      house.add_room(room_2)

      house.price_per_square_foot
    end
  end
end
