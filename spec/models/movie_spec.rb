require 'rails_helper'

RSpec.describe Movie, type: :model do
  context 'Associations' do
    it 'belongs_to user' do
      association = described_class.reflect_on_association(:user).macro
      expect(association).to eq :belongs_to
    end

    it 'belongs_to movie' do
      association = described_class.reflect_on_association(:movie).macro
      expect(association).to eq :belongs_to
    end
  end
end