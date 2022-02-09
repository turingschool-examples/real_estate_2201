require './lib/room.rb'

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
      expect(room1.area).to eq(130)
      expect(room2.area).to eq(180)
    end

    it "has paint status" do
      room1 = Room.new(:bedroom, 10, '13')
      expect(room1.paint_status).to eq(false)
    end

    it "can be painted" do
      room1 = Room.new(:bedroom, 10, '13')
      room1.paint
      expect(room1.paint_status).to eq(false)
    end
  end
end
