require 'rspec'
require "./lib/house"
require "./lib/room"

RSpec.describe House do

  it 'exists' do
    house = House.new("$400000", "123 sugar lane")
    expect(house).to be_an_instance_of(House)
  end

  it 'gets the price attribute' do
    house = House.new("$400000", "123 sugar lane")
    expect(house.price).to eq(400000)
  end

  it 'gets the address attribute' do
    house = House.new("$400000", "123 sugar lane")
    expect(house.address).to eq("123 sugar lane")
  end

  it 'gets the rooms attribute' do
    house = House.new("$400000", "123 sugar lane")
    expect(house.rooms).to eq([])
  end

  it 'adds a room class to the rooms array' do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    house.add_room(room_1)
    expect(house.rooms.length).to eq(1)
  end

  it 'tells if the house is above market average' do
    house = House.new("$400000", "123 sugar lane")
    expect(house.above_market_average?).to eq(false)
  end

  it 'shows rooms of the house by their category' do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')

    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)

    house.rooms_from_category(:bedroom)
    house.rooms_from_category(:basement)
    house.rooms_from_category(:living_room)
    expect(house.bedroom_arr.length).to eq(2)
    expect(house.living_room_arr.length).to eq(1)
    expect(house.basement_arr.length).to eq(1)
  end

  it 'shows the total area of the house' do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')

    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)

    expect(house.area).to eq(6384)
  end

  it 'shows the house details' do
    house = House.new("$400000", "123 sugar lane")
    expect(house.details["price"]).to eq(400000)
    expect(house.details["address"]).to eq("123 sugar lane")
  end

  it 'shows rooms by category' do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')

    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)

    house.rooms_from_category(:bedroom)
    house.rooms_from_category(:basement)
    house.rooms_from_category(:living_room)

    expect(house.rooms_by_category[:bedroom].length).to eq(2)
    expect(house.rooms_by_category[:basement].length).to eq(1)
    expect(house.rooms_by_category[:living_room].length).to eq(1)
  end

end
