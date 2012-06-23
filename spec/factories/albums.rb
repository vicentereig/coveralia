FactoryGirl.define do
  factory :artificial_heart_album, class: Album do
    artist 'Johnathan Coulton'
    title 'Artificial Heart'
  end

  factory :hoss_album, class: Album do
    artist 'Lagwagon'
    title  'Hoss'
  end

  factory :mumford_album, class: Album do
    artist 'Mumford & Sons'
    title  'Sigh No More'
  end

  factory :hawk_is_howling, class: Album do
    artist 'Mogwai'
    title  'The Hawk Is Howling'
  end

  factory :earth_division, class: Album do
    artist 'Mogwai'
    title  'Earth Division'
  end
end