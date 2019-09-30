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
  context 'Validations' do
    let(:movie) { build(:movie) }
  
    it 'creates succesfully' do 
      expect(movie).to be_valid
    end
  
    it 'is not valid without a category' do 
      movie.category_id = nil
      expect(movie).not_to be_valid
    end
  
    it 'is not valid without a title' do 
      movie.title = nil
      expect(movie).not_to be_valid
    end
  
    it 'is not valid  without a user_id' do
      movie.user_id = nil
      expect(movie).not_to be_valid
    end
  
    it 'is not valid  with a title, shorter than 5 characters' do 
      movie.title = 'a' * 4
      expect(movie).not_to be_valid
    end
  
    it 'is not valid  with a title, longer than 255 characters' do 
      movie.title = 'a' * 260
      expect(movie).not_to be_valid
    end
  
    it 'is not valid without a content' do 
      movie.content = nil
      expect(movie).not_to be_valid
    end
  
    it 'is not valid  with a content, shorter than 20 characters' do 
      movie.content = 'a' * 10
      expect(movie).not_to be_valid
    end
  
    it 'is not valid  with a content, longer than 1000 characters' do 
      movie.content = 'a' * 1050
      expect(movie).not_to be_valid
    end
  end 
end