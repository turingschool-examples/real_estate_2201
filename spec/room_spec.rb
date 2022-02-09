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
      expect(room1.area).to eq(130)
      expect(room2.area).to eq(180)
    end

    it "can tell if a room has been painted" do
      room1 = Room.new(:bedroom, 10, '13')
      room2 = Room.new(:living_room, 15, '12')
      expect(room1.is_painted?).to eq(false)
      expect(room2.is_painted?).to eq(false)
    end

    it "can paint a room" do
      room1 = Room.new(:bedroom, 10, '13')
      room1.paint
      expect(room1.is_painted?).to eq(true)
    end


  end
end
