require "./lib/room"
require "./lib/house"
require "rspec"
require "pry"

describe House do
  it "exists" do
    house = House.new("400000", "123 Sugar Lane")
    expect(house).to be_an_instance_of(House)
  end

  it "has attributes" do
    house = House.new("400000", "123 Sugar Lane")
    expect(house.price).to eq("400000")
    expect(house.address).to eq("123 Sugar Lane")
    expect(house.rooms).to eq([])
  end

  it "has rooms" do
    house = House.new("400000", "123 Sugar Lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    house.add_room(room_1)
    house.add_room(room_2)
    expect(house.rooms).to eq([room_1, room_2])
  end

  it "is affordable" do
    house = House.new("400000", "123 Sugar Lane")
    expect(house.above_market_average).to eq(false)
  end

  it "can be organized" do
    house = House.new("400000", "123 Sugar Lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, "15")
    room_4 = Room.new(:basement, 30, "41")
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)
    # binding.pry
    expect(house.rooms_from_category(:bedroom)).to eq([room_1, room_2])
    expect(house.rooms_from_category(:basement)).to eq([room_4])
  end

  it "can be listed" do
    house = House.new("400000", "123 Sugar Lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, "15")
    room_4 = Room.new(:basement, 30, "41")
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)
    expect(house.area).to eq(1900)
    expect(house.details).to eq({"price" => 400000, "address" => "123 Sugar Lane"})
  end

  it "can be listed part 2" do
    house = House.new("400000", "123 Sugar Lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, "15")
    room_4 = Room.new(:basement, 30, "41")
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)
    expect(house.price_per_square_foot).to eq(210.53)
  end

    it "can be organized part 2" do
      house = House.new("400000", "123 Sugar Lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, "15")
      room_4 = Room.new(:basement, 30, "41")
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)
      expect(house.rooms_sorted_by_area).to eq([room_4, room_3, room_2, room_1])
    end

end
