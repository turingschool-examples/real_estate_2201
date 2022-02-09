require "./lib/room"
require "./lib/house"
require "rspec"

describe House do
  it "exists" do
    house = House.new("$400000", "123 Sugar Lane")
    expect(house).to be_an_instance_of(House)
  end

  it "has attributes" do
    house = House.new("$400000", "123 Sugar Lane")
    expect(house.price).to eq("$400000")
    expect(house.address).to eq("123 Sugar Lane")
  end
end
