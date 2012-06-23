class AlbumOwnership < ActiveRecord::Base
  belongs_to :user
  belongs_to :album

  attr_accessible :album_attributes
  accepts_nested_attributes_for :album

  delegate :title, :artist, to: 'album'
end
