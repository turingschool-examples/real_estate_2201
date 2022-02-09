require "./lib/room"
require "./lib/house"
require "rspec"

describe House do
  it "exists" do
    house = House.new("$400000", "123 Sugar Lane")
    expect(house).to be_an_instance_of(House)
  end

  it "has attributes" do
    house = House.new("$400000", "123 Sugar Lane")
    expect(house.price).to eq("$400000")
    expect(house.address).to eq("123 Sugar Lane")
    expect(house.rooms).to eq([])
  end

  it "has rooms" do
    house = House.new("$400000", "123 Sugar Lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    house.add_room(room_1)
    house.add_room(room_2)
    expect(house.rooms).to eq([room_1, room_2])
  end

  it "is affordable" do
    house = House.new("$400000", "123 Sugar Lane")
    expect(house.above_market_average).to eq(false)
  end

  it "can be organized" do
    house = House.new("$400000", "123 Sugar Lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, "15")
    room_4 = Room.new(:basement, 30, "41")
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)
    expect(house.rooms_from_category(:bedroom)).to eq([room_1, room_2])
  end
end
