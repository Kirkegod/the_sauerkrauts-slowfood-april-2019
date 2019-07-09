require 'rails_helper'

RSpec.describe Dish, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :description }
    it { is_expected.to have_db_column :price }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :price } 
    it { is_expected.to validate_presence_of :description } 
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryBot.create(:dish)).to be_valid 
    end
  end
end