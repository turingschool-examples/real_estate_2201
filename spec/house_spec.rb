require './lib/room'
require './lib/house'

Rspec.describe House do
  describe 'initialize' do
    it 'exists' do
      house = House.new("$400000", "123 sugar lane")
      expect(house).to be_an_instance_of(House)
    end

    it 'starts with an empty array of rooms' do
      house = House.new("$400000", "123 sugar lane")
      expect(house.rooms).to eq([])
    end
  end

end
