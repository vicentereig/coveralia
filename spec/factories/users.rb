FactoryGirl.define do
  factory :user do
    email 'vicente.reig@gmail.com'
    password '1337s3cr3t'
    password_confirmation '1337s3cr3t'


    factory :user_with_album_ownerships do
      after(:create) do |user|
        [:artificial_heart, :hoss, :mumford, :mogwai_hawk, :mogwai_earth].each { |album_key|
          user.album_ownerships << create(album_key)
        }
      end
    end
  end
end