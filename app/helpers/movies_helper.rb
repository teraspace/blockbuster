module MoviesHelper
    def create_new_movie_partial_path
        if user_signed_in?
          'movies/new'
        else
          'movies/branch/create_new_movie/not_signed_in'
        end
      end
      def no_movies_partial_path
        @movies.empty? ? 'movies/branch/no_movies' : 'shared/empty_partial'
      end
      def movie_format_partial_path
        current_page?(root_path) ? 'movies/movie/home_page' : 'movies/movie/branch_page'
      end

    
end
