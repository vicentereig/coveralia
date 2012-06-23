class AlbumOwnership < ActiveRecord::Base
  belongs_to :user
  belongs_to :album
  has_one    :cover

  attr_accessible :album_attributes, :cover, :cover_attributes
  accepts_nested_attributes_for :album, :cover

  delegate :title, :artist,              to: 'album'
  delegate :present?,      prefix: true, to: 'cover', allow_nil: true

end
