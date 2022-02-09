require 'pry'
require 'rspec'
require './lib/house'
require './lib/room'
require './lib/paint'

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

end
