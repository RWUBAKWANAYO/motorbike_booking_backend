require 'rails_helper'

RSpec.describe Motorbike, type: :model do
  before :each do
    @category = Category.create(categname: 'Sport')
    @motorbike = Motorbike.new(motor_name: 'BMW', year: 2022,
                               image: 'https://www.bmw.com.jpg',
                               price: 200)
    @motorbike.save
  end

  context 'validations' do
    it 'should be invalid without a motor_name' do
      @motorbike.motor_name = nil
      expect(@motorbike).to_not be_valid
    end
    it 'should be invalid without a year' do
      @motorbike.year = nil
      expect(@motorbike).to_not be_valid
    end
    it 'should be invalid without an image' do
      @motorbike.image = nil
      expect(@motorbike).to_not be_valid
    end
    it 'should be invalid without a price' do
      @motorbike.price = nil
      expect(@motorbike).to_not be_valid
    end
    it 'should be invalid if price is less than 0' do
      @motorbike.price = -1
      expect(@motorbike).to_not be_valid
    end
    it 'should be invalid if price is equal to 0' do
      @motorbike.price = 0
      expect(@motorbike).to_not be_valid
    end
  end
  context 'associations' do
    it 'belongs to a category' do
      associate = described_class.reflect_on_association(:category)
      expect(associate.macro).to eq :belongs_to
    end
    it 'has many reservations' do
      associate = described_class.reflect_on_association(:reservations)
      expect(associate.macro).to eq :has_many
    end
  end
end
