class MoviesController < ApplicationController
    def new
        @movie = Movie.new
    end
    def create
        binding.pry
        @movie = Movie.create(movie_params)
        redirect_to movie_path(@movie)
    end
    def show
        @movie = Movie.find(params[:id])
    end
    private
    def movie_params
        params.require(:movie).permit(:title, :caption, :video)
    end
end
