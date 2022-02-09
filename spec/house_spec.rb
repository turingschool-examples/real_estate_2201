require './lib/room'
require './lib/house'

describe House do
  it 'exists' do
    house = House.new("$400000", "123 sugar lane")
    expect(house).to be_an_instance_of(House)
  end

  it 'has a price and address' do
    house = House.new("$400000", "123 sugar lane")

    expect(house.price).to eq("$400000")
    expect(house.address).to eq("123 sugar lane")
  end
end
