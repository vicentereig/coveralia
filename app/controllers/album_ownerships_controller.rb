class AlbumOwnershipsController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def new
    @album_ownership = current_user.album_ownerships_build
    @album           = @album_ownership.build_album
  end

  def create
    puts album_ownership_params
    @album_ownership = current_user.album_ownerships_create(album_ownership_params[:album_ownership])
    flash[:notice]   = "#{@album_ownership.artist} - #{@album_ownership.title} was successfully added."
    redirect_to album_ownerships_url
  end

  def show
  end

  def update
  end

protected
  def album_ownership_params
    params.permit(album_ownership: {album_attributes: [:title, :artist]})
  end
end
