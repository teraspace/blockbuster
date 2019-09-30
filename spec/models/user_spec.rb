require 'rails_helper'

RSpec.describe User, type: :model do

  context 'Associations' do
    it 'has_many movies' do
      association = described_class.reflect_on_association(:movies)
      expect(association.macro).to eq :has_many
      expect(association.options[:dependent]).to eq :destroy
    end
  end
end