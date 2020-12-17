class Admins::GenresController < ApplicationController
  layout "admin-header"

  def index
    @genres = Genre.all
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to admins_genres_path
  end

  def edit
  end

  def update
  end

private
  def genre_params
    params.require(:genre).permit(:name, :is_active)
  end
end
