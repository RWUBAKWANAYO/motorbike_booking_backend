require 'rails_helper'
RSpec.describe Reservation, type: :model do
  before :each do
    @user = User.create(name: 'Pedro', email: 'pedro@gmail.com', password: 'pass123',
                        password_confirmation: 'pass123')
    @category = Category.create(categname: 'Rally')
    @motorbike = Motorbike.create(motor_name: 'Yamaha', year: 2019,
                                  image: 'yamaha.jpg', category_id: @category.id)
  end
  context 'validations' do
    it 'should be invalid without a user' do
      @reservation = Reservation.new(user_id: nil, motorbike_id: @motorbike.id, date: Date.today)
      @reservation.save
      expect(@reservation).to_not be_valid
    end

    it 'should be invalid without a motorbike' do
      @reservation = Reservation.new(user_id: @user.id, motorbike_id: nil, date: Date.today)
      @reservation.save
      expect(@reservation).to_not be_valid
    end

    it 'should be invalid without a date' do
      @reservation = Reservation.new(user_id: @user.id, motorbike_id: @motorbike.id, date: nil)
      @reservation.save
      expect(@reservation).to_not be_valid
    end

    it 'should be invalid without a city' do
      @reservation = Reservation.new(user_id: @user.id, motorbike_id: @motorbike.id, date: Date.today, city: nil)
      @reservation.save
      expect(@reservation).to_not be_valid
    end
  end
  context 'associations' do
    it 'belongs to user' do
      associate = described_class.reflect_on_association(:user)
      expect(associate.macro).to eq :belongs_to
    end
    it 'belongs to motorbike' do
      associate = described_class.reflect_on_association(:motorbike)
      expect(associate.macro).to eq :belongs_to
    end
  end
end
