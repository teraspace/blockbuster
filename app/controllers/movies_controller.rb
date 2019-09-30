class MoviesController < ApplicationController
    #before_action :authenticate_user!
    def index
      @movies = Movie.all
    end

    def show
        @movie
    end

    def create
        Movie.create(create_movie)
    end
    
    def update
        @movie.update(update_movie)
    end

    def destroy
        @movie.destroy!
    end

    private

    def set_movie
        @movie = Movie.find(params[:id])
    end

    def update_movie
        params.require(:movies)
    end
    def create_movie
        params.require(:movies)
    end
end
