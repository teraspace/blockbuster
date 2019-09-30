require 'rails_helper'

RSpec.describe MoviesHelper, :type => :helper do

  context '#create_new_movie_partial_path' do
    it "returns a signed_in partial's path" do
      helper.stub(:user_signed_in?).and_return(true)
      expect(helper.create_new_movie_partial_path). to (
        eq 'posts/branch/create_new_movie/signed_in'
      )
    end

    it "returns a signed_in partial's path" do
      helper.stub(:user_signed_in?).and_return(false)
      expect(helper.create_new_movie_partial_path). to (
        eq 'posts/branch/create_new_movie/not_signed_in'
      )
    end
  end

  

  context '#no_movies_partial_path' do
    it "returns a no_movies partial's path" do
      assign(:movies, [])
      expect(helper.no_movies_partial_path).to (
        eq 'movies/branch/no_movies'
      )
    end

    it "returns an empty partial's path" do
      assign(:movies, [1])
      expect(helper.no_movies_partial_path).to (
        eq 'shared/empty_partial'
      )
    end
    context '#movie_format_partial_path' do
      it "returns a home_page partial's path" do
        helper.stub(:current_page?).and_return(true)
        expect(helper.movie_format_partial_path).to (
          eq 'movies/movie/home_page'
        )
      end
    
      it "returns a branch_page partial's path" do
        helper.stub(:current_page?).and_return(false)
        expect(helper.movie_format_partial_path).to (
          eq 'movies/movie/branch_page'
        )
      end
    end  
  end
end