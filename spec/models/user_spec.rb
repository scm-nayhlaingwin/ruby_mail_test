require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'all field save successfully' do
      user = User.new(name: 'win win', email: 'win@gmail.com').save
      expect(user).to eq(true)
    end
    
    it 'ensure that email' do
      user = User.new(name: 'win win').save
      expect(user).to eq(false)
    end
  end
end
