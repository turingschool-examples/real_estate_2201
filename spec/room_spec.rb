require 'rspec'
require 'pry'
require './lib/room'

RSpec.describe Room do
  context "Iteration 1" do
    it "exists" do
      room = Room.new(:bedroom, 10, '13')
      expect(room).to be_an_instance_of(Room)
    end

    it "has a category" do
      room = Room.new(:bedroom, 10, '13')
      expect(room.category).to eq(:bedroom)
    end

    it "can get area" do
      room1 = Room.new(:bedroom, 10, '13')
      room2 = Room.new(:living_room, 15, '12')
      room1.area
      room2.area
      expect(room1.area).to eq(130)
      expect(room2.area).to eq(180)
    end

    xit "knows if a room is painted"
    room1 = Room.new(:bedroom, 10, '13')
    room2 = Room.new(:living_room, 15, '12')
    room1
    expect(room1.is_painted).to be_in(false)
  end
end
