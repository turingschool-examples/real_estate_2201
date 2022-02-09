require './lib/room'
require './lib/house'
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')

RSpec.describe House do
  context "Iteration 2" do

    it "exists" do
      expect(house).to be_an_instance_of(House)
    end

    it "has a price" do
      expect(house.price).to eq("$400000")
    end

    it "has an address" do
      expect(house.address).to eq("123 sugar lane")
    end

    it "checks initial rooms" do
      expect(house.rooms).to eq([])
    end


    it "adds initial rooms" do
      house.add_room(room_1)
      house.add_room(room_2)
      expect(house.rooms).to eq([room_1, room_2])
    end
  end


context "Iteration 3" do
    it "checks whether above market average price" do
      expect(house.above_market_average?).to eq(false)
    end

    it "returns the rooms of a category" do
      house_new = House.new("$400000", "123 sugar lane")
      house_new.add_room(room_1)
      house_new.add_room(room_2)
      house_new.add_room(room_3)
      house_new.add_room(room_4)
      expect(house_new.rooms_from_category(:bedroom)).to eq([room_1, room_2])
      expect(house_new.rooms_from_category(:basement)).to eq([room_4])
    end

    it "calculates the hosue area" do
      house_new = House.new("$400000", "123 sugar lane")
      house_new.add_room(room_1)
      house_new.add_room(room_2)
      house_new.add_room(room_3)
      house_new.add_room(room_4)
      expect(house_new.house_area).to eq(1900)
    end

    it "shows house details" do
      house_new = House.new("$400000", "123 sugar lane")
      expect(house_new.details).to eq({"price" => 400000, "address" => "123 sugar lane"})
    end

  end

  context "Iteration 4" do

    it "calculates price per square foot" do
      house_new = House.new("$400000", "123 sugar lane")
      house_new.add_room(room_1)
      house_new.add_room(room_2)
      house_new.add_room(room_3)
      house_new.add_room(room_4)
      expect(house_new.price_per_square_foot).to eq(210.53)
    end

    it "sorts room by area in descending order" do
      house_new = House.new("$400000", "123 sugar lane")
      house_new.add_room(room_1)
      house_new.add_room(room_2)
      house_new.add_room(room_3)
      house_new.add_room(room_4)

      expect(house_new.rooms_sorted_by_area).to eq([room_4, room_3, room_2, room_1])
    end

    it "shows rooms by category" do
      house_new = House.new("$400000", "123 sugar lane")
      house_new.add_room(room_1)
      house_new.add_room(room_2)
      house_new.add_room(room_3)
      house_new.add_room(room_4)

      expect(house_new.rooms_by_category).to eq({:bedroom => [room_1, room_2], :living_room => [room_3], :basement =>[room_4]})
    end
  end

end
