require './lib/room'
require './lib/house'
require 'pry'
require 'monetize'

RSpec.describe House do
  context 'Iteration 2' do
    it 'exists' do
      house = House.new("$400000", "123 sugar lane")

      expect(house).to be_a(House)
      expect(house.price).to eq(400000)
    end
  end
end
