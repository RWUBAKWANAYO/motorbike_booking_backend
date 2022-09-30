require 'rails_helper'

RSpec.describe Category, type: :brand do
  before :each do
    @category = Category.new(categname: 'Sport')
  end

  context 'validations' do
    it 'should be valid with category name' do
      @category.save
      expect(@category).to be_valid
    end

    it 'should be invalid without a category name' do
      @category.categname = nil
      @category.save
      expect(@category).to_not be_valid
    end
  end

  context 'associations' do
    it 'has many motorcycles' do
      associate = described_class.reflect_on_association(:motorcycles)
      expect(associate.macro).to eq :has_many
    end
  end
end
