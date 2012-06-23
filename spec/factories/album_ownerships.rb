FactoryGirl.define do
  factory :artificial_heart, class: AlbumOwnership do
    album { create :artificial_heart_album }
  end

  factory :hoss, class: AlbumOwnership do
    album { create :hoss_album }
  end
end
