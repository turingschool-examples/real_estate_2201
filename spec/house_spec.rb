require 'rspec'
require './lib/room'
require './lib/house'
require 'pry'

RSpec.describe House do

  it 'exists' do
    house = House.new("$400000", "123 sugar lane")
    expect(house).to be_an_instance_of House
  end

  it 'converts price to integer' do
    house = House.new("$400000", "123 sugar lane")
    expect(house.price).to be(400000)
  end

  it 'has an address' do
    house = House.new("$400000", "123 sugar lane")
    expect(house.address).to eq("123 sugar lane")
  end

  it 'defaults with empty array of rooms' do
    house = House.new("$400000", "123 sugar lane")
    expect(house.rooms).to eq([])
  end

  it 'can add rooms' do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    house.add_room(room_1)
    house.add_room(room_2)
    expect(house.rooms.empty?).to eq(false)
  end

  it 'can compare with market average' do
    house = House.new("$400000", "123 sugar lane")
    expect(house.above_market_average?).to eq(false)
  end

  it 'can list rooms by category' do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)
    # binding.pry
    expect(house.rooms_from_category(:basement).length).to eq(1)
  end

  it 'can find area of entire house' do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)
    expect(house.area).to eq(1900)
  end

  it 'makes a hash of house details' do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)
    expect(house.details).to eq({"price" => 400000, "address" => "123 sugar lane"})
  end
end
