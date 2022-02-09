require './lib/room.rb'

RSpec.describe House do
  context "Iteration 1" do
    it "exists" do
      house = House.new("$400000", "123 sugar lane")
      expect(house).to be_an_instance_of(House)
    end

    it "has price" do
      house = House.new("$400000", "123 sugar lane")
      expect(house.price).to eq("$400000")
    end

    it "has rooms" do
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      expect(room_1).to be_an_instance_of(Room)
      expect(room_2).to be_an_instance_of(Room)
    end
  end
end
