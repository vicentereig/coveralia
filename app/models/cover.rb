class Cover < ActiveRecord::Base
  belongs_to      :album_ownership

  mount_uploader  :image, CoverUploader

  attr_accessible :image
end
