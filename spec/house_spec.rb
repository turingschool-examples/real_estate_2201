require './lib/room'
require './lib/house'

RSpec.describe House do
  context "Iteration 2" do
    it "house price is 400000" do
      house = House.new("$400000", "123 sugar lane")
      expect(house.price).to eq(400000)
    end
  end

  it "house address is 123 sugar lane" do
    house = House.new("$400000", "123 sugar lane")
    expect(house.address).to eq("123 sugar lane")
  end
end
