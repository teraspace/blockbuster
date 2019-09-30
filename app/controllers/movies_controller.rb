class MoviesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_movie, only: [:show,:edit,:update,:destroy]
    before_action :redirect_if_not_signed_in, only: [:new]
    def index
      @movies = Movie.all
    end

    def show
        @movie
    end

    def create
        @movie = Movie.create(create_movie)
        if @movie.save 
            redirect_to movie_path(@movie) 
        else
            redirect_to root_path
        end
    end
    
    def update
        p update_movie
       @movie.update(update_movie)
        redirect_to root_path
       
    end
    def edit
        @movie
    end
    def delete
        @movie
    end
    def destroy
        @movie.destroy!
        redirect_to root_path
    end
    def new
        @movie = Movie.new
    end
    private

    def set_movie
        p params
        @movie = Movie.find(params[:id])
    end

    def update_movie
        params.require(:movie).permit(:name, :producer, :country, :synopsis)
        .merge(user_id: current_user.id)
    end
    def create_movie
        params.require(:movie).permit(:name, :producer, :country, :synopsis)
        .merge(user_id: current_user.id)
    end

end
