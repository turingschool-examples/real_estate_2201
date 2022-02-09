require './lib/room'
require './lib/house'

RSpec.describe House do
  context 'Iteration II' do
    let(:room_1) {Room.new(:bedroom, 10, '13')}
    let(:room_2) {Room.new(:bedroom, 11, '15')}
    let(:house) {House.new("$400000", "123 sugar lane")}

    describe 'House' do
      it 'exists' do
        expect(house).to be_a(House)
      end

      it 'has attributes' do
        expect(house.price).to eq("$400000")
        expect(house.address).to eq("123 sugar lane")
      end

      it 'can add rooms' do
        house.add_room(room_1)
        house.add_room(room_2)

        expect(house.rooms).to eq([room_1, room_2])
      end

    end

  end
end
