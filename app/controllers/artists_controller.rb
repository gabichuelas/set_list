class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
  end

  def show
    @artist = Artist.find(params[:id])
    session[:secret] = "This time for real, though."
  end

  def create
    Artist.create(artist_params)
    redirect_to '/artists'
  end

  def destroy
    Artist.destroy(params[:id])
    redirect_to '/artists'
  end

  private

  def artist_params
    params.permit(:name)
  end
end
