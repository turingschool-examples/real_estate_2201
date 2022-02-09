require './lib/room'
require './lib/house'

RSpec.describe House do
  context "Iteration 1" do
    it "exists" do
      house = House.new("$400000", "123 sugar lane")
      expect(house).to be_an_instance_of(House)
    end

    it "has a price" do
      house = House.new("$400000", "123 sugar lane")
      expect(house.price).to eq(400000)
    end

    it "has rooms" do
      house = House.new("$400000", "123 sugar lane")
      expect(house.rooms).to eq([])
    end

    it "can add rooms" do
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      house.add_room(room_1)
      house.add_room(room_2)
      expect(house.rooms).to eq([room_1, room_2])
    end

    it "can determine the market rate" do
      house = House.new("$400000", "123 sugar lane")
      expect(house.above_market_average?).to be(false)
    end

  end
end
