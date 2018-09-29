class MoviesController < ApplicationController
  before_action :set_movie, only: %i[edit update show destroy]
  def index
    @movies = Movie.all
  end
  
  def new
  end
  
  def create
  end 
  
  def edit
  end
  
  def update
  end
  
  def show
  end
  
  def destroy
  end
  private
    def set_movie
      @movie = Movie.find(params[:id])
    end
    
    def movie_params
      params.require(:movie).permit(:title, :description, :imdb)
    end
end
