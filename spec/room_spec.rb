require './lib/room'
require 'rspec'

RSpec.describe Room do
  context "Iteration 1" do
    it "exists" do
      paint1 = Paint.new("green")
      room = Room.new(:bedroom, 10, '13')
      expect(room).to be_an_instance_of(Room)
    end

    it "has a category" do
      paint1 = Paint.new("green")
      room = Room.new(:bedroom, 10, '13')
      expect(room.category).to eq(:bedroom)
    end

    it "can get area" do
      paint1 = Paint.new("green")
      room1 = Room.new(:bedroom, 10, '13')
      room2 = Room.new(:living_room, 15, '12')
      expect(room1.area).to eq(130)
      expect(room2.area).to eq(180)
    end

    it "starts as unpainted" do
      paint1 = Paint.new("green")
      room1 = Room.new(:bedroom, 10, '13')
      room2 = Room.new(:living_room, 15, '12')
      expect(room1.is_painted?).to eq(false)
      expect(room2.is_painted?).to eq(false)
    end

    it "can be painted" do
      paint1 = Paint.new("green")
      room1 = Room.new(:bedroom, 10, '13',)
      room2 = Room.new(:living_room, 15, '12')
      room1.add_paint(paint1)
      room2.add_paint(paint1)
      expect(room1.is_painted?).to eq(true)
      expect(room2.is_painted?).to eq(true)
    end
  end
end
