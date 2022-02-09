require './lib/room'
require './lib/house'

RSpec.describe House do
  context "Iteration 2" do
    it "exists" do
      house = House.new("$400000", "123 sugar lane")
      expect(house.price).to eq(400000)
    end
  end
end
