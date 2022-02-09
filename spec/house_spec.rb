require './lib/room'
require './lib/house'

RSpec.describe Room do
  context "Iteration 1" do
    it "exists" do
      house = House.new()
      expect(house).to be_an_instance_of(House)
    end
  end
end
