require './lib/room'
require './lib/house'

RSpec.describe House do
  context 'Iteration II' do
    let(:room_1) { Room.new(:bedroom, 10, '13') }
    let(:room_2) { Room.new(:bedroom, 11, '15') }
    let(:room_3) { Room.new(:living_room, 25, '15') }
    let(:room_4) { Room.new(:basement, 30, '41') }
    let(:house) { House.new("$400000", "123 sugar lane") }

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

      it 'can return above_market_average' do
        house = House.new("$400000", "123 sugar lane")
        expect(house.above_market_average?).to eq(false)
      end

      it 'can get all rooms from a given category' do
        house.add_room(room_1)
        house.add_room(room_2)
        house.add_room(room_3)
        house.add_room(room_4)
        expect(house.rooms_from_category(:bedroom)).to eq([room_1, room_2])
        expect(house.rooms_from_category(:basement)).to eq([room_4])
      end

      it 'can calculate total area of house' do
        house.add_room(room_1)
        house.add_room(room_2)
        house.add_room(room_3)
        house.add_room(room_4)
        expect(house.area).to eq(1900)
      end

      it 'can create details hash' do
        expect(house.details).to eq({ "price" => house.price, "address" => house.address })
      end
    end
  end
end
