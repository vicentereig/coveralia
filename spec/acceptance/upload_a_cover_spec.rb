require 'acceptance/acceptance_helper'

feature 'Upload a cover' do
  background do
    @user  = create(:user_with_album_ownerships)
    @album = @user.album_ownerships.first
  end

  scenario "Upload Johnathan Coulton's Artificial Heart cover" do
    sign_in @user
    click_link "album_#{@album.id}"

    attach_file 'Image', 'spec/covers/johnathan_coulton_artificial_heart.jpg'
    click_button "Upload the cover"

    within('body') do
      page.should have_content "Uploaded cover for #{@album.artist} - #{@album.title}"
    end
  end
end
