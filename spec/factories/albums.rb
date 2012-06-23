FactoryGirl.define do
  factory :artificial_heart_album, class: Album do
    artist 'Johnathan Coulton'
    title 'Artificial Heart'
  end

  factory :hoss_album, class: Album do
    artist 'Lagwagon'
    title  'Hoss'
  end
end