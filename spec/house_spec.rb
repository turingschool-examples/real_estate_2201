require 'pry'
require 'rspec'
require './lib/room'
require './lib/house'


RSpec.describe House do
  it "exists" do
    house = House.new("400000", "123 sugar lane")
    expect(house).to be_an_instance_of(House)
  end

  it "can add rooms" do
    house = House.new("400000", "123 sugar lane")
    room1 = Room.new(:bedroom, 10, '13')
    house.add_room(room1)
    expect(house.rooms).to eq([room1])
  end

  it "can tell if it's above market average" do
    house = House.new("400000", "123 sugar lane")
    house.above_market_average?
    expect(house.above_market_average?). to eq(false)
  end

  it "can return rooms by category" do
    house = House.new("400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)
    #binding.pry
    expect(house.rooms_from_category(:bedroom)).to eq([room_1, room_2])
    expect(house.rooms_from_category(:basement)).to eq([room_4])
  end

  it "can calculate the price by square foot" do
    house = House.new("400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)
    expect(house.price_per_square_foot).to eq(210.53)
  end

  it "can sort the rooms by area" do
    house = House.new("400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)
    expect(house.rooms_sorted_by_area).to eq([room_4, room_3, room_2, room_1])
  end

  it "can sort rooms by category" do
    house = House.new("400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)
    expect(house.rooms_by_category).to eq([room_1, room_2, room_3, room_4])    
  end

end
