class CoversController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_album_ownership
  def new
    @cover = @album_ownership.cover || @album_ownership.build_cover
  end

  def create
    @cover = @album_ownership.create_cover(album_ownership_params[:cover])
    flash[:notice] = "Uploaded cover for #{@album_ownership.artist} - #{@album_ownership.title}"
    redirect_to album_ownerships_url
  end

protected
  def find_album_ownership
    @album_ownership = current_user.album_ownerships.find(album_ownership_params[:album_ownership_id])
  end

  def album_ownership_params
    params.permit(:album_ownership_id, cover: [:image])
  end
end