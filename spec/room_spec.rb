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
      room = Room.new(:bedroom, 10, '13')
      expect(room.area).to eq(130)
    end

    it "can return painted status" do
      room = Room.new(:bedroom, 10, '13')
    expect(room.is_painted?).to eq(false)
    end

    it "can can change painted status" do
      room = Room.new(:bedroom, 10, '13')
      room.paint
      expect(room.is_painted?).to eq(true)
    end



  end
end
