class AlbumOwnershipsController < ApplicationController
  before_filter :authenticate_user!

  def index
    query = (params[:q] || {}).dup
    @q    = current_user.album_ownerships.search(query)
    @album_ownerships = @q.result distinct: true
  end

  def new
    @album_ownership = current_user.album_ownerships_build
    @album           = @album_ownership.build_album
  end

  def create
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
    params.permit(album_ownership: {album_attributes: [:title, :artist, :covers]})
  end
end
