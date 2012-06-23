FactoryGirl.define do
  factory :user do
    email 'vicente.reig@gmail.com'
    password '1337s3cr3t'
    password_confirmation '1337s3cr3t'


    factory :user_with_album_ownerships do
      after(:create) do |user|
        user.album_ownerships << create(:hoss)
      end
    end
  end
end