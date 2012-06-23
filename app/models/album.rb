class Album < ActiveRecord::Base
  attr_accessible :artist, :title

  has_many :album_ownerships
  has_many :users, through: :album_ownerships, uniq: true

end
