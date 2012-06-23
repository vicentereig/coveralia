FactoryGirl.define do
  factory :artificial_heart, class: AlbumOwnership do
    album { create :artificial_heart_album }
  end

  factory :hoss, class: AlbumOwnership do
    album { create :hoss_album }
  end

  factory :mumford, class: AlbumOwnership do
    album { create :mumford_album }
  end

  factory :mogwai_hawk, class: AlbumOwnership do
    album { create :hawk_is_howling }
  end

  factory :mogwai_earth, class: AlbumOwnership do
    album { create :earth_division }
  end
end
