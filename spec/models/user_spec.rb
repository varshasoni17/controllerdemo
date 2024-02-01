require 'rails_helper'

RSpec.describe User, type: :model do
  context 'when creating a user' do 

  let(:user) { FactoryBot.create(:user) }

     it 'should be valid for all attributes' do 
      expect(user).to be_valid
    end

    it 'should have the correct name' do
      expect(user.name).to eq("John Doe")
    end

    it 'should have the correct email' do 
      expect(user.email). to eq("john@example.com")
    end

    it 'should have the correct city' do 
      expect(user.city). to eq("indore")
    end
    
  end
end
