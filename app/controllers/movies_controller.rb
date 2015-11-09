class MoviesController < ApplicationController
  protect_from_forgery with: :null_session
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to @movie
    else
      render :new
    end
  end

  def edit
    @movie = Movie.find_by(params[:id])
  end

  def update
    @movie = Movie.find_by(params[:id])

    if @movie.update(movie_params)
      redirect_to @movie
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    if @movie.destroy
      head 204
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :summary, :youtube_embed_id, :thumbnail)
  end
end
